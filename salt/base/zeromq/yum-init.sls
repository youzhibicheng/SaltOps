libzmq3:
  file.managed:
    - name: /usr/local/src/libzmq3-3.2.2-5.1.x86_64.rpm
    - source: salt://base/zeromq/files/libzmq3-3.2.2-5.1.x86_64.rpm
    - unless: rpm -qa | grep libzmq3
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/libzmq3-3.2.2-5.1.x86_64.rpm
    - unless: rpm -qa | grep libzmq3
    - require:
      - file: libzmq3

yum-init:
  pkg.installed:
    - names:
      - python-zmq
