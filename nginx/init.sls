nginx-install:
  pkg.installed:
    - name: nginx

nginx-service:
  service:
    - name: nginx
    - running
    - enable: True
    - require:
        - pkg: nginx_package
