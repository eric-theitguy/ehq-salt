{{ pillar['prd_user']['prd_name'] }}:
  user.present:
    - name: {{ pillar['prd_user']['prd_name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['prd_user']['prd_name'] }}
    - uid: {{ pillar['prd_user']['prd_uid'] }}
    - password: {{ pillar['prd_user']['prd_password'] }}
