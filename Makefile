.PHONY: bootstrap build test format debug clean clean-backend jupyter jupyter-stop

bootstrap:
	./scripts/bootstrap_ragdoll_codegen.sh \
		./scripts/byo_llvm.sh build_llvm && \
		./scripts/byo_llvm.sh build_mlir && \
		./scripts/byo_llvm.sh build_iree

build:
	./scripts/build_ragdoll.sh

# bootstrap-bundled:
# 	./scripts/bootstrap_ragdoll_codegen.sh

test:
	cd build && ninja check-ragdoll

format:
	./scripts/format_code.sh

debug:
	./scripts/debug.sh

clean:
	rm -rf build

clean-backend:
	rm -rf codegen_tools_build

jupyter:
	./scripts/serving_notebook.sh

jupyter-stop:
	./scripts/clean_notebook_servers.sh

