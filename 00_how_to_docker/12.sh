# Queen of Blades coming right up:

docker run -d --restart=on-failure --name spawning-pool -v hatchery:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Kerrigan -e MYSQL_DATABASE=zerglings mysql:latest --default-authentication-plugin=mysql_native_password

# --mount source=hatchery,target=/root
# Run container in the background: -d
# Restart in case of error: --restart=on-failure (https://docs.docker.com/engine/reference/run/#restart-policies---restart)
# Root password of database: -e MYSQL_ROOT_PASSWORD=Kerrigan (https://hub.docker.com/_/mysql/)
# Storing database in volume hatchery (mounting): -v hatchery:/var/lib/mysql 
# Database name: -e MYSQL_DATABASE=zerglings
# Container name: --name spawning-pool

# Check logs: docker logs -f <container-name>
