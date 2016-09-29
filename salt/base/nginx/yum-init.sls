yum-init:
  pkg.installed:
    - names:
      - nginx

  service.running:
    - name: nginx
    - enable: True
