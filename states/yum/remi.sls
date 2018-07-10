# Installs the remi-release repo

include:
  - yum.epel

remi-repo:
  pkg.installed:
    - pkgs:
      - http://rpms.remirepo.net/enterprise/remi-release-7.rpm
