/etc/freshclam.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 0644
    - source: salt://clam/files/freshclam.conf

/usr/lib/systemd/system/freshclam.service:
  file.managed:
    - user: root
    - group: root
    - mode: 0644
    - source: salt://clam/files/freshclam.service

freshclam-service:
  service:
    - name: freshclam.service
    - running
    - enable: True
    - require:
      - file: /usr/lib/systemd/system/freshclam.service
    - watch:
      - file: /etc/freshclam.conf
