libvirt-repo:
  pkgrepo.managed:
    - humanname: libvirt-latest
    - baseurl: http://mirror.centos.org/centos/7/virt/x86_64/libvirt-latest/
    - gpgcheck: 0
    - require_in:
      - pkg: libvirt-install

libvirt-install:
  pkg.installed:
    - pks:
      - qemu-kvm
      - libguestfs
      - libguestfs-tools
      - libvirt-python

libvirt-daemon:
  service.running:
    - name: libvirtd
    - require:
      - pkg: libvirt
      - network: virbr0
      - libvirt: libvirt

libvirt.keys:
  virt.keys
