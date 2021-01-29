FROM debian:10
ADD sources.list.http /etc/apt/sources.list
RUN apt update
RUN apt install -y apt-transport-https ca-certificates
ADD sources.list /etc/apt/sources.list
RUN apt update
RUN apt full-upgrade -y
RUN apt autoremove -y

