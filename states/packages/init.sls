include:
  - packages.patch
  
util-packages:
  pkg.installed:
    - pkgs:
      - at
      - git
      - htop
      - unzip
      - zip
    {% if grains.os == 'CentOS' %}
    # If running CentOS add these additional packages:
    - pkgs:
      - epel-release
    {% endif %}