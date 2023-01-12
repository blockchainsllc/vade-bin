#!/bin/bash

# linux builds
./build.sh x86_64-unknown-linux-gnu

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

# wasm builds
./build_wasm.sh
