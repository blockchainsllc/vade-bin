#!/bin/sh

# install required OS dependencies
sudo apt install clang cmake

# create directory for storing the built static library
mkdir lib

# enter the vade-evan repository
cd vade-evan

# build vade-evan
cargo build --release --no-default-features --features=sdk --target-dir ../lib

# take the static library out and delete everything else
cp lib/release/libvade_evan.a ./
rm -rf lib
