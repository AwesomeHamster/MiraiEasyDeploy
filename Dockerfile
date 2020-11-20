FROM debian:buster

# set lacale as zh-cn
ENV LANG=zh_CN.UTF-8

# install neccesary softwares
RUN apt-get update \
    && apt-get install -y wget locales \
    # update locale
    && sed -i -E 's/# (zh_CN.UTF-8)/\1/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=zh_CN.UTF-8

CMD ["java", "--version"]
