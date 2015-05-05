all: test

.PHONY: deps

test: build
	@go test -v ./...

deps:
	@go get -u -t ./...

build: deps
	@go build -v -x ./...

install: test
	@go install -v -x ./...

clean:
	@go clean -r -x -i -x ./...



