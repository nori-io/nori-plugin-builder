#!/bin/bash
echo PWD:
echo $PWD
echo LS:
echo $(ls -R)
go get -v -t -d ./...
go test -v ./...
go build --buildmode=plugin -o plugin.so $PWD/plugin/main.go
