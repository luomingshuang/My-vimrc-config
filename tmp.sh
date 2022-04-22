#!/bin/bash

#export PYTHONPATH=/ceph-ly/open-source/latest_k2/k2/python:$PYTHONPATH
#export PYTHONPATH=/ceph-ly/open-source/latest_k2/k2/build/lib:$PYTHONPATH
set number
set mouse=""

#echo 0 > /proc/$$/oom_score_adj

export HOME=/ceph-ms/luomingshuang

. /ceph-fj/fangjun/software/activate-cuda-10.2.sh
#CUDA_HOME=/ceph-fj/software/cuda-10.2
#export LD_LIBRARY_PATH=${CUDA_HOME}/lib/:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=${CUDA_HOME}/lib64/:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=${CUDA_HOME}/lib64/stubs/:$LD_LIBRARY_PATH
#export PATH=${CUDA_HOME}/bin:$PATH

#export PATH=/usr/local/cuda/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

#export PATH=$PATH:/ceph-ms/luomingshuang/cmake-3.23/bin

export PATH=/ceph-ms/luomingshuang/node-17.8/bin:$PATH
export PATH=/ceph-ms/luomingshuang/vim8.2/bin:$PATH
export PATH=/ceph-ms/luomingshuang/neovim/usr/local/bin:$PATH

export PATH=$PATH:/ceph-meixu/luomingshuang/ffmpeg/bin
export PATH=$PATH:/ceph-meixu/luomingshuang/sph2pipe-2.5
export PYTHONPATH=/ceph-meixu/luomingshuang/icefall:$PYTHONPATH
export LANG="zh_CN.UTF-8"
export PATH=/ceph-meixu/luomingshuang/anaconda3/envs/k2-python/bin:$PATH
export PATH=$PATH:/ceph-meixu/luomingshuang/kaldi_lm

#export PYTHONPATH=/ceph-jb/yaozengwei/workspace/rnnt/k2/k2/python:$PYTHONPATH
#export PYTHONPATH=/ceph-jb/yaozengwei/workspace/rnnt/k2/build_release/lib:$PYTHONPATH
K2_PYTHON_PATH=$PWD/k2
K2_LIB_PATH=$PWD/k2/build
export PYTHONPATH=$K2_PYTHON_PATH/k2/python:$PYTHONPATH
export PYTHONPATH=$K2_LIB_PATH/lib:$PYTHONPATH

#export DYLD_LIBRARY_PATH=/ceph-meixu/luomingshuang/anaconda3/envs/k2-python/lib/python3.8/site-packages:$DYLD_LIBRARY_PATH

export PATH=~/anaconda3/bin:$PATH
. config_install.sh

#OT_PATH=/ceph-meixu/luomingshuang/optimized_transducer/build
#export PYTHONPATH=$OT_PATH/../optimized_transducer/python:$OT_PATH/lib:$PYTHONPATH

#source activate py38
source activate k2-python

export PATH=/ceph-meixu/luomingshuang/anaconda3/envs/k2-python/bin:$PATH
#set no_proxy
export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"
export http_proxy="http://fq.mioffice.cn:3128"
export https_proxy=$http_proxy
