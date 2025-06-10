# Using QEMU with a GUI on Ubuntu via `virt-manager`

## 1. Check Virtualization Support

Open a terminal and run:
```bash
lscpu
```
Look for the `Virtualization` field to confirm your CPU supports virtualization.

## 2. Install Required Packages

Update your package list and install `virt-manager` (which pulls in QEMU, libvirt, and related dependencies):
```bash
sudo apt update
sudo apt install virt-manager
```

## 3. Add Your User to the `kvm` Group

Add your user to the `kvm` group for proper permissions:
```bash
sudo adduser $USER kvm
```
**Note:** Log out and log back in for group changes to take effect.

## 4. Start and Enable the libvirtd Service

Enable and start the libvirt daemon:
```bash
sudo systemctl enable --now libvirtd
```

## 5. Launch `virt-manager`

Start the graphical interface:
```bash
virt-manager
```

## 6. Create a New Virtual Machine

In `virt-manager`, click **"Create a new virtual machine"** and follow the wizard to set up your VM.

## 7. Networking

By default, VMs use a NAT-based network (`default`). For advanced networking (e.g., bridged networking), additional configuration is required.

## 8. Convert VirtualBox Images

To convert a VirtualBox VDI image to QEMU's QCOW2 format:
```bash
qemu-img convert -f vdi -O qcow2 input.vdi output.qcow2
```

## 9. Use the Virtualization Terminal

You can manage VMs from the command line with:
```bash
virsh
```