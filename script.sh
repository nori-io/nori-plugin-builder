#!/bin/bash
echo PWD:
echo $PWD
echo LS:
echo $(ls -R)
echo GO_ENV:
echo $(go env)
go get -v -t -d ./...
#go test -v ./...
#go clean ./...
echo BUILD:
$(cd plugin)
GO111MODULE="on" go build -buildmode=plugin -o "plugin.so" "main.go"
