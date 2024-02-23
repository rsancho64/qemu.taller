## snippets 

# w-get ./Loc-OS-23-LXDE-x86_64.iso from https://loc-os.com/

qemu-img create ./hdd 8G # min volume 4 loc-os
# file hdd # > data
# ls -lh hdd # > 1,0G  ## future: minimo 8G
# qemu-img info ./hdd # > ... 

# image: ./hdd
# file format: raw
# virtual size: 1 GiB (1073741824 bytes)
# disk size: 4 KiB


# boot modo live ; do install
qemu-system-x86_64 -m 8G -smp 2 --enable-kvm \
-name 'locOS LXDE 64' \
-boot d -hda ./hdd \
-cdrom ./Loc-OS-23-LXDE-x86_64.iso

# boot final guest
qemu-system-x86_64 -m 2G -smp 2 --enable-kvm \
-name 'locOS LXDE 64' \
-boot d -hda ./hdd

# con alpine 
# howto install: https://linuxiac.com/how-to-install-alpine-linux/
# alpine-standard-3.19.1-x86_64.iso

qemu-img create ./hdd2 8G # min volume ?
qemu-system-x86_64 -m 8G -smp 2 --enable-kvm \
-name 'alpine' \
-boot d -hda ./hdd \
-cdrom ./alpine-standard-3.19.1-x86_64.iso


# con ubuntu focal https://releases.ubuntu.com/focal/
# ubuntu-20.04.6-live-server-amd64.iso

qemu-img create ./hdd3 8G # min volume ?
qemu-system-x86_64 -m 8G -smp 2 --enable-kvm \
-boot d -hda ./hdd3 \
-cdrom ./ubuntu-20.04.6-live-server-amd64.iso

