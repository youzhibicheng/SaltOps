{%- from 'sun-java/settings.sls' import java with context %}

{#- require a source_url - there is no default download location for a jdk #}

{%- if java.source_url is defined %}

  {%- set tarball_file = java.prefix + '/' + java.source_url.split('/') | last %}

java-install-dir:
  file.directory:
    - name: {{ java.prefix }}
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

download-jdk-tarball:
  file.managed:
    - name:  '{{ tarball_file }}'
    - source:  '{{ java.source_url }}'
    - require:
      - file: java-install-dir

unpack-jdk-tarball:
  archive.extracted:
    - name: {{ java.prefix }}
    - source: file://{{ tarball_file }}
    {%- if java.source_hash %}
    - source_hash: sha256={{ java.source_hash }}
    {%- endif %}
    - archive_format: tar
    - tar_options: z
    - archive_user: root
    - if_missing: {{ java.java_real_home }}

create-bin-java:
  alternatives.install:
    - name: java
    - link: /usr/bin/java
    - path: {{ java.java_real_home }}/bin/java
    - priority: 30
    - onlyif: test -f {{ java.java_real_home }}/bin/java
    - require:
      - archive: unpack-jdk-tarball

create-bin-javac:
  alternatives.install:
    - name: javac
    - link: /usr/bin/javac
    - path: {{ java.java_real_home }}/bin/javac
    - priority: 30
    - onlyif: test -f {{ java.java_real_home }}/bin/javac
    - require:
      - archive: unpack-jdk-tarball

create-bin-jar:
  alternatives.install:
    - name: jar
    - link: /usr/bin/jar
    - path: {{ java.java_real_home }}/bin/jar
    - priority: 30
    - onlyif: test -f {{ java.java_real_home }}/bin/jar
    - require:
      - archive: unpack-jdk-tarball

remove-jdk-tarball:
  file.absent:
    - name: {{ tarball_file }}

{%- endif %}
