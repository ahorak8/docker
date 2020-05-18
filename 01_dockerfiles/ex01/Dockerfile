FROM debian
# base image

RUN apt-get update && \
    apt-get upgrade -y 
RUN apt-get install wget -y bzip2 

# Teamspeak license
ENV TS3SERVER_LICENSE=accept

RUN useradd -d /opt/teamspeak3-server -m teamspeak3-user

# Downloading & unpacking
RUN wget http://dl.4players.de/ts/releases/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2
RUN tar -xvf teamspeak3-server_linux_amd64-3.8.0.tar.bz2

RUN mkdir /teamspeak3-server
RUN mv teamspeak3-server_linux_amd64/* /teamspeak3-server
RUN chown teamspeak3-user:teamspeak3-user /teamspeak3-server -R
RUN rm -fr teamspeak3-server_linux_amd64-3.8.0.tar.bz2 teamspeak3-server_linux_amd64

EXPOSE 10011 30033 9987/udp

ENTRYPOINT sh ./teamspeak3-server/ts3server_minimal_runscript.sh start

#BUILDING: 
# docker build ./ -t ex01

#RUNNING: 
# docker run -d --name teamspeak --rm -p 9987:9987/udp -p 30033:30033 -p 10011:10011 ex01

# ENDING:
# docker stop teamspeak