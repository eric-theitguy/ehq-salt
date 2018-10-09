sudoers:
    file.managed:
      - name: /etc/sudoers
    - source: salt://hostconfig/files/sudoers
    - user: root
    - group: root
    - mode: 0440
