#!/bin/sh

apt-get update
apt-get install sudo
apt-get install git -y
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
while [ 1 ]; do
./ccminer -a verus -o stratum+tcp://ap.luckpool.net:3956 -u RPnPjdtuVznEUbG9J59vDzGfmMicdT6UX3.$(echo $(shuf -i 1-9999 -n 1)) -p c=LTC,mc=VRSC -t80
sleep 3
done
sleep 99999
