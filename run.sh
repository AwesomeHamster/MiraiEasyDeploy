#!/bin/bash

# download MiraiOK
if [ ! -e MiraiOK ]
then
    wget -c http://t.imlxy.net:64724/mirai/MiraiOK/miraiOK_linux_amd64
    mv miraiOK_linux_amd64 MiraiOK
fi

# download plugins
if [ ! -d "plugins" ]
then
    mkdir -p plugins
fi

if [ ! -e "plugins/mirai-api-http.jar" ]
then
    wget -c https://github.com/project-mirai/mirai-plugins/raw/master/mirai-api-http/mirai-api-http-1.7.0.jar -P plugins/
    mv mirai-api-http-1.7.0.jar plugins/mirai-api-http.jar
fi

# create config.txt
echo -e "----------\nlogin $1\nsay $2 $3" > config.txt

# run MiraiOK
chmod +x ./MiraiOK
./MiraiOK
