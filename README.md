# HAOENV
**本地开发环境部署**



### 安装 Docker 和 docker-compose

* https://docs.docker.com/installation
* https://docs.docker.com/compose/install/

```bash

$ git clone https://github.com/xiaoF/HAOENV.git
$ cd HAOENV
$ docker-compose up -d  

# 根据文件自动下载images,build container,启动
```
漫长的过程，安装完毕以后。。


```bash

# 由于怕有些bash文件没有执行完毕。

$ docker stop $(docker ps -a -q)  # 关闭所有container
$ docker-compose up -d  # 再重启所有container

```

>  1
>  
>  初始化ES 的 admin数据库 mapping
>  postman 快捷链接，运行PUT方法那个
>  https://www.getpostman.com/collections/50f208917e6c68664837
>  
>  2
>  
>  创建pouchdb admin
> 进入http://localhost:5984/_utils/
> 点击 admin party
> 创建admin （开发环境里面为admin admin）
>  
>  3
>  
>  正常情况在命令行打
>  docker ps 
>  
>  应该是有 mongo1 ，mongo2， mongo3，elasticsearch，redis，rabbitmq，pouchdb，mongoconnector，8个container在运行
>  
>  4
>  
>  恢复mongodb的值
>  MongoChef 连接 localohost:27017
>  新建数据库 admin
>  把我们的备份数据库都导入进去以后就会自动与ES同步了，这也是一个漫长的过程，中途最好别切断
>  
>  4
>  
> 后面就可以跑meteor项目了 可以用setting包里面的localhost 文件
> 
> MONGO_URL='mongodb://localhost:27017/admin' meteor  --settings packages/haostay:settings/settings-localhost.json  --port 3000
> 
> 跑起来以后还需要把用户都缓存起来 
> meteor shell
> 
> var allUsers = Meteor.users.find().fetch();for(var i=0;i<allUsers.length;i++){console.log(i);utils.cacheUser(allUsers[i]._id);} 
> 
> 现在已经完成所有配置，你本地就可能跑项目了



### 检查初始化完成的方法

```
# 查看admin admin 是否能登录
进入 http://localhost:15672/
```

```
# MongoChef 连接 localohost:27017
# 左上角IntelliShell 点击进入
# 输入rs.conf() 运行
# 如果显示错误没有initiate 则是有问题
```
  
  
### 其他

```bash
$ docker ps
# 查看当前docker下有多少运行的container
$ docker ps -a
# 查看当前docker下有多少container
$ docker images
# 查看当前docker下有多少image
$ docker stop $(docker ps -a -q) 
# 停止所有的container 运行
$ docker rm $(docker ps -a -q)
# 删除所有的container
$ docker rmi $(docker images -q)
# 删除所有的image
$ eval $(docker-machine env xiaof)
# 切换某一个docker-machine
$ docker exec -it <container> bash
# 进入某个container
```


