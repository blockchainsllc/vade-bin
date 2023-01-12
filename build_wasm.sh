#!/bin/bash

docker build -t vade-evan-wasm-pack - < ./dockerfiles/Dockerfile.wasm
docker run -it -v `pwd`/vade-evan:/sources vade-evan-wasm-pack
zip -vr vade-evan.zip vade-evan/pkg/ -x ".gitignore" # works only on macos
mv vade-evan.zip lib/wasm/
