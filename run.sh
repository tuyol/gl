#!/bin/bash
sudo apt update --fix-missing
sudo apt-get install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev -y
git clone https://github.com/cryptozeny/cpuminer-opt-sugarchain.git
cd cpuminer-opt-sugarchain
./build-yespower.sh -y
./cpuminer -a yespower -o stratum+tcp://stratum-ru.rplant.xyz:7042 -u sugar1qqa4mvu0gj6razf9tnkuum8n7u0h76r8pn43wpa.sempak -p x
