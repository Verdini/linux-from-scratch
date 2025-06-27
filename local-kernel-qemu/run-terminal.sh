#!/bin/bash

qemu-system-x86_64 \
  -kernel /boot/vmlinuz-$(uname -r) \
  -initrd /boot/initrd.img-$(uname -r) \
  -append "console=ttyS0" \
  -enable-kvm \
  -m 2g \
  -nographic

# Ctrl-A, C to exit