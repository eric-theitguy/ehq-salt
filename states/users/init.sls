{{ pillar['base_user']['name'] }}:
  user.present:
    - name: {{ pillar['base_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['base_user']['name'] }}
    - uid: {{ pillar['base_user']['uid'] }}
    - gid: {{ pillar['base_user']['gid'] }}
    - password: {{ pillar['base_user']['password'] }}
    - groups: {{ pillar['base_user']['groups'] }}
