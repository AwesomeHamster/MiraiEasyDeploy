FROM debian:buster

ARG MIRAI_DOWNLOAD_URL
ARG MIRAI_API_HTTP_DOWNLOAD_URL
ARG MIRAI_CQHTTP_MIRAI_URL

# set tsinghua tuna debian mirror server
# uncomment it in mainland china
# RUN mv /etc/apt/sources.list /etc/apt/sources.list.backup \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free" > /etc/apt/sources.list \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free" >> /etc/apt/sources.list \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free" >> /etc/apt/sources.list \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free" >> /etc/apt/sources.list

# set lacale as zh-cn
ENV LANG=zh_CN.UTF-8

# install neccesary softwares
RUN apt-get update \
    && apt-get install -y wget locales \
    # update locale
    && sed -i -E 's/# (zh_CN.UTF-8)/\1/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=zh_CN.UTF-8

RUN wget -q -c "$MIRAI_DOWNLOAD_URL" -O MiraiOK \
    && mkdir -p plugins \
    && wget -q -c "$MIRAI_API_HTTP_DOWNLOAD_URL" -O plugins/mirai-api-http.jar \
    && wget -q -c "$MIRAI_CQHTTP_MIRAI_URL" -O plugins/cqhttp-mirai.jar \
    && chmod +x ./MiraiOK

CMD ./MiraiOK
