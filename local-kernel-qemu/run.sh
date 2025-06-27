#!/bin/bash

qemu-system-x86_64 \
  -kernel /boot/vmlinuz-$(uname -r) \
  -initrd /boot/initrd.img-$(uname -r) \
  -enable-kvm \
  -m 2g \

# Uses current kernel and initrd
# It takes a while to boot
