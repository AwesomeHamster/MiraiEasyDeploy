#!/bin/bash

MIRAI_DOWNLOAD_URL=http://t.imlxy.net:64724/mirai/MiraiOK/miraiOK_linux_amd64
MIRAI_API_HTTP_DOWNLOAD_URL=https://github.com/project-mirai/mirai-plugins/raw/master/mirai-api-http/mirai-api-http-1.7.0.jar
MIRAI_CQHTTP_MIRAI_URL=https://github.com/yyuueexxiinngg/cqhttp-mirai/releases/download/0.2.3/cqhttp-mirai-0.2.3-all.jar

wget -q -c "$MIRAI_DOWNLOAD_URL" -O MiraiOK
mkdir -p plugins
wget -q -c "$MIRAI_API_HTTP_DOWNLOAD_URL" -O plugins/mirai-api-http.jar
wget -q -c "$MIRAI_CQHTTP_MIRAI_URL" -O plugins/cqhttp-mirai.jar
chmod +x ./MiraiOK