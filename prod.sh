#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

pushd front
CARGO_TARGET_DIR=../target-trunk trunk build --release --public-url /assets/
popd

cargo run --bin back --release -- --port 8080