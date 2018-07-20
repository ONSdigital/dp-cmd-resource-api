SHELL=bash

BUILD=build
BUILD_ARCH=$(BUILD)/$(GOOS)-$(GOARCH)
BIN_DIR?=.

export GOOS?=$(shell go env GOOS)
export GOARCH?=$(shell go env GOARCH)

build:
	@mkdir -p $(BUILD_ARCH)/$(BIN_DIR)
	go build -o $(BUILD_ARCH)/$(BIN_DIR)/dp-code-list-api cmd/dp-code-list-api/main.go
test:
	go test -cover $(shell go list ./... | grep -v /vendor/)

debug:
	HUMAN_LOG=1 go run -race cmd/dp-code-list-api/main.go

acceptance:
	HUMAN_LOG=1 NEO4J_CODE_LIST_LABEL=code_list_acceptance go run -race cmd/dp-code-list-api/main.go

.PHONY: test build debug acceptance

