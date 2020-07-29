FROM debian:buster

# set tsinghua tuna debian mirror server
# uncomment it in mainland china
# RUN mv /etc/apt/sources.list /etc/apt/sources.list.backup \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free" > /etc/apt/sources.list \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free" >> /etc/apt/sources.list \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free" >> /etc/apt/sources.list \
#     && echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free" >> /etc/apt/sources.list

# install neccesary softwares
RUN apt-get update \
    && apt-get install -y wget
