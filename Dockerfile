FROM ubuntu:latest

RUN apt-get upgrade -y && apt-get update -y

RUN apt-get install -y vlc
RUN apt-get install -y minidlna 

COPY minidlna.conf /etc/minidlna.conf
COPY video.mp4 /data/video.mp4
COPY cat.jpg /data/cat.jpg

EXPOSE 1900/udp
EXPOSE 8200/tcp

CMD ["/usr/sbin/minidlnad", "-d"]
