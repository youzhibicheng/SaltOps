yum-init:
  pkg.installed:
    - names:
      - memcached
      - memcached-devel

  service.running:
    - name: memcached
    - enable: True
