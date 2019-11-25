#!/bin/bash

for ((i=1;i<=8;i++))

do
    host="node${i}"
    rm -rf ./${host}/bin/*
    cp -rf ./xchain_release/bin/* ./${host}/bin/
    chmod +x ./${host}/bin/wasm2c
#    rm -rf ./${host}/logs/*
    rm -rf ./${host}/plugins
    cp -rf ./xchain_release/plugins ./${host}/
    rm -rf ./${host}/conf/plugins.conf
    cp -rf ./xchain_release/conf/plugins.conf ./${host}/conf/
done
