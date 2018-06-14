saltstack-repo:
  pkgrepo.managed:
    - humanname: SaltStack
    - baseurl:  https://repo.saltstack.com/yum/redhat/$releasever/$basearch/latest
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: https://repo.saltstack.com/yum/redhat/$releasever/$basearch/latest/SALTSTACK-GPG-KEY.pub
