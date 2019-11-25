#!/bin/bash

./bin/xchain-cli multisig gen --to f3prTg9itaZY6m48wXXikXdcxiByW7zgk --amount 10000000000000000 --frozen -1 --multiAddrs nominate/acl2 --output nominate/tx2.out --desc nominate/nominate2.json

./bin/xchain-cli multisig sign --tx nominate/tx2.out --output nominate/sign21.out --keys ./data/keys

./bin/xchain-cli multisig sign --tx nominate/tx2.out --output nominate/sign22.out --keys ./data/keys

./bin/xchain-cli multisig send --tx nominate/tx2.out nominate/sign21.out ./nominate/sign22.out
