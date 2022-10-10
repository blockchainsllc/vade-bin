#!/bin/bash
# USAGE: ./build.sh <TARGET ARCHITECTURE> 
# List of available target architectures https://doc.rust-lang.org/nightly/rustc/platform-support.html

# in case it was not cloned with submodue flag
git submodule init
git submodule update

# create a build directory
mkdir build

# enter the vade-evan repository
cd vade-evan

# load the target machine of gcc
target=`gcc -dumpmachine`

# if target is x86_64-apple-darwin then build locally otherwise build using cross
if [ $1 = "x86_64-apple-darwin" ] && [[ $target != "x86_64-apple-darwin"* ]]
then
  echo "Build target is x86_64-apple-darwin which can only be built locally on a mac machine"
elif [ $1 = "x86_64-apple-darwin" ] && [[ $target == "x86_64-apple-darwin"* ]]
then
  # build vade-evan for target using cross
  cargo build --release --no-default-features --features=sdk --target-dir ../build --target $1
else
  # copy the cross configuration inside vade-evan
  cp ../Cross.toml Cross.toml

  # build vade-evan for target using cross
  cross build --release --no-default-features --features=sdk --target-dir ../build --target $1

  # delete cross configuration
  rm Cross.toml
fi

# exit vade-evan repository
cd ..

# copy the static library to lib folder
cd lib
mkdir $1
cd ..
cp build/$1/release/libvade_evan.a ./lib/$1/
