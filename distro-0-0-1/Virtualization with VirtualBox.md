# Using VirtualBox

## Installing VirtualBox on Ubuntu

To install VirtualBox and its related utilities, run:

```sh
sudo apt update
sudo apt install virtualbox virtualbox-ext-pack virtualbox-guest-utils
```

## Downloading Virtual Machine Images

Pre-built VirtualBox images are available at [osboxes.org](https://www.osboxes.org/virtualbox-images/).

## Resolving KVM Conflicts with VirtualBox

If you see an error like:

```
VirtualBox can't operate in VMX root mode. Please disable the KVM kernel extension, recompile your kernel and reboot (VERR_VMX_IN_VMX_ROOT_MODE).
```

This indicates that the KVM kernel module is conflicting with VirtualBox. To fix this:

1. Check for loaded KVM modules:
  ```sh
  lsmod | grep kvm
  ```
2. Unload the KVM module(s) found:
  ```sh
  sudo modprobe -r <kvm-module-name>
  ```

Replace `<kvm-module-name>` with the actual module name(s) listed in the previous command.
