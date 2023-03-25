#!/bin/bash

# Decompress a .cpio.gz packed file system
mkdir initramfs
pushd . && pushd initramfs
cp ../initramfs.cpio.gz .
gzip -dc initramfs.cpio.gz | cpio -idm &>/dev/null && rm initramfs.cpio.gz
popd