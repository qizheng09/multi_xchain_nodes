#!/bin/bash

for ((i=1;i<=3;i++))

do
    	host="node${i}"
	cd ${host} && ./start.sh && cd ..
done
