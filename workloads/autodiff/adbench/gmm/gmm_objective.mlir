// %alphas: tensor<Kxf32>
// %means: tensor<KxDxf32>
// %icf: tensor<kx(D+D(D-1)//2)xf32>
// %x: tensor<NxDxf32>
// %wishart_gamma: tensor<f32>
// %wishart_m: tensor<DxDxf32>

// d = 128
// K = [5, 10, 25, 50, 100, 200]
// N = [1000, 10000, 2500000]

func.func @gmm_objective(%alphas : tensor<5xf32>,
                         %means : tensor<5x128xf32>,
                         %icf : tensor<5x8256xf32>,
                         %x : tensor<1000x128xf32>,
                         %wishart_gamma : tensor<f32>,
                         %wishart_m : tensor<f32>) -> tensor<f32> {
  %zero = arith.constant dense<0.0> : tensor<f32>

  // n = x.shape[0]
  %idx0 = arith.constant 0 : index
  %n = tensor.dim %x, %idx0 : tensor<1000x128xf32> // 1000

  // d = x.shape[1]
  %idx1 = arith.constant 1 : index
  %d = tensor.dim %x, %idx1 : tensor<1000x128xf32> // 128

  // Qdiags = torch.exp(icf[:, :d])
  %qdiags_slice = tensor.extract_slice %icf[0, 0] [5, 128] [1, 1] : tensor<5x8256xf32> to tensor<5x128xf32>
  %qdiags = "tosa.exp"(%qdiags_slice) : (tensor<5x128xf32>) -> tensor<5x128xf32>
  
  // sum_qs = torch.sum(icf[:, :d], 1)
  %sum_qs = "tosa.reduce_sum"(%qdiags_slice) {axis = 1} : (tensor<5x128xf32>) -> tensor<5x1xf32>

  // Ls = torch.stack([constructL(d, curr_icf) for curr_icf in icf])
  %ls = call @constructL(%icf) : (tensor<5x8256xf32>) -> tensor<5x128x128xf32>

  // xcentered = torch.stack(tuple(x[i] - means for i in range(n)))
  %shaped_x = "tosa.reshape"(%x) {new_shape = array<i64: 1000, 1, 128>} : (tensor<1000x128xf32>) -> tensor<1000x1x128xf32>
  %shaped_means = "tosa.reshape"(%means) {new_shape = array<i64: 1, 5, 128>} : (tensor<5x128xf32>) -> tensor<1x5x128xf32>
  %xcentered = "tosa.sub"(%shaped_x, %shaped_means) : (tensor<1000x1x128xf32>, tensor<1x5x128xf32>) -> tensor<1000x5x128xf32>

  // Lxcentered = Qtimesx(Qdiags, Ls, xcentered)
  %lxcentered = call @Qtimesx(%qdiags, %ls, %xcentered) : (tensor<5x128xf32>, tensor<5x128x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>

  // sqsum_Lxcentered = torch.sum(Lxcentered ** 2, 2)
  %square_lxcentered = "tosa.mul"(%lxcentered, %lxcentered) {shift = 0 : i32} : (tensor<1000x5x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>
  %sqsum_lxcentered = "tosa.reduce_sum"(%square_lxcentered) {axis = 2} : (tensor<1000x5x128xf32>) -> tensor<1000x5x1xf32>

  // inner_term = alphas + sum_qs - 0.5 * sqsum_Lxcentered
  %half = arith.constant dense<0.5> : tensor<f32>
  %shaped_alphas = "tosa.reshape"(%alphas) {new_shape = array<i64: 1, 5, 1>} : (tensor<5xf32>) -> tensor<1x5x1xf32>
  %shaped_sum_qs = "tosa.reshape"(%sum_qs) {new_shape = array<i64: 1, 5, 1>} : (tensor<5x1xf32>) -> tensor<1x5x1xf32>
  %alphas_plus_sum_qs = "tosa.add"(%shaped_alphas, %shaped_sum_qs) : (tensor<1x5x1xf32>, tensor<1x5x1xf32>) -> tensor<1x5x1xf32>
  %half_sqsum_laxcentered = "tosa.mul"(%sqsum_lxcentered, %half) {shift = 0 : i32} : (tensor<1000x5x1xf32>, tensor<f32>) -> tensor<1000x5x1xf32>
  %inner_term = "tosa.sub"(%alphas_plus_sum_qs, %half_sqsum_laxcentered) : (tensor<1x5x1xf32>, tensor<1000x5x1xf32>) -> tensor<1000x5x1xf32>

  // lse = logsumexpvec(inner_term)
  %lse = call @logsumexpvec(%inner_term) : (tensor<1000x5x1xf32>) -> tensor<1000xf32>

  // slse = torch.sum(lse)
  %slse = "tosa.reduce_sum"(%lse) {axis = 0} : (tensor<1000xf32>) -> tensor<1xf32>

  // CONSTANT = -n * d * 0.5 * math.log(2 * math.pi) = -1000 * 128 * 0.5 * log(2pi)
  %cst = arith.constant dense<-117624.1322501981> : tensor<f32>

  // return CONSTANT + slse - n * logsumexp(alphas) + log_wishart_prior(d, wishart_gamma, wishart_m, sum_qs, Qdiags, icf)
  %cst_plus_slse = "tosa.add"(%cst, %slse) : (tensor<f32>, tensor<1xf32>) -> tensor<1xf32>
  %mx = "tosa.reduce_max"(%alphas) {axis = 0} : (tensor<5xf32>) -> tensor<1xf32>
  %sub = "tosa.sub"(%alphas, %mx) : (tensor<5xf32>, tensor<1xf32>) -> tensor<5xf32>
  %exp = "tosa.exp"(%sub) : (tensor<5xf32>) -> tensor<5xf32>
  %sum = "tosa.reduce_sum"(%exp) {axis = 0} : (tensor<5xf32>) -> tensor<1xf32>
  %log = "tosa.log"(%sum) : (tensor<1xf32>) -> tensor<1xf32>
  %log_plus_mx = "tosa.add"(%log, %mx) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
  %n_i32 = arith.index_cast %n : index to i32
  %n_f32 = arith.sitofp %n_i32 : i32 to f32
  %n_tensor = tensor.from_elements %n_f32 : tensor<1xf32>
  %nlogsumexp = "tosa.mul"(%n_tensor, %log_plus_mx) {shift = 0 : i32} : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
  %prior = call @log_wishart_prior(%wishart_gamma, %wishart_m, %sum_qs, %qdiags, %icf) : (tensor<f32>, tensor<f32>, tensor<5x1xf32>, tensor<5x128xf32>, tensor<5x8256xf32>) -> tensor<f32>
  %tmp = "tosa.sub"(%cst_plus_slse, %nlogsumexp) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
  %res = "tosa.add"(%tmp, %prior) : (tensor<1xf32>, tensor<f32>) -> tensor<1xf32>
  %scalar = "tosa.reshape"(%res) {new_shape = array<i64>} : (tensor<1xf32>) -> tensor<f32>

  return %scalar : tensor<f32>
}

func.func private @constructL(%icf : tensor<5x8256xf32>) -> tensor<5x128x128xf32> {
  %0 = arith.constant 0.0 :f32
  %1 = arith.constant 1 : index
  %2 = arith.constant 2 : index
  %n = arith.constant 127 : index

  %slice = tensor.extract_slice %icf [0, 128] [5, 8128] [1, 1] : tensor<5x8256xf32> to tensor<5x8128xf32>
  %emp = tensor.empty() : tensor<5x127x127xf32>
  %res = call @triu(%slice) : (tensor<5x8128xf32>) -> tensor<5x127x127xf32>
  %pad = tensor.pad %res low[0, 0, 1] high [0, 1, 0] {
    ^payload(%i : index, %j : index, %k : index):
      tensor.yield %0 : f32
  } : tensor<5x127x127xf32> to tensor<5x128x128xf32>

  %perms = arith.constant dense<[0, 2, 1]> : tensor<3xi32>
  %trans = "tosa.transpose"(%pad, %perms) : (tensor<5x128x128xf32>, tensor<3xi32>) -> tensor<5x128x128xf32>
  return %trans : tensor<5x128x128xf32>
}

func.func private @triu(%x : tensor<5x8128xf32>) -> tensor<5x127x127xf32> {
  %0 = arith.constant 0.0 : f32
  %1 = arith.constant 1 : index
  %2 = arith.constant 2 : index
  %n = arith.constant 127 : index
  %emp = tensor.empty() : tensor<5x127x127xf32>
  %res = linalg.generic {
    indexing_maps = [
      affine_map<(q, j, k) -> (q, j, k)>
    ],
    iterator_types = ["parallel", "parallel", "parallel"]
  } outs(%emp : tensor<5x127x127xf32>) {
    ^payload(%out : f32):
      %q = linalg.index 0 : index
      %i = linalg.index 1 : index
      %j = linalg.index 2 : index
      %cond = arith.cmpi sgt, %i, %j : index
      %v = scf.if %cond -> f32 {
        scf.yield %0 : f32
      } else {
        // res[i][j] = x[n * i + j - (i + 1) * i // 2]
        %ni = arith.muli %n, %i : index
        %add = arith.addi %ni, %j : index
        %i1 = arith.addi %i, %1 : index
        %isqr = arith.muli %i1, %i : index
        %half = arith.divsi %isqr, %2 : index
        %sub = arith.subi %add, %half : index
        %elem = tensor.extract %x[%q, %sub] : tensor<5x8128xf32>
        scf.yield %elem : f32
      }
      linalg.yield %v : f32
  } -> tensor<5x127x127xf32>
  return %res : tensor<5x127x127xf32>
}

func.func private @Qtimesx(%qdiags : tensor<5x128xf32>, %ls : tensor<5x128x128xf32>, %xcentered : tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32> {
  %emp = tensor.empty() : tensor<1000x5x128xf32>

  // f = torch.einsum("ijk,mik->mij", L, x)
  %f = linalg.generic {
    indexing_maps = [
      affine_map<(i, j, k, m) -> (i, j, k)>,
      affine_map<(i, j, k, m) -> (m, i, k)>,
      affine_map<(i, j, k, m) -> (m, i, j)>
    ],
    iterator_types = ["parallel", "parallel", "reduction", "parallel"]
  } ins(%ls, %xcentered : tensor<5x128x128xf32>, tensor<1000x5x128xf32>) outs(%emp : tensor<1000x5x128xf32>) {
    ^payload(%i : f32, %j : f32, %out : f32):
      %mul = arith.mulf %i, %j : f32
      %add = arith.addf %mul, %out : f32
      linalg.yield %add : f32
  } -> tensor<1000x5x128xf32>

  // return Qdiag * x + f
  %shaped_qdiags = "tosa.reshape"(%qdiags) {new_shape = array<i64: 1, 5, 128>} : (tensor<5x128xf32>) -> tensor<1x5x128xf32>
  %mul = "tosa.mul"(%shaped_qdiags, %xcentered) {shift = 0 : i32} : (tensor<1x5x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>
  %add = "tosa.add"(%mul, %f) : (tensor<1000x5x128xf32>, tensor<1000x5x128xf32>) -> tensor<1000x5x128xf32>
  return %add : tensor<1000x5x128xf32>
}

func.func private @logsumexpvec(%inner_term : tensor<1000x5x1xf32>) -> tensor<1000xf32> {
  // mx = torch.max(x, 1).values
  %unshaped_mx = "tosa.reduce_max"(%inner_term) {axis = 1} : (tensor<1000x5x1xf32>) -> tensor<1000x1x1xf32>
  %mx = "tosa.reshape"(%unshaped_mx) {new_shape = array<i64: 1, 1000, 1>} : (tensor<1000x1x1xf32>) -> tensor<1x1000x1xf32>

  // lset = torch.logsumexp(torch.t(x) - mx, 0)
  %perms = arith.constant dense<[1, 0, 2]> : tensor<3xi32>
  %tx = "tosa.transpose"(%inner_term, %perms) : (tensor<1000x5x1xf32>, tensor<3xi32>) -> tensor<5x1000x1xf32>
  %tx_minus_mx = "tosa.sub"(%tx, %mx) : (tensor<5x1000x1xf32>, tensor<1x1000x1xf32>) -> tensor<5x1000x1xf32>
  %exp = "tosa.exp"(%tx_minus_mx) : (tensor<5x1000x1xf32>) -> tensor<5x1000x1xf32>
  %sum = "tosa.reduce_sum"(%exp) {axis = 0} : (tensor<5x1000x1xf32>) -> tensor<1x1000x1xf32>
  %log = "tosa.log"(%sum) : (tensor<1x1000x1xf32>) -> tensor<1x1000x1xf32>

  // return torch.t(lset + mx)
  %add = "tosa.add"(%log, %mx) : (tensor<1x1000x1xf32>, tensor<1x1000x1xf32>) -> tensor<1x1000x1xf32>
  %res = "tosa.reshape"(%add) {new_shape = array<i64: 1000>} : (tensor<1x1000x1xf32>) -> tensor<1000xf32>
  return %res : tensor<1000xf32>
}

func.func private @log_wishart_prior(%wishart_gamma : tensor<f32>, %wishart_m : tensor<f32>, %sum_qs : tensor<5x1xf32>, %qdiags : tensor<5x128xf32>, %icf : tensor<5x8256xf32>) -> tensor<f32> {
  // n = p + wishart_m + 1 = d + wishart_m + 1
  %p_plus_1 = arith.constant dense<129.0> : tensor<f32>
  %n = "tosa.add"(%wishart_m, %p_plus_1) : (tensor<f32>, tensor<f32>) -> tensor<f32>

  // k = icf.shape[0] = 5
  // out = torch.sum(0.5 * wishart_gamma * wishart_gamma * (torch.sum(qdiags ** 2, dim = 1) + torch.sum(icf[:, 128:] ** 2, dim = 1)) - wishart_m * sum_qs)

  // out = torch.sum(z)
  // z = a * (b + c) - d

  // a = 0.5 * wishart_gamma * wishart_gamma
  %half = arith.constant dense<0.5> : tensor<f32>
  %wishart_gamma_squared = "tosa.mul"(%wishart_gamma, %wishart_gamma) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
  %a = "tosa.mul"(%wishart_gamma_squared, %half) {shift = 0 : i32}: (tensor<f32>, tensor<f32>) -> tensor<f32>

  // b = torch.sum(qdiags ** 2, dim = 1)
  %qdiags_square = "tosa.mul"(%qdiags, %qdiags) {shift = 0 : i32} : (tensor<5x128xf32>, tensor<5x128xf32>) -> tensor<5x128xf32>
  %b = "tosa.reduce_sum"(%qdiags_square) {axis = 1} : (tensor<5x128xf32>) -> tensor<5x1xf32>

  // c = torch.sum(icf[:, 128:] ** 2, dim = 1)
  %icf_slice = tensor.extract_slice %icf [0, 128] [5, 8128] [1, 1] : tensor<5x8256xf32> to tensor<5x8128xf32>
  %icf_slice_square = "tosa.mul"(%icf_slice, %icf_slice) {shift = 0 : i32} : (tensor<5x8128xf32>, tensor<5x8128xf32>) -> tensor<5x8128xf32>
  %c = "tosa.reduce_sum"(%icf_slice_square) {axis = 1} : (tensor<5x8128xf32>) -> tensor<5x1xf32>

  // d = wishart_m * sum_qs
  %d = "tosa.mul"(%wishart_m, %sum_qs) {shift = 0 : i32} : (tensor<f32>, tensor<5x1xf32>) -> tensor<5x1xf32>

  // res = torch.sum(a * (b + c) - d)
  %add = "tosa.add"(%b, %c) : (tensor<5x1xf32>, tensor<5x1xf32>) -> tensor<5x1xf32>
  %mul = "tosa.mul"(%a, %add) {shift = 0 : i32} : (tensor<f32>, tensor<5x1xf32>) -> tensor<5x1xf32>
  %sub = "tosa.sub"(%mul, %d) : (tensor<5x1xf32>, tensor<5x1xf32>) -> tensor<5x1xf32>
  %out = "tosa.reduce_sum"(%sub) {axis = 0} : (tensor<5x1xf32>) -> tensor<1x1xf32>

  // C = n * p * (math.log(wishart_gamma / math.sqrt(2)))
  %p = arith.constant dense<128.0> : tensor<f32>
  %n_times_p = "tosa.mul"(%n, %p) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>

  %2 = arith.constant dense<2.0> : tensor<f32>
  %rsqrt_2 = "tosa.rsqrt"(%2) : (tensor<f32>) -> tensor<f32>
  %wishart_gamma_times_rsqrt_2 = "tosa.mul"(%wishart_gamma, %rsqrt_2) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
  %log = "tosa.log"(%wishart_gamma_times_rsqrt_2) : (tensor<f32>) -> tensor<f32>
  %C = "tosa.mul"(%n_times_p, %log) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>

  // return out - k * (C - log_gamma_distrib(0.5 * n, p))
  %k = arith.constant dense<5.0> : tensor<f32>
  %half_n = "tosa.mul"(%half, %n) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32>
  %gamma = call @log_gamma_distrib(%half_n) : (tensor<f32>) -> tensor<f32>
  %c_minus_gamma = "tosa.sub"(%C, %gamma) : (tensor<f32>, tensor<f32>) -> tensor<f32>
  %k_times_cmg = "tosa.mul"(%k, %c_minus_gamma) {shift = 0 : i32} : (tensor<f32>, tensor<f32>) -> tensor<f32> // cmg for c_minus_gamma
  %out_minus_ktc = "tosa.sub"(%out, %k_times_cmg) : (tensor<1x1xf32>, tensor<f32>) -> tensor<1x1xf32> // ktc for k_times_cmg
  %res = "tosa.reshape"(%out_minus_ktc) {new_shape = array<i64>} : (tensor<1x1xf32>) -> tensor<f32>

  return %res : tensor<f32>
}

// log_gamma_distrib(a) = multigmmln(a, d)
func.func private @log_gamma_distrib(%a : tensor<f32>) -> tensor<f32> {
  // multigmmln(a, d) = d*(d-1)/4*np.log(np.pi) + gammaln(a - 0.5*np.arange(0, d)).sum()
  
  // d(d-1)/4 * log(pi) = 4652.1822560920
  %cst = arith.constant dense<4652.1822560920> : tensor<f32>
  
  // 0.5 * np.arange(0, 128) = [0, 0.5, 1, ..., 63.5]
  %arange = arith.constant dense<"0x000000000000003F0000803F0000C03F0000004000002040000040400000604000008040000090400000A0400000B0400000C0400000D0400000E0400000F0400000004100000841000010410000184100002041000028410000304100003841000040410000484100005041000058410000604100006841000070410000784100008041000084410000884100008C4100009041000094410000984100009C410000A0410000A4410000A8410000AC410000B0410000B4410000B8410000BC410000C0410000C4410000C8410000CC410000D0410000D4410000D8410000DC410000E0410000E4410000E8410000EC410000F0410000F4410000F8410000FC41000000420000024200000442000006420000084200000A4200000C4200000E42000010420000124200001442000016420000184200001A4200001C4200001E42000020420000224200002442000026420000284200002A4200002C4200002E42000030420000324200003442000036420000384200003A4200003C4200003E42000040420000424200004442000046420000484200004A4200004C4200004E42000050420000524200005442000056420000584200005A4200005C4200005E42000060420000624200006442000066420000684200006A4200006C4200006E42000070420000724200007442000076420000784200007A4200007C4200007E42"> : tensor<128xf32>
  %a_minus_arange = "tosa.sub"(%a, %arange) : (tensor<f32>, tensor<128xf32>) -> tensor<128xf32>
  %gamma = call @gammaln(%a_minus_arange) : (tensor<128xf32>) -> tensor<128xf32>
  %sum = "tosa.reduce_sum"(%gamma) {axis = 0} : (tensor<128xf32>) -> tensor<1xf32>
  %unshaped_res = "tosa.add"(%cst, %sum) : (tensor<f32>, tensor<1xf32>) -> tensor<1xf32>
  %res = "tosa.reshape"(%unshaped_res) {new_shape = array<i64>} : (tensor<1xf32>) -> tensor<f32>

  return %res : tensor<f32>
}

func.func private @gammaln(%x : tensor<128xf32>) -> tensor<128xf32> {
  %cst = arith.constant dense<0x7F800000> : tensor<128xf32>
  %cst_0 = arith.constant 0x7F800000 : f32
  %cst_1 = arith.constant dense<1.14472985> : tensor<128xf32>
  %cst_2 = arith.constant dense<3.14159274> : tensor<128xf32>
  %cst_3 = arith.constant dense<0.918938517> : tensor<128xf32>
  %cst_4 = arith.constant dense<2.01490307> : tensor<128xf32>
  %cst_5 = arith.constant dense<7.500000e+00> : tensor<128xf32>
  %cst_6 = arith.constant dense<8.000000e+00> : tensor<128xf32>
  %cst_7 = arith.constant dense<1.50563267E-7> : tensor<128xf32>
  %cst_8 = arith.constant dense<7.000000e+00> : tensor<128xf32>
  %cst_9 = arith.constant dense<9.98436917E-6> : tensor<128xf32>
  %cst_10 = arith.constant dense<6.000000e+00> : tensor<128xf32>
  %cst_11 = arith.constant dense<-0.138571098> : tensor<128xf32>
  %cst_12 = arith.constant dense<5.000000e+00> : tensor<128xf32>
  %cst_13 = arith.constant dense<12.5073433> : tensor<128xf32>
  %cst_14 = arith.constant dense<4.000000e+00> : tensor<128xf32>
  %cst_15 = arith.constant dense<-176.615036> : tensor<128xf32>
  %cst_16 = arith.constant dense<3.000000e+00> : tensor<128xf32>
  %cst_17 = arith.constant dense<771.323425> : tensor<128xf32>
  %cst_18 = arith.constant dense<2.000000e+00> : tensor<128xf32>
  %cst_19 = arith.constant dense<-1259.13916> : tensor<128xf32>
  %cst_20 = arith.constant dense<676.520386> : tensor<128xf32>
  %cst_21 = arith.constant dense<1.000000e+00> : tensor<128xf32>
  %cst_22 = arith.constant dense<5.000000e-01> : tensor<128xf32>
  %0 = tensor.empty() : tensor<128xi1>
  %1 = "tosa.greater"(%cst_22, %x) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xi1>
  %2 = tensor.empty() : tensor<128xf32>
  %3 = "tosa.negate"(%x) : (tensor<128xf32>) -> tensor<128xf32>
  %4 = "tosa.sub"(%x, %cst_21) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %5 = "tosa.select"(%1, %3, %4) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %6 = "tosa.add"(%5, %cst_21) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %7 = "tosa.reciprocal"(%6) : (tensor<128xf32>) -> tensor<128xf32>
  %8 = "tosa.mul"(%7, %cst_20) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %9 = "tosa.add"(%8, %cst_21) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %10 = "tosa.add"(%5, %cst_18) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %11 = "tosa.reciprocal"(%10) : (tensor<128xf32>) -> tensor<128xf32>
  %12 = "tosa.mul"(%11, %cst_19) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %13 = "tosa.add"(%9, %12) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %14 = "tosa.add"(%5, %cst_16) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %15 = "tosa.reciprocal"(%14) : (tensor<128xf32>) -> tensor<128xf32>
  %16 = "tosa.mul"(%15, %cst_17) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %17 = "tosa.add"(%13, %16) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %18 = "tosa.add"(%5, %cst_14) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %19 = "tosa.reciprocal"(%18) : (tensor<128xf32>) -> tensor<128xf32>
  %20 = "tosa.mul"(%19, %cst_15) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %21 = "tosa.add"(%17, %20) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %22 = "tosa.add"(%5, %cst_12) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %23 = "tosa.reciprocal"(%22) : (tensor<128xf32>) -> tensor<128xf32>
  %24 = "tosa.mul"(%23, %cst_13) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %25 = "tosa.add"(%21, %24) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %26 = "tosa.add"(%5, %cst_10) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %27 = "tosa.reciprocal"(%26) : (tensor<128xf32>) -> tensor<128xf32>
  %28 = "tosa.mul"(%27, %cst_11) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %29 = "tosa.add"(%25, %28) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %30 = "tosa.add"(%5, %cst_8) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %31 = "tosa.reciprocal"(%30) : (tensor<128xf32>) -> tensor<128xf32>
  %32 = "tosa.mul"(%31, %cst_9) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %33 = "tosa.add"(%29, %32) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %34 = "tosa.add"(%5, %cst_6) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %35 = "tosa.reciprocal"(%34) : (tensor<128xf32>) -> tensor<128xf32>
  %36 = "tosa.mul"(%35, %cst_7) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %37 = "tosa.add"(%33, %36) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %38 = "tosa.add"(%5, %cst_5) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %39 = "tosa.reciprocal"(%cst_5) : (tensor<128xf32>) -> tensor<128xf32>
  %40 = "tosa.mul"(%5, %39) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %41 = linalg.generic {indexing_maps = [affine_map<(i) -> (i)>, affine_map<(i) -> (i)>], iterator_types = ["parallel"]} ins(%40 : tensor<128xf32>) outs(%2 : tensor<128xf32>) {
  ^bb0(%in: f32, %out: f32):
    %68 = math.log1p %in : f32
    linalg.yield %68 : f32
  } -> tensor<128xf32>
  %42 = "tosa.add"(%41, %cst_4) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %43 = "tosa.reciprocal"(%42) : (tensor<128xf32>) -> tensor<128xf32>
  %44 = "tosa.mul"(%38, %43) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %45 = "tosa.add"(%5, %cst_22) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %46 = "tosa.sub"(%45, %44) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %47 = "tosa.mul"(%46, %42) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %48 = "tosa.log"(%37) : (tensor<128xf32>) -> tensor<128xf32>
  %49 = "tosa.add"(%47, %cst_3) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %50 = "tosa.add"(%49, %48) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %51 = "tosa.abs"(%x) : (tensor<128xf32>) -> tensor<128xf32>
  %52 = "tosa.floor"(%51) : (tensor<128xf32>) -> tensor<128xf32>
  %53 = "tosa.sub"(%51, %52) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %54 = "tosa.greater"(%53, %cst_22) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xi1>
  %55 = "tosa.sub"(%cst_21, %53) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %56 = "tosa.select"(%54, %55, %53) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %57 = "tosa.mul"(%56, %cst_2) {shift = 0 : i32} : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %58 = linalg.generic {indexing_maps = [affine_map<(i) -> (i)>, affine_map<(i) -> (i)>], iterator_types = ["parallel"]} ins(%57 : tensor<128xf32>) outs(%2 : tensor<128xf32>) {
  ^bb0(%in: f32, %out: f32):
    %68 = math.sin %in : f32
    linalg.yield %68 : f32
  } -> tensor<128xf32>
  %59 = "tosa.log"(%58) : (tensor<128xf32>) -> tensor<128xf32>
  %60 = "tosa.sub"(%cst_1, %59) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %61 = "tosa.sub"(%60, %50) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %62 = linalg.generic {indexing_maps = [affine_map<(i) -> (i)>, affine_map<(i) -> (i)>], iterator_types = ["parallel"]} ins(%59 : tensor<128xf32>) outs(%0 : tensor<128xi1>) {
  ^bb0(%in: f32, %out: i1):
    %68 = math.absf %in : f32
    %69 = arith.cmpf one, %68, %cst_0 : f32
    linalg.yield %69 : i1
  } -> tensor<128xi1>
  %63 = "tosa.negate"(%59) : (tensor<128xf32>) -> tensor<128xf32>
  %64 = "tosa.select"(%62, %61, %63) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %65 = "tosa.select"(%1, %64, %50) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  %66 = "tosa.equal"(%51, %cst) : (tensor<128xf32>, tensor<128xf32>) -> tensor<128xi1>
  %67 = "tosa.select"(%66, %cst, %65) : (tensor<128xi1>, tensor<128xf32>, tensor<128xf32>) -> tensor<128xf32>
  return %67 : tensor<128xf32>
}
