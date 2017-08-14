from ubuntu:16.04

RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  apt-get install -y android-tools-adb python-requests python-pil python-pyquery python-numpy libsox-dev libsqlite3-dev libsqlcipher-dev

RUN \
  apt-get -y install python-pip && \  
  pip install --upgrade pip && \
  pip install pysqlcipher csscompressor && \
  pip install --pre pysox

RUN \
  rm -rf /var/lib/apt/lists/*

ENV HOME /root

WORKDIR /root

RUN git clone https://github.com/ppwwyyxx/wechat-dump.git

WORKDIR /root/wechat-dump
VOLUME /root/wechat-dump/workdir

CMD ["bash"]