from nelli.utils import mlir_mod_ctx
from nelli.mlir.func import mlir_func
from nelli.mlir.tensor import RankedTensorType, TensorValue as Tensor
from nelli.mlir.utils import F32
from nelli.mlir._mlir.dialects.tosa import *
from nelli.mlir._mlir.ir import DenseElementsAttr
from nelli.mlir.tensor import extract_slice, collapse_shape

import numpy as np

with mlir_mod_ctx() as module:
    @mlir_func(rewrite_ast_=False)
    def lstm(
        weight: Tensor[(1, 56), F32], 
        bias: Tensor[(1, 56), F32], 
        hidden: Tensor[(1, 14), F32], 
        cell: Tensor[(1, 14), F32], 
        inp: Tensor[(1, 14), F32]
    ):
        t56 = RankedTensorType.get((1, 56), F32)
        t42 = RankedTensorType.get((1, 42), F32)
        t14 = RankedTensorType.get((1, 14), F32)
        
        gates = AddOp(t56, MulOp(t56, ConcatOp((inp, hidden, inp, hidden), 1), weight, 0), bias).result
        slices = extract_slice(gates, [0, 0], [1, 42], [1, 1])
        sigmoid = SigmoidOp(t42, slices).result
        forget, ingate, outgate = [extract_slice(sigmoid, [0, i * 14], [1, 14], [1, 1]) for i in range(3)]
        change = TanhOp(t14, extract_slice(gates, [0, 42], [1, 14], [1, 1]))
        cell = AddOp(t14, MulOp(t14, cell, forget, 0), MulOp(t14, ingate, change, 0)).result
        hidden = MulOp(t14, outgate, TanhOp(t14, cell), 0).result
        
        return (hidden, cell)
    
    @mlir_func(rewrite_ast_=False)
    def predict(
        w: Tensor[(4, 56), F32], 
        w2: Tensor[(3, 14), F32], 
        s: Tensor[(4, 14), F32], 
        x: Tensor[(1, 14), F32]
    ):
        x = MulOp(x.type, x, extract_slice(w2, [0, 0], [1, 14], [1, 1]), 0).result
        new_state = []
        for i in range(0, 4, 2):
            wi = extract_slice(w, [i, 0], [1, 56], [1, 1])
            wj = extract_slice(w, [i + 1, 0], [1, 56], [1, 1])
            si = extract_slice(s, [i, 0], [1, 14], [1, 1])
            sj = extract_slice(s, [i + 1, 0], [1, 14], [1, 1])
            hidden, cell = lstm(wi, wj, si, sj, x)
            x = hidden
            new_state.append(hidden)
            new_state.append(cell)
        new_state = ConcatOp(new_state, 0).result
        w21 = extract_slice(w2, [1, 0], [1, 14], [1, 1])
        w22 =extract_slice(w2, [2, 0], [1, 14], [1, 1])
        return (
            AddOp(x.type, MulOp(x.type, x, w21, 0), w22).result,
            new_state
        )
    
    @mlir_func(rewrite_ast_=False)
    def lstm_objective(
        main_params: Tensor[(4, 56), F32], 
        extra_params: Tensor[(3, 14), F32], 
        state: Tensor[(4, 14), F32],
        sequence: Tensor[(32, 14), F32]
    ):
        total = []
        inp = extract_slice(sequence, [0, 0], [1, 14], [1, 1])
        all_states = [state]
        
        two = ConstOp(DenseElementsAttr.get(np.array(2.0).astype(np.float32)))
        cnt = ConstOp(DenseElementsAttr.get(np.array(-1 / (31 * 14)).astype(np.float32)))
        
        for t in range(31):
            ypred, new_state = predict(
                main_params,
                extra_params,
                all_states[t],
                inp
            )
            all_states.append(new_state)
            exp = ExpOp(ypred.type, ypred)
            red = ReduceSumOp(exp, 1).result
            sum = AddOp(red.type, red, two).result
            log = LogOp(sum.type, sum)
            ynorm = SubOp(ypred.type, ypred, log).result
            ygold = extract_slice(sequence, [t + 1, 0], [1, 14], [1, 1]).result
            inp = ygold
            total.append(ReduceSumOp(MulOp(ynorm.type, ynorm, ygold, 0), 1).result)
            
        sum = total[0]
        for i in range(1, len(total)):
            sum = AddOp(sum.type, sum, total[i]).result
        sum = collapse_shape(sum, [], [])
        
        return MulOp(sum.type, sum, cnt, 0)
    