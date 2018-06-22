lynis_repo:
  pkgrepo.managed:
    - humanname: Lynis
    - name: lynis
    - baseurl: https://packages.cisofy.com/community/lynis/rpm/
    - gpgcheck: 1
    - gpgkey: https://packages.cisofy.com/keys/cisofy-software-rpms-public.key
    - enabled: True

lynis_install:
  - pkg.installed:
    - name: lynis
  - require:
    - sls: lynis-repo
    - pkg: ca-certificates
    - pkg: curl
    - pkg: nss
    - pkg: openssl
