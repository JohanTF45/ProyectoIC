FROM ubuntu:20.10
RUN apt-get update
RUN apt-get install -y tzdata
RUN apt-get -y install apache2
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN wget https://github.com/JohanTF45/ProyectoIC/archive/master.zip
RUN unzip master.zip
RUN cp -a /ProyectoIC-master/* var/www/html
EXPOSE 80
CMD  /usr/sbin/apache2ctl -D FOREGROUND