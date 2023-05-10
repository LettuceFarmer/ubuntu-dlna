FROM ubuntu:latest

#Indiquem que s'actualitzin els repositoris del SO
RUN apt-get upgrade -y && apt-get update -y

#Descarreguem el software de vlc per a poguer fer probes dintre del contenidor i el servei minidlna en el que es basarà tot
RUN apt-get install -y vlc
RUN apt-get install -y minidlna

#Crearem un arxiu de configuració de DLNA propi i al copiarem substituint el original
COPY minidlna.conf /etc/minidlna.conf

#Copiarem els arxius que volem mostrar per vlc a la carpeta on indicarem que es troba el contingut MEDIA
COPY video.mp4 /data/video.mp4
COPY cat.jpg /data/cat.jpg

#Exposem el port 8200 per a poder conectar-nos al SERVIDOR DLNA i el port 1900 per exposarlo per UDP
EXPOSE 1900/udp
EXPOSE 8200/tcp

#Iniciem el servei en foreground
CMD ["/usr/sbin/minidlnad", "-d"]
