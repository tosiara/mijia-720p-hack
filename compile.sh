#!/bin/bash

mkdir /usr/src/arm-linux-3.3
cd /usr/src/arm-linux-3.3
tar xvf /toolchain/arm-linux-3.3_2015-01-09.tgz
tar xvf /toolchain/toolchain_gnueabi-4.4.0_ARMv5TE.tgz
cd /build
mkdir gm_lib
cd gm_lib
tar xvf /toolchain/gm_lib_2015-01-09-IPCAM.tgz
cd /build
make
make install

