include:
  - clam.freshclam

clamav:
  pkg.installed:
    - pkgs:
      - clamav
      - clamav-data
      - clamav-devel
      - clamav-filesystem
      - clamav-lib
      - clamav-scanner-systemd
      - clamav-server
      - clamav-server-systemd
      - clamav-update

/etc/clamd.d/clamd.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 0644
    - source: salt://clam/files/clamd.conf
    - require:
      - pkg: clamav
