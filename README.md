# try qemu @ ubuntu 23.04

En <https://www.youtube.com/watch?v=Zei8i9CpAn0> @ fedora ?

### a guest host image (w10)

w get: w10 ISO:
[iso](https://www.microsoft.com/en-us/software-download/windows10ISO)
file: `Win10_22H2_Spanish_x64v1.iso`

### tool virtIO

Es un estándar de virtualización para controladores de red y dispositivos de disco.
Plataforma para virtualización de E/S, común para diferentes hipervisores (y QEMU).
Ver [https://es.wikibooks.org/wiki/QEMU/Dispositivos/Virtio](https://es.wikibooks.org/wiki/QEMU/Dispositivos/Virtio)

```sh
wget fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso
```

### spice tools

```sh
wget spice-space.org/download/windows/spice-guest-tools/spice-guest-tools-latest.exe
```

- [ ] investigar spice-space.org !

```sh
sudo apt install qemu-system-x86 -y  # ok; no qemu-kvm
sudo apt install bridge-utils    -y  # ok
sudo apt install virt-manager    -y  # ok ...
sudo apt install libosinfo-bin   -y  # ok
```

reboot now