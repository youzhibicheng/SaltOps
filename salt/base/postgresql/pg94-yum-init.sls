postgresql94-yum-install:
  file.managed:
    - name: /usr/local/src/pgdg-centos94-9.4-3.noarch.rpm
    {% if grains['os'] == 'CentOS' and grains['osmajorrelease'] == '6' %}
    - source: salt://base/postgresql/files/pgdg-centos94-centos6-9.4-3.noarch.rpm
    {% endif %} 
    {% if grains['os'] == 'CentOS' and grains['osmajorrelease'] == '7' %}
    - source: salt://base/postgresql/files/pgdg-centos94-centos7-9.4-3.noarch.rpm
    {% endif %}
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/pgdg-centos94-9.4-3.noarch.rpm
    - unless: rpm -qa | grep pgdg-centos94
    - require:
      - file: postgresql94-yum-install
  
  pkg.installed:
    - names:
      - postgresql94
      - postgresql94-contrib
      - postgresql94-devel
      - postgresql94-libs
      - postgresql94-server

postgresql94-init:
  cmd.run:
    - name: service postgresql-9.4 initdb

  service.running:
    - name: postgresql-9.4
    - enable: True
  
