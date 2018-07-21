saltstack-repo:
  pkgrepo.managed:
    - humanname: SaltStack
    - baseurl: https://repo.saltstack.com/yum/redhat/$releasever/$basearch/archive/2018.3.0
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: https://repo.saltstack.com/yum/redhat/$releasever/$basearch/archive/2018.3.0/SALTSTACK-GPG-KEY.pub

/etc/salt/minion.d/highstate.conf:
  file.managed:
    - user: root
    - group: root
    - mode: 0640
    - source: salt://salt/files/highstate.conf
