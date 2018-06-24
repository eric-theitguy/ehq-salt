lynis:
  pkgrepo.managed:
    - humanname: Lynis
    - baseurl: https://packages.cisofy.com/community/lynis/rpm/
    - gpgcheck: 1
    - gpgkey: https://packages.cisofy.com/keys/cisofy-software-rpms-public.key
    - enabled: True
    - require_in:
      - pkg: lynis_install

lynis_install:
  pkg.installed:
    - pkgs:
      - lynis
      - ca-certificates
      - curl
      - nss
      - openssl
