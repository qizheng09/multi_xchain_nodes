#!/bin/bash

rm -rf ./xchain_release/plugins
cp -rf ${XCHAIN_ROOT}/output/plugins ./xchain_release/
rm -r ./xchain_release/bin/xchain ./xchain_release/bin/xchain-cli
cp -rf ${XCHAIN_ROOT}/output/xchain ./xchain_release/bin/
cp -rf ${XCHAIN_ROOT}/output/xchain-cli ./xchain_release/bin
cp -rf ${XCHAIN_ROOT}/output/wasm2c ./xchain_release/bin

rm -rf ./xchain_release/data/blockchain/xuper
cp -rf ${XCHAIN_ROOT}/output/data/blockchain/xuper ./xchain_release/data/blockchain

cp -rf ${XCHAIN_ROOT}/output/conf/plugins.conf ./xchain_release/conf/plugins.conf
