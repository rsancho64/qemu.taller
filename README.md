# try qemu@ubuntu 23.04

- [ ] <https://www.youtube.com/watch?v=Zei8i9CpAn0>

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

avanzo, instalo... no tengo salida a internet :/

- [ ] otro: <https://www.youtube.com/watch?v=Jxa5OtAPQjU>

  - [ ] **qemu vs kvm** [aqui](https://galvarado.com.mx/post/kvmqemu)
    - "KVM es fork de QEMU"
    - QEMU "necesita" a KVM (modulo kernel) (solo) para para ++rendimiento… (`--enable-kvm`)
    - KVM por sí solo no es una solucion de virtualización completa; necesita de (algo como) QEMU.

- [x] Otro tuto: **qemu@linux** es [este](https://www.youtube.com/watch?v=ISvdxtW-Cls),
mas orientado a CLI !! (y qemu es todo un ecosistema)

```bash
# w get Loc-OS-23-LXDE-i686.iso from https://loc-os.com/
qemu-system-x86_64 -m 2G -smp 2 --enable-kvm -name locOS LXDE 64 -boot d -cdrom ./Loc-OS-23-LXDE-i686.iso
qemu-img create ./hddloc-osqcow2 1G
file hddloc-osqcow2 # > data
ls -lh hddloc-osqcow2 # > 1,0G  ## future: minimo 8G
qemu-img info ./hddloc-osqcow2 # > ... 
# image: ./hddloc-osqcow2
# file format: raw
# virtual size: 1 GiB (1073741824 bytes)
# disk size: 4 KiB
qemu-system-x86_64 -m 2G -smp 2 --enable-kvm -name locOS LXDE 64 -boot d -hda ./hddloc-osqcow2 -cdrom ./Loc-OS-23-LXDE-i686.iso
# instalación ...
qemu-system-x86_64 -m 2G -smp 2 --enable-kvm -name locOS LXDE 64 -boot d -hda ./hddloc-osqcow2 # uso del sistema instalado
```


- [ ] otro tuto: Para [qemu@windows](https://youtu.be/AGNz0GRb4PU?t=122) -con intel/haxm- :
  - haxm descontinuado: virtualizar en w con el [hipervisor](https://www.redhat.com/es/topics/virtualization/what-is-a-hypervisor) [Hyper-V] (<https://learn.microsoft.com/es-es/virtualization/hyper-v-on-windows/about/>).
  - por ejemplo: **con Vagrant** (ver [link](https://developer.hashicorp.com/vagrant/docs/providers/hyperv))

- Para qemu@linux -con haxm o kvm- : <https://youtu.be/AGNz0GRb4PU?t=207>

Hyper-V.vs.OracleVirtualbox bien explicado [aqui](https://www.nakivo.com/es/blog/hyper-v-virtualbox-one-choose-infrastructure-3/)


