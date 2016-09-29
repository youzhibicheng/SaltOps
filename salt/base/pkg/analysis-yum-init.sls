analysis-yum-init:
  pkg.installed:
    - names:
      - openssl
      - openssl-devel
      - libjpeg-turbo
      - libjpeg-turbo-devel
      - freetype
      - freetype-devel
      - libpng
      - libpng-devel
      - libevent
      - libxslt
      - zip
      - unzip
      - swig
      - bash
      - protobuf
      - protobuf-compiler
      - protobuf-c
      - tcl
      - tk
      - tix
      - tkinter

meld3:
  file.managed:
    - name: /usr/local/src/meld3-1.0.0-1.noarch.rpm
    - source: salt://base/pkg/files/meld3-1.0.0-1.noarch.rpm
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: yum -y localinstall /usr/local/src/meld3-1.0.0-1.noarch.rpm --disablerepo=\*
    - require:
      - file: meld3
