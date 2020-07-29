# MiraiOK Runner

A too young too simple runner of [MiraiOK](https://github.com/LXY1226/MiraiOK), to make it easier to deploy onto server.

[MiraiOK](https://github.com/LXY1226/MiraiOK)的又一层套娃，使其更容易部署到云服务器上。

# Prerequirement 要求

- Docker
- Docker Compose

_if you don't have Docker or Docker Compose on your computer, install it first. [Learn More](https://docs.docker.com/get-started/)_

_如果你还没安装Docker，需要先安装。[入门教程](https://docs.docker.com/get-started/)_

# How to use 如何使用

- clone this project (add `--depth` to avoid download all the commit log)
- clone这个项目 (加上`--depth`参数就不用下载庞大的commit历史)

```bash
git clone --depth 1 https://github.com/AwesomeHamster/MiraiOKRunner.git
cd MiraiOKRunner/
```

- create a file named `.env`
- 创建一个`.env`文件

```bash
touch .env
```

- write down the content below
- 写入以下内容

```bash
# .env
# (required / 必要变量) qq id and password / qq号和密码
MIRAI_BOT_INFO="111111 password"
# (optional / 可选变量) test message when start success / 启动成功后发送测试信息
MIRAI_TEST_MESSAGE="test message"
# (optional / 可选变量)  test message target (can be qq or group) / 测试信息的目标qq号或群号
MIRAI_TEST_TARGET="123456789"
```

- create and start container with Docker Compose
- 使用Docker Compose创建并启动容器

```bash
docker-compose up -d
```

_You can create a container with your own configuration too,_
_just modify `docker-compose.yml` or directly use `docker` command._

_You must pass all the required environment variable in `base.env` and mentioned above._


- if necessary, print logs to verify your bot qq
- 有时候可能会被风控，需要输出日志解除设备锁等

```bash
docker-compose logs --tail 100
# --tail 100 means print last 100 lines
# --tail 100 表示只输出最后的100行日志
```
