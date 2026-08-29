#!/bin/bash

# we need to wrap this into a script due to limitations with rattler-builds `env:`,
# which currently requires a (single) file, rather than just an inline command, see
# https://github.com/prefix-dev/rattler-build/issues/2782
echo "the winsdk & msvc-headers-libs packages have no content except activation scripts"
