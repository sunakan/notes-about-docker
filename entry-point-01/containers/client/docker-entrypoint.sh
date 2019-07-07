#!/bin/bash

# exit 0 以外が返るものがあれば止まる
set -e

echo "HELLOWORLD" > $HOME/hello
echo "=============================="
echo $ENV
echo "--"
echo $MOUNT_DEVICE
echo "--"
echo $MOUNT_POSITION
echo "--"
echo $FILE_SYSTEM_TYPE
echo "=============================="

exec "$@"
