#!/bin/bash
#echo PWD:
#echo $PWD
#echo LS:
#echo $(ls -R)
#echo GO_ENV:
#echo $(go env)
#echo GO_GET:
#go get -v -t -d ./...
#go test -v ./...
#go clean ./...
#echo CD_PLUGIN:
#(cd plugin)
#echo GO_LIST_M:
#echo $(go list -m)
#echo GO_MOD_TIDY:
#$(go mod tidy)
#echo SET_ENV_GO111MODULE:
#set GO111MODULE=on
#echo BUILD:
$(GOROOT="" go build -buildmode=plugin main)
