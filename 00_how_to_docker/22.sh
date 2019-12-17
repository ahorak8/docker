docker-machine ssh Aiur "docker swarm join --token $(docker swarm join-token worker -q) $(docker-machine ip Char):2377"

# Commands must be run from the worker node, so SSH into Aiur first:
# docker-machine ssh Aiur "<COMMANDS HERE>"
# https://docs.docker.com/machine/reference/ssh/

# To join the swarm:
# docker swarm join --token $(<JOIN-TOKEN>)

# To get join token to join as a worker:
# docker swarm join-token worker -q
# Use -q or --quiet to get only the token itself
# https://docs.docker.com/engine/swarm/join-nodes/#join-as-a-worker-node

# Specify ip address of swarm to join:
# HOST:PORT
# $(docker-machine ip Char):2377

# To test: docker node ls
# Char should be leader, Aiur should not have leader status
