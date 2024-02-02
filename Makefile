.PHONY: build test format debug clean

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
