FROM ubuntu:22.04

RUN apt-get upgrade -y && apt-get update -y
RUN apt-get install -y vlc
RUN apt-get install -y minidlna 

COPY minidlna.conf /etc/minidlna.conf
COPY sample-10s.mp4 /etc/video.mp4

EXPOSE 8200

CMD ["/usr/sbin/minidlnad", "-d"]
