#!/bin/bash

# create directory for storing the built static library
mkdir lib

# in case it was not cloned with submodue flag
git submodule init
git submodule update

# enter the vade-evan repository
cd vade-evan

# build vade-evan
cargo build --release --no-default-features --features=sdk --target-dir ../lib

# exit vade-evan repository
cd ..

# take the static library out and delete everything else
cp lib/release/libvade_evan.a ./
rm -rf lib
