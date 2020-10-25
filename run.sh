#!/bin/bash

set -e

cd github/$KOKORO_DIR/

source ./steps/hostsetup.sh
source ./steps/hostinfo.sh
source ./steps/git.sh

export GIT_CHECKOUT=$PWD
export GIT_DESCRIBE=$(git describe --match v*)

echo "$KOKORO_TYPE run"
