openssl:
  file.managed:
    - name: /usr/local/src/openssl-1.0.1e-42.el6.x86_64.rpm
    - source: salt://base/pkg/files/openssl-1.0.1e-42.el6.x86_64.rpm
    - unless: rpm -qa | grep openssl
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/openssl-1.0.1e-42.el6.x86_64.rpm
    - unless: rpm -qa | grep openssl
    - require:
      - file: openssl

openssl-devel:
  file.managed:
    - name: /usr/local/src/openssl-devel-1.0.1e-42.el6.x86_64.rpm
    - source: salt://base/pkg/files/openssl-devel-1.0.1e-42.el6.x86_64.rpm
    - unless: rpm -qa | grep openssl-devel
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/openssl-devel-1.0.1e-42.el6.x86_64.rpm
    - unless: rpm -qa | grep openssl-devel
    - require:
      - file: openssl-devel

libjpeg-turbo:
  file.managed:
    - name: /usr/local/src/libjpeg-turbo-1.2.1-3.el6_5.x86_64.rpm
    - source: salt://base/pkg/files/libjpeg-turbo-1.2.1-3.el6_5.x86_64.rpm
    - unless: rpm -qa | grep libjpeg-turbo
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/libjpeg-turbo-1.2.1-3.el6_5.x86_64.rpm
    - unless: rpm -qa | grep libjpeg-turbo
    - require:
      - file: libjpeg-turbo

libjpeg-turbo-devel:
  file.managed:
    - name: /usr/local/src/libjpeg-turbo-devel-1.2.1-3.el6_5.x86_64.rpm
    - source: salt://base/pkg/files/libjpeg-turbo-devel-1.2.1-3.el6_5.x86_64.rpm
    - unless: rpm -qa | grep libjpeg-turbo-devel
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/libjpeg-turbo-devel-1.2.1-3.el6_5.x86_64.rpm
    - unless: rpm -qa | grep libjpeg-turbo-devel
    - require:
      - file: libjpeg-turbo-devel

freetype:
  file.managed:
    - name: /usr/local/src/freetype-2.3.11-15.el6_6.1.x86_64.rpm
    - source: salt://base/pkg/files/freetype-2.3.11-15.el6_6.1.x86_64.rpm
    - unless: rpm -qa | grep freetype
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/freetype-2.3.11-15.el6_6.1.x86_64.rpm
    - unless: rpm -qa | grep freetype
    - require:
      - file: freetype

freetype-devel:
  file.managed:
    - name: /usr/local/src/freetype-devel-2.3.11-15.el6_6.1.x86_64.rpm
    - source: salt://base/pkg/files/freetype-devel-2.3.11-15.el6_6.1.x86_64.rpm
    - unless: rpm -qa | grep freetype-devel
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/freetype-devel-2.3.11-15.el6_6.1.x86_64.rpm
    - unless: rpm -qa | grep freetype-devel
    - require:
      - file: freetype-devel

libpng:
  file.managed:
    - name: /usr/local/src/libpng-1.2.49-2.el6_7.x86_64.rpm
    - source: salt://base/pkg/files/libpng-1.2.49-2.el6_7.x86_64.rpm
    - unless: rpm -qa | grep libpng
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/libpng-1.2.49-2.el6_7.x86_64.rpm
    - unless: rpm -qa | grep libpng
    - require:
      - file: libpng

libpng-devel:
  file.managed:
    - name: /usr/local/src/libpng-devel-1.2.49-2.el6_7.x86_64.rpm
    - source: salt://base/pkg/files/libpng-devel-1.2.49-2.el6_7.x86_64.rpm
    - unless: rpm -qa | grep libpng-devel
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/libpng-devel-1.2.49-2.el6_7.x86_64.rpm
    - unless: rpm -qa | grep libpng-devel
    - require:
      - file: libpng-devel

libevent:
  file.managed:
    - name: /usr/local/src/libevent-1.4.13-4.el6.x86_64.rpm
    - source: salt://base/pkg/files/libevent-1.4.13-4.el6.x86_64.rpm
    - unless: rpm -qa | grep libevent
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/libevent-1.4.13-4.el6.x86_64.rpm
    - unless: rpm -qa | grep libevent
    - require:
      - file: libevent

zip:
  file.managed:
    - name: /usr/local/src/zip-3.0-1.el6_7.1.x86_64.rpm
    - source: salt://base/pkg/files/zip-3.0-1.el6_7.1.x86_64.rpm
    - unless: rpm -qa | grep zip
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/zip-3.0-1.el6_7.1.x86_64.rpm
    - unless: rpm -qa | grep zip
    - require:
      - file: zip

unzip:
  file.managed:
    - name: /usr/local/src/unzip-6.0-2.el6_6.x86_64.rpm
    - source: salt://base/pkg/files/unzip-6.0-2.el6_6.x86_64.rpm
    - unless: rpm -qa | grep unzip
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/unzip-6.0-2.el6_6.x86_64.rpm
    - unless: rpm -qa | grep unzip
    - require:
      - file: unzip

swig:
  file.managed:
    - name: /usr/local/src/swig-1.3.40-6.el6.x86_64.rpm
    - source: salt://base/pkg/files/swig-1.3.40-6.el6.x86_64.rpm
    - unless: rpm -qa | grep swig
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: rpm -ivh /usr/local/src/swig-1.3.40-6.el6.x86_64.rpm
    - unless: rpm -qa | grep swig
    - require:
      - file: swig
