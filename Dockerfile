FROM debian:buster-20210208

# Docs: https://linuxgsm.com/lgsm/vhserver/
RUN dpkg --add-architecture i386; \
  apt-get update; \
  apt-get install -y \
  curl wget file tar bzip2 \
  gzip unzip bsdmainutils \
  python util-linux ca-certificates \
  binutils bc jq tmux netcat \
  lib32gcc1 lib32stdc++6 tuptime cpio \
  procps vim

RUN adduser --disabled-password --gecos "" vhserver
RUN mkdir -p /data ;\
  chown vhserver /data

USER vhserver
WORKDIR /data

RUN wget -O linuxgsm.sh https://linuxgsm.sh \
 && chmod +x linuxgsm.sh && bash linuxgsm.sh vhserver

RUN ./vhserver auto-install
ADD --chown=vhserver run.sh /data/run.sh

CMD ["./run.sh"]
