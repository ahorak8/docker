docker swarm init --advertise-addr $(docker-machine ip Char)

# https://docs.docker.com/engine/swarm/swarm-tutorial/create-swarm
# The --advertise-addr flag configures the manager node to publish its address as the one added to <MANAGER-IP>
# To check, run: docker info
