# Commands to be run in the container: 
# apt-get update
# apt-get upgrade -y
# apt-get install build-essential -y
# apt-get install manpages-dev -y
# apt-get install vim -y
# apt-get install git -y

# The -y is used to auto-reply yes to any questions during installation

# Installing and running the debian container:
docker run -it --rm debian /bin/bash

# To verify gcc compiler and git after installation, use the folllowing in the container's shell:
# whereis gcc git
# gcc -v
# git --version

# https://cyberciti.boz/faq/debian-linux-install-gnu-gcc-compiler
