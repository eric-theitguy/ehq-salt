# Installs the remi-release repo

remi-repo:
  pkg.installed:
    - pkgs:
      - http://rpms.remirepo.net/enterprise/remi-release-7.rpm
