
# Mysql on Docker

[따라하며 배우는 Mysql on Docker](https://www.inflearn.com/course/mysql-docker)


## chap1 시작하기

### 컨테이너에 볼륨 마운트를 통해 데이터 보존

1. 데이터베이스 데이터

```shell
    mkdir -p db001/data
    chmod 777 db001 db001/data
```

2. 로그 데이터

```shell
    mkdir -p db001/log
    chmod 777 db001/log
```

3. 설정 데이터

```shell
    mkdir -p db001/conf
    chmod 777 db001/conf

    vim db001/conf/my.cnf

    chmod 644 db001/conf/my.cnf
```

#### 도커 실행

```shell
    docker run -it --name db001 -h db001 -p 3307:3306 \
    -v db001/data:/var/lib/mysql \
    -v db001/log:/var/log/mysql \
    -v db001/conf:/etc/percona-server.conf.d \
    -e MYSQL_ROOT_PASSWORD="root" -d percona:5.7.30
```


