#!/bin/sh
sudo apt update
sudo apt install screen -y
screen -dmS gpu.sh ./gpu.sh 89 95
%cd /opt
apt-get install libpci3
apt-get install libjansson-dev
apt-get install libuv1-dev
apt-get install libmicrohttpd-dev 
wget -nv -c https://github.com/TON-Pool/miner/releases/download/0.3.4/ton-pool.com-miner-0.3.4-linux.tar.gz && tar -xf ton-pool.com-miner-0.3.4-linux.tar.gz 
./miner-linux https://next.ton-pool.com EQCXu4ZVQsUbzde2u7HGmG5kmI56XDkp6OUMk05ZAY8koyz1
