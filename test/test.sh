#!/bin/sh

# common tests
echo "[APP test-common]"
LD_LIBRARY_PATH=$PWD ./latrace -qR ./test-common

# arguments tests
echo "[APP test-args]"
LD_LIBRARY_PATH=$PWD ./latrace -qR -a $PWD/test/lib-test-args.conf ./test-args

# script tests
echo "[SCRIPTS]"
. $PWD/test/script/test_tty_output.sh
test_tty_output