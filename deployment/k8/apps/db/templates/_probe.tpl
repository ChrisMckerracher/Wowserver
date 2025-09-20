{{- define "common.probe" -}}
exec:
  command:
    - /usr/bin/mysql
    - --user=root
    - --password=$MYSQL_ROOT_PASSWORD
    - --execute
    - "\"SHOW DATABASES;\""
initialDelaySeconds: 30
periodSeconds: 5
timeoutSeconds: 10
failureThreshold: 40
{{- end -}}
