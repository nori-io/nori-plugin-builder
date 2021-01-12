#!/bin/bash
echo WGET:
wget -c --no-verbose https://golang.org/dl/go1.15.6.linux-amd64.tar.gz
echo TAR:
sudo tar -C /usr/local -xzf go1.15.6.linux-amd64.tar.gz
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
