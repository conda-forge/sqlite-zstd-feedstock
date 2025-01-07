#!/bin/bash

set -ex

cd python
$PYTHON -m pip install . -vv --no-deps --no-build-isolation
