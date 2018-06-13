root:
  user.present:
    - password: {{ pillar['users']['root_passwd'] }}
