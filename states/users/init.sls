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
    - user: ehendricks
    - name: "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDEqzTrcuLNPubVj+Dh3r8ZVh4L2C8geVaTulzp2+DcmorBO2bWe/uD7B0LeMqsn/F4JA+R7SeJEgA5rmRlcxxrsLdkGYtqdQ8ieg/AFIntd1ghTN53sY1GpMuu2Z9WXGH1PHgXPJn5N/WLEVn8QVzLU5/jmUKcW8Bv4ZHg1le5E6V40udU1DwulRedPVtEN3dpzcb0ZWJ1bMbUVWFvDcYsv/Qswv5Otr43HY7tlwXeBqI134gLULrpgLJG20y0BW0DjZ3EolKxW7k/qF6Ql7jrNzMaCyQDYIkEOXjWR+4r4yMwV6GSO6eyNCzTZ+egKJ0ezpmRAJMtTF1e3Nqesi+/ADdB5O2ZuyW4ZdhdmUsQGOL8KqIBLjDjub2fgOxIxUXWTCbLFOXi4XW/ErZOzA6tXBkNaZJQ/eV8X50+ukn2NEPJjLMUMHfGhzH10IE33DaPD7TCzXLQzP6wNEOTp+otl+VDfumipyo7B+OXzhLtYWpYPphukIp9Xl9LkwMG1tFJwTLP/ISqwSDbTq5Z5ErkWR97JS+Bv1zZj7Aw+XMT4WLwaQfcQguzQ65qayhuqilOgcvaF+V185/2ne5DCn6klW2cgGrSxlYlDCvO5snJtmbRCXifXrr5AkDn63d/EjGKhjDEiOCgImbTPMuVfLL+q85bIjthx075qS3kL3YIuQ=="
    - require:
      - user: ehendricks
