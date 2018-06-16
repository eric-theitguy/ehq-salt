ehendricks:
  user.present:
    - gid: wheel
    - uid: 2001
    - unique: False
    - shell: /bin/bash
    - enforce_password: True
    - password: '!!'
    - fullname: 'Eric Hendricks'

ehendricks-sshkey:
  ssh_auth.present:
    - name: {{ salt['pillar.get']('ehendricks:ssh-key', "") }}
    - user: ehendricks
    - require:
      - user: ehendricks
