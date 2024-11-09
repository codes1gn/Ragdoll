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

.PHONY: enter
enter:
	cd third_party/omni-toolkits/ && make enter

.PHONY: test-iree
test-iree: verify-iree-bindings
	./tools/scripts/build_helper.sh test_iree

.PHONY: verify-iree-bindings
verify-iree-bindings:
	python -c "from iree import runtime as ireert; from iree import compiler as ireec"
	#. ./tools/config-miscs/.env && python -c "from iree import runtime as ireert; from iree import compiler as ireec"


.PHONY: bootstrap build unittest test format debug clean clean-backend jupyter jupyter-stop install gpu-restart

bootstrap:
	python3.9 -m venv sandbox

setup: 
	@poetry config virtualenvs.create false
	@poetry install --no-root
	@echo "set -x PYTHONPATH $(CURDIR)/codegen_tools_build/iree/compiler/bindings/python:$(CURDIR)/codegen_tools_build/iree/runtime/bindings/python:$(CURDIR)/codegen_tools_install/iree/python_packages/iree_compiler:$(CURDIR)/codegen_tools_install/iree/python_packages/iree_runtime" > $(CURDIR)/.env
	@./tools/scripts/update_submodules.sh
	@./tools/scripts/build_helper.sh build_llvm
	@./tools/scripts/build_helper.sh build_mlir 
	@./tools/scripts/build_helper.sh build_iree

build:
	./tools/scripts/build_ragdoll.sh
	@. $(CURDIR)/.env

install:
	@. $(CURDIR)/.env
	poetry install

test: unittest
	@. $(CURDIR)/.env
	@cd build && ninja check-ragdoll

unittest:
	@python -c "print('hello')"

format:
	./tools/scripts/format_code.sh

debug:
	./tools/scripts/debug.sh

clean:
	rm -rf build

clean-backend:
	rm -rf codegen_tools_build && rm -rf codegen_tools_install

jupyter:
	./tools/scripts/serving_notebook.sh

jupyter-stop:
	./tools/scripts/clean_notebook_servers.sh

gpu-restart:
	rmmod nvidia_uvm nvidia_drm nvidia_modeset nvidia && modprobe nvidia
