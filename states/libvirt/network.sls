enp0s31f6:
  network.managed:
    - enabled: True
    - type: eth
    - bridge: virbr0

virbr0:
  network.managed:
    - enabled: True
    - type: bridge
    - proto: dhcp
    - require:
      - network: enp0s31f6
