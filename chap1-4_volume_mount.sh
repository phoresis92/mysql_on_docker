
#!/bin/sh

docker run -it --name db001 -p 3307:3306 \
 -v /home/kyd/workspace/docker/mysql_on_docker/db001/data:/var/lib/mysql \
 -v /home/kyd/workspace/docker/mysql_on_docker/db001/log:/var/log/mysql \
 -v /home/kyd/workspace/docker/mysql_on_docker/db001/conf:/etc/percona-server.conf.d \
 -e MYSQL_ROOT_PASSWORD="root" -d percona:5.7.30

