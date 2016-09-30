include:
  - base.pkg.analysis-yum-init
yum-init:
  pkg.installed:
    - names:
      - python 
      - python-libs
      - python-devel
      - python-tools
      - python-setuptools

setuptools:
  file.managed:
    - name: /usr/local/src/setuptools-14.3.1.zip
    - source: salt://base/python/files/setuptools-14.3.1.zip
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: cd /usr/local/src && unzip /usr/local/src/setuptools-14.3.1.zip && cd setuptools-14.3.1 && python setup.py install
    - require:
      - file: setuptools

urllib3:
  file.managed:
    - name: /usr/local/src/urllib3-1.10.1.tar.gz
    - source: salt://base/python/files/urllib3-1.10.1.tar.gz
    - user: root
    - group: root
    - mode: 644

  cmd.run:
    - name: cd /usr/local/src && easy_install urllib3-1.10.1.tar.gz
    - require:
      - file: urllib3
