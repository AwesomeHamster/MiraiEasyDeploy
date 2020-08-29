FROM debian:buster

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
