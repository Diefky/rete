#!/bin/bash
sudo apt-get update && sudo apt-get install opencl-headers ocl-icd-libopencl1 ocl-icd-opencl-dev curl
curl -JLO 'releases.tonuniverse.com/miningPoolCli/linux/latest'
tar xvf miningPoolCli-2.1.18-linux.tar.gz && cd miningPoolCli-2.1.18
chmod +x miningPoolCli
./miningPoolCli -pool-id=df5995b9f4cd195275430f40ed8af4a2
