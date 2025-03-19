FROM ubuntu

WORKDIR /

RUN apt-get update
RUN apt install -y locales && apt install -y fonts-wqy-microhei fonts-wqy-zenhei xfonts-wqy
RUN locale-gen en_US.UTF-8 zh_CN.UTF-8
RUN apt-get install -y openjdk-21-jdk

ENV LANG=zh_CN.UTF-8
ENV LC_ALL=zh_CN.UTF-8

ENTRYPOINT [ "java" ]
