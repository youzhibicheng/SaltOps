{%- from 'sun-java/settings.sls' import java with context %}

jdk-config:
  file.managed:
    - name: /etc/profile.d/java.sh
    - source: salt://java/java.sh
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      java_home: {{ java.java_home }}

jdk-source:
 cmd.run:
    - name: source /etc/profile.d/java.sh
    - onlyif: test -f /etc/profile.d/java.sh 


