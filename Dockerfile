FROM kalilinux/kali-rolling

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y openssh-server

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y fakechroot
RUN apt-get install -y --no-install-recommends build-essential libjson-c-dev libwebsockets-dev
RUN apt-get install -y rsync
RUN apt-get install -y python3
RUN apt-get install -y cmake
RUN apt-get install -y git
RUN apt-get install -y sudo
RUN apt-get install -y fakeroot
RUN apt-get install -y neofetch
RUN apt-get install -y apt-utils
RUN apt-get install -y nano
RUN apt-get install -y ruby
RUN apt-get install -y cmatrix
RUN apt-get install -y npm
RUN apt-get install -y curl
RUN apt-get install -y wget
RUN npm install -g heroku
RUN pip install lolcat
RUN apt-get install -y tigervnc-standalone-server

COPY root.sh /usr/local/bin/root.sh
COPY bash.bashrc $HOME/.bashrc
COPY welcome.sh $HOME/.welcome.sh

ADD https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 /usr/local/bin/ttyd
RUN chmod +x /usr/local/bin/ttyd
