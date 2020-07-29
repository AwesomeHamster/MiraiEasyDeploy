#!/bin/bash

# download MiraiOK
if [ ! -e MiraiOK ]
then
    wget -c ${MIRAI_DOWNLOAD_URL} -O MiraiOK
fi

# download plugins
if [ ! -d "plugins" ]
then
    mkdir -p plugins
fi

if [ ! -e "plugins/mirai-api-http.jar" ]
then
    wget -c ${MIRAI_API_HTTP_DOWNLOAD_URL} -O plugins/mirai-api-http.jar
fi

# create config.txt
echo -e "----------\nlogin ${BOT_INFO}\nsay ${TEST_GROUP} ${TEST_MESSAGE}" > config.txt

# run MiraiOK
chmod +x ./MiraiOK
./MiraiOK
