# 个人centos开发环境镜像

### 集成软件

- [x] redis单机多实例
- [x] sentinel高可用集群
- [x] zookeeper单机伪集群

### 软件一览

> 默认安装目录: /home，包含如下文件

- build.sh构建软件环境
- control.sh start 启动软件
- conf 配置文件目录
- data 数据目录
- log 日志目录

#### Redis 
```
├── README.md
├── build.sh
├── conf
│   ├── redis_6379.conf
│   ├── redis_6380.conf
│   ├── sentinel_26379.conf
│   ├── sentinel_26380.conf
│   └── sentinel_26381.conf
├── control.sh
├── data
│   ├── 6379
│   └── 6380
└── log
```
#### Zookeeper

```
├── README.md
├── build.sh
├── conf
│   ├── zoo1.cfg
│   ├── zoo2.cfg
│   └── zoo3.cfg
├── control.sh
├── data
│   ├── zoo1
│   │   └── myid
│   ├── zoo2
│   │   └── myid
│   └── zoo3
│       └── myid
└── log
    ├── zoo1
    ├── zoo2
    └── zoo3
```

### 如何使用
```
docker build . -t centos:latest
# 容器代码目录/home/webroot挂载到宿主机目录/yours/code
docker run --name centos -v /yours/code:/home/webroot -itd image_id
docker exec -it container_id bash
```	

