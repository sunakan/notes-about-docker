#!/bin/bash

set -e

if [ -n $SSHFS_POSITION ]; then
  mkdir -p $SSHFS_POSITION
fi
if [ -n $SSHFS_USER ] && [ -n $SSHFS_PASSWORD ] && [ -n $SSHFS_DEVICE ] && [ -n $SSHFS_POSITION ]; then
  echo "HELLO" > /tmp/hello
  sshfs ${SSHFS_USER}@${SSHFS_DEVICE} ${SSHFS_POSITION} -o ro -o password_stdin <<< $SSHFS_PASSWORD
fi

exec "$@"
