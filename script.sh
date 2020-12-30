#!/bin/bash
echo PWD:
echo $PWD
echo LS:
echo $(ls -R)
echo GO:
echo $(go env)
go get -v -t -d ./...
go test -v ./...
go clean ./...
go build --buildmode=plugin -o "plugin.so" "./plugin/main.go"
