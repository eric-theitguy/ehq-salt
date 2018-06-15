{{ pillar['base_user']['name'] }}:
  user.present:
    - fullname: {{ pillar['base_user']['fullname'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['base_user']['name'] }}
    - uid: {{ pillar['base_user']['uid'] }}
    - gid: {{ pillar['base_user']['gid'] }}
    - password: {{ pillar['base_user']['password'] }}
    - groups: {{ pillar['base_user']['groups'] }}
