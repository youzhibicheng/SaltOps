yum-init:
  pkg.installed:
    - names:
      - supervisor
  service.running:
    - name: supervisord
    - enable: True
