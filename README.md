## Vade-Libraries

### Quick Run

```bash
git submodule update --remote
./refresh_builds.sh
```

**Tested only on MACOS**

### Potentially vulnerable stuff that was overlooked and Other magic(dirty fix) code
- Dockerfile.wasm installs wasm-pack from a fork because the original package has a critical bug(https://github.com/rustwasm/wasm-pack/issues/781#issuecomment-1242611389) in it at the time of writing this
- A seperate Cargo.toml that excludes compilation of vade-didcomm/portable for certain architectures is used. it is named Cargo.toml.new. This is done because rocksdb fails to compile for certain architectures and didcomm is the only plugin that uses rocksdb

