docker service create --replicas 2 -e OC_USERNAME=username -e OC_PASSWD=password --name engineering-bay --network overmind 42school/engineering-bay

# https://hub.docker.com/r/42school/engineering-bay/

# --replicas specifies the amount of replicas for the service

# To connect to overmind:
# set OC_USERNAME=username (Username used to access to orbital-command)
# set OC_PASSWD=password (Password used to access to orbital-command)

# Testing:
# docker service ls
# docker service inspect -f {{.Spec.TaskTemplate.ContainerSpec.Env}} engineering-bay
