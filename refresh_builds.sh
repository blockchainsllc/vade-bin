#!/bin/bash

# linux builds
./build.sh x86_64-unknown-linux-gnu
./build.sh aarch64-unknown-linux-gnu
./build.sh arm-unknown-linux-gnueabihf

# macos builds
./build.sh aarch64-apple-darwin
./build.sh x86_64-apple-darwin

# android builds
./build.sh aarch64-linux-android
./build.sh armv7-linux-androideabi
./build.sh x86_64-linux-android
./build.sh i686-linux-android

# ios builds
./build.sh aarch64-apple-ios
./build.sh x86_64-apple-ios
./build.sh aarch64-apple-ios-sim

# windows builds
./build.sh x86_64-pc-windows-gnu

# wasm builds
./build_wasm.sh
