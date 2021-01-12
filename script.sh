#!/bin/bash
wget -c https://golang.org/dl/go1.15.6.linux-386.tar.gz
sudo tar -C /usr/local -xzf go1.15.6.linux-386.tar.gz
export  PATH=$PATH:/usr/local/go/bin
echo PWD:
echo $PWD
echo LS:
echo $(ls -R)
echo GO_ENV:
echo $(go env)
echo GO_GET:
go get -v -t -d ./...
go test -v ./...
go clean ./...
echo GO_LIST_M:
echo $(go list -m)
echo BUILD:
GO111module="on" go build --buildmode=plugin -o plugin.so ./plugin/main.go
