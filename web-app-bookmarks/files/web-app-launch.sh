#! /usr/bin/env bash

set -o posix
set -o nounset
set -o errexit
set -o pipefail

/usr/bin/chromium --app="$1" --new-window
