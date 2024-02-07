.PHONY: build test format debug clean jupyter jupyter-stop

build:
	./scripts/build_ragdoll.sh

test:
	cd build && ninja check-ragdoll

format:
	./scripts/format_code.sh

debug:
	./scripts/debug.sh

clean:
	rm -rf build

jupyter:
	./scripts/serving_notebook.sh

jupyter-stop:
	./scripts/clean_notebook_servers.sh

