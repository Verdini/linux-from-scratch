# Distro 0.0.1

This project documents the process of building a custom Linux distribution from scratch.

## References

- [Linux From Scratch](https://www.linuxfromscratch.org/lfs/)

## Virtualization Setup

All build steps are performed inside a virtual environment for safety and convenience.

### Installing VirtualBox

To install VirtualBox and related utilities on Ubuntu:

```sh
sudo apt search virtualbox
sudo apt install virtualbox virtualbox-ext-pack virtualbox-guest-utils
```

### Downloading Virtual Machine Images

You can download ready-to-use VirtualBox images from [osboxes.org](https://www.osboxes.org/virtualbox-images/).

### Troubleshooting: KVM Issues in VirtualBox

If you encounter the following error:

```
VirtualBox can't operate in VMX root mode. Please disable the KVM kernel extension, recompile your kernel and reboot (VERR_VMX_IN_VMX_ROOT_MODE).
```

This means the KVM kernel module is interfering with VirtualBox. To resolve:

1. List loaded KVM modules:
  ```sh
  lsmod | grep kvm
  ```
2. Remove the KVM module(s):
  ```sh
  sudo modprobe -r <kvm-module-name>
  ```

Replace `<kvm-module-name>` with the actual module name(s) found in the previous step.
