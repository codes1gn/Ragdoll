# Default goal when no target is specified
.DEFAULT_GOAL := help

############################################################################
# Help Command
############################################################################
help:
	@echo "Usage:"
	@echo "Basic Commands:"
	@echo "  USE: make install-atlantis | install    ; install atlantis to the OS env"
	@echo "  USE: poetry shell                       ; to enter the atlantis dev shell"
	@echo "  USE: deactivate                         ; to exit the atlantis dev shell"
	@echo "Advanced commands:"
	@echo "  make bootstrap | boot                   ; bootstrap atlantis dependencies"
	@echo "You can specify python version with cmd in form of: PYVERSION=py38 | py310"

############################################################################
# Environment Setup and Dependencies
############################################################################

.PHONY: bootstrap
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

############################################################################
# Build & Install
############################################################################

.PHONY: build
build:
	./tools/scripts/build_ragdoll.sh
	@. $(CURDIR)/.env
	@$(MAKE) install

install:
	@. $(CURDIR)/.env
	poetry install

############################################################################
# Benchmark
############################################################################

.PHONY: bench 
bench: build
	@ragdoll --bench $(wordlist 2, $(words $(MAKECMDGOALS)), $(MAKECMDGOALS))

############################################################################
# Testing & Validation
############################################################################

.PHONY: test
test: unittest
	@. $(CURDIR)/.env
	@cd build && ninja check-ragdoll

unittest:
	@python -c "print('hello')"

############################################################################
# Formatting & Debugging
############################################################################

.PHONY: format
format:
	./tools/scripts/format_code.sh

.PHONY: debug
debug:
	./tools/scripts/debug.sh

############################################################################
# Cleaning Up
############################################################################

.PHONY: clean
clean:
	rm -rf build

.PHONY: clean-backend
clean-backend:
	rm -rf codegen_tools_build && rm -rf codegen_tools_install

.PHONY: gpu-restart
gpu-restart:
	rmmod nvidia_uvm nvidia_drm nvidia_modeset nvidia && modprobe nvidia

############################################################################
# Documentation
############################################################################

MKDOCS_CMD = mkdocs serve --dev-addr=0.0.0.0:8008

.PHONY: serve-doc
serve-doc: stop-doc start-doc

.PHONY: stop-doc
stop-doc:
	@echo "Stopping existing mkdocs serve processes..."
	@ps aux | grep 'mkdocs serve' | grep -v grep | awk '{print $$2}' | xargs -r kill
	@echo "Old mkdocs serve processes stopped."

.PHONY: start-doc
start-doc:
	@echo "Starting mkdocs serve in the background..."
	nohup $(MKDOCS_CMD) &>/dev/null &

.PHONY: status-doc
status-doc:
	@echo "Checking mkdocs serve process..."
	@ps aux | grep 'mkdocs serve' | grep -v grep || echo "No mkdocs serve process is running."

############################################################################
# Notebook Utils 
############################################################################

jupyter-serve:
	./tools/scripts/serving_notebook.sh
jupyter-stop:
	./tools/scripts/clean_notebook_servers.sh
