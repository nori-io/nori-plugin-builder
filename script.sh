#!/bin/bash
echo PWD:
echo $PWD
echo ($(ls -l))
go get -v -t -d ./...
go test -v ./...
go build --buildmode=plugin -o plugin.so ./plugin/main.go
