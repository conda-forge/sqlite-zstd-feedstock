#!/bin/bash

set -ex

export SETUPTOOLS_SCM_PRETEND_VERSION_FOR_SQLITE_ZSTD=$PKG_VERSION

cd python
$PYTHON -m pip install . -vv --no-deps --no-build-isolation
