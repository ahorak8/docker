FROM ubuntu 
# base image

RUN apt-get update -y && apt-get -y upgrade \
	&& apt-get -y install \
	wget \
	openssh-server \
	ca-certificates \
	postfix

# Installing Gitlab
RUN wget \
	https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh \
	&& chmod 777 ./script.deb.sh && ./script.deb.sh
RUN apt-get install -y tzdata gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && sleep 2 && gitlab-ctl reconfigure && tail -f /dev/null

# BUILDING:
# docker build -t my-gitlab .

# RUNNING:
# docker run -it -p 8080:80 -p 8022:22 -p 8443:443 --privileged my-gitlab

# Research links:
# https://docs.gitlab.com/omnibus/README.html#installation-and-configuration-using-omnibus-package
