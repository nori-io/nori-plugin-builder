#!/bin/bash
echo PWD:
echo $PWD
echo LS:
echo $(ls)
go get -v -t -d ./...
go test -v ./...
go build --buildmode=plugin -o plugin.so ./plugin/main.go
