#!/bin/bash
sudo apt-get update && sudo apt-get install opencl-headers ocl-icd-libopencl1 ocl-icd-opencl-dev curl
curl -JLO 'https://github.com/TON-Pool/miner/releases/download/0.3.4/ton-pool.com-miner-0.3.4-linux.tar.gz'
tar xvf ton-pool.com-miner-0.3.4-linux.tar.gz
chmod +x miner-linux
./miner-linux run https://other.tonuniverse.com df5995b9f4cd195275430f40ed8af4a2
