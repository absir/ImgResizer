#!/usr/bin/env bash
cd `dirname $0`

args=$*

mkdir -p ./bin

if [[ -z "$args" ]] || [[ $args =~ "0" ]];then
  export CGO_ENABLED=0
  export GOOS=linux
  export GOARCH=amd64

  go build -ldflags="-s -w" -o ./bin/ImgResizer
fi