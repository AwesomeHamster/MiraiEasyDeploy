FROM openjdk:14-alpine

# set lacale as zh-cn
ENV LANG=zh_CN.UTF-8

# install neccesary softwares
RUN apt-get update \
    && apt-get install -y wget locales \
    # update locale
    && sed -i -E 's/# (zh_CN.UTF-8)/\1/' /etc/locale.gen \
    && locale-gen \
    && update-locale LANG=zh_CN.UTF-8 \
    # download onebot kotlin
    && wget -q -c "https://github.com/yyuueexxiinngg/onebot-kotlin/releases/download/0.3.4/onebot-kotlin-0.3.4-all.jar" -O plugins/onebot-kotlin-all.jar

CMD ["java", "-jar", "onebot-kotlin-all.jar"]
