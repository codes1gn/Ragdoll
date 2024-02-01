.PHONY: build test format debug

build:
	./scripts/build_ragdoll.sh

test:
	cd build && ninja check-ragdoll

format:
	./scripts/format_code.sh

debug:
	./scripts/debug.sh
