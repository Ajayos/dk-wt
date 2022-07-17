FROM kalilinux/kali-rolling

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y openssh-server

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y fakechroot
RUN apt-get install -y --no-install-recommends build-essential libjson-c-dev libwebsockets-dev
RUN apt-get install -y rsync python cmake git sudo fakeroot neofetch apt-utils nano ruby cmatrix npm curl wget
RUN npm install -g heroku
RUN pip install lolcat
RUN apt-get install -y tigervnc-standalone-server
RUN curl https://raw.githubusercontent.com/Ajay-o-s/dk-wt/main/root.sh -s -o /usr/local/bin/root.sh
RUN curl https://raw.githubusercontent.com/Ajay-o-s/dk-wt/main/bash.bashrc -s -o $HOME/.bashrc
RUN curl https://raw.githubusercontent.com/Ajay-o-s/dk-wt/main/welcome.sh -s -o $HOME/.welcome.sh

ADD https://github.com/tsl0922/ttyd/releases/download/1.6.1/ttyd_linux.x86_64 /usr/local/bin/ttyd
RUN chmod +x /usr/local/bin/ttyd
