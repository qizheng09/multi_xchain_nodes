#!/bin/bash

for ((i=1;i<=7;i++))

do
        host="node${i}"
	#mkdir -p ./${host}/data/keys/
        #cp -rf ./all_keys/${host}/* ./${host}/data/keys/
	#mkdir -p ./${host}/data/netkeys
	#cp -rf ./all_netkeys/${host}/netkeys ./${host}/data
        rm -rf ./${host}/bin/*
        cp -rf ./xchain_release/bin/* ./${host}/bin/
	chmod +x ./${host}/bin/wasm2c
        rm -rf ./${host}/data/blockchain/*
	mkdir ./${host}/data/blockchain
        cp -rf ./xchain_release/data/blockchain/* ./${host}/data/blockchain
        #mv  ./${host}/logs/  ./${host}/logsbak
	rm -rf ./${host}/logs/*
	rm ./${host}/nohup.out
        rm -rf ./${host}/plugins
        cp -rf ./xchain_release/plugins ./${host}/
        rm ./${host}/conf/plugins.conf
        cp -f ./xchain_release/conf/plugins.conf ./${host}/conf/
done
