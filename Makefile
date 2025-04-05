.PHONY: all
all: build

prepare:
	cp "$(shell go env GOROOT)/lib/wasm/wasm_exec.js" .

build: prepare
	GOOS=js GOARCH=wasm go build -o add.wasm add.go

.PHONY: clean
clean:
	rm -f add.wasm
	rm -f wasm_exec.js