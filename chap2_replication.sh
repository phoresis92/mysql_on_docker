
#!/bin/sh

    docker run -it --name db002 -h db002 -p 3308:3306 \
        -v /home/kyd/workspace/docker/mysql_on_docker/db002/data:/var/lib/mysql \
        -v /home/kyd/workspace/docker/mysql_on_docker/db002/log:/var/log/mysql \
        -v /home/kyd/workspace/docker/mysql_on_docker/db002/conf:/etc/percona-server.conf.d \
        -e MYSQL_ROOT_PASSWORD="root" -d percona:5.7.30

    docker run -it --name db003 -h db003 -p 3309:3306 \
        -v /home/kyd/workspace/docker/mysql_on_docker/db003/data:/var/lib/mysql \
        -v /home/kyd/workspace/docker/mysql_on_docker/db003/log:/var/log/mysql \
        -v /home/kyd/workspace/docker/mysql_on_docker/db003/conf:/etc/percona-server.conf.d \
        -e MYSQL_ROOT_PASSWORD="root" -d percona:5.7.30

