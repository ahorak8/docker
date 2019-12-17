docker service create --replicas 2 -e OC_USERNAME=username -e OC_PASSWD=password --name marines --network overmind 42school/marine-squad

# https://hub.docker.com/r/42school/marine-squad

# To test:
# docker service ls
# docker service ps marines
# docker service inspect -f {{.Spec.TaskTemplate.ContainerSpec.Env}} marines
# docker service logs marines
