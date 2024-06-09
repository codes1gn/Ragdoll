.DEFAULT_GOAL := help

help:
	@echo "Usage:"
	@echo "Basic Commands:"
	@echo "  USE: make install-atlantis | install    ; install atlantis to the OS env"
	@echo "  USE: poetry shell                       ; to enter the atlantis dev shell"
	@echo "  USE: deactivate                         ; to exit the atlantis dev shell"
	@echo "Advanced commands:"
	@echo "  make bootstrap | boot                   ; bootstrap atlantis dependencies"
	@echo "You can specify python version with cmd in form of: PYVERSION=py38 | py310"

.PHONY: bootstrap build unittest test format debug clean clean-backend jupyter jupyter-stop install gpu-restart

bootstrap:
	./scripts/bootstrap_ragdoll_codegen.sh && \
		./scripts/byo_llvm.sh build_llvm && \
		./scripts/byo_llvm.sh build_mlir && \
		./scripts/byo_llvm.sh build_iree

build:
	./scripts/build_ragdoll.sh

install:
	poetry install

test:
	cd build && ninja check-ragdoll

unittest:
	@python -c "print('hello')"

format:
	./scripts/format_code.sh &&\
		black ./ragdoll/

debug:
	./scripts/debug.sh

clean:
	rm -rf build

clean-backend:
	rm -rf codegen_tools_build && rm -rf codegen_tools_install

jupyter:
	./scripts/serving_notebook.sh

jupyter-stop:
	./scripts/clean_notebook_servers.sh

gpu-restart:
	rmmod nvidia_uvm nvidia_drm nvidia_modeset nvidia && modprobe nvidia
