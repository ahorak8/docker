docker service create -d --name orbital-command --network overmind -e RABBITMQ_DEFAULT_USER=username -e RABBITMQ_DEFAULT_PASS=password rabbitmq

# To deploy an application image when Docker Engine is in swarm mode, create a service 
# -the image for a microservice within the context of some larger application
# When creating a service, specify which container image to use and which commands to execute inside running containers

# https://docs.docker.com/engine/swarm/services/
# https://hub.docker.com/_/rabbitmq/

# Testing: 
# docker service ls
# docker service ps orbital-command
# docker service inspect -f {{.Spec.TaskTemplate.ContainerSpec.Env}} orbital-command
