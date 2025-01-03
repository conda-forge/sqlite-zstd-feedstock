#!/bin/bash

set -ex

cargo-bundle-licenses --format yaml --output THIRDPARTY.yml
cargo build --release --features build_extension
mkdir -p $PREFIX/lib
find . -name *libsqlite_zstd$SHLIB_EXT* -exec ls -l {} \;
cp $(find . -name libsqlite_zstd$SHLIB_EXT | tail -n 1) $PREFIX/lib
