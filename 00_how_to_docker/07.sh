docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' overlord

# https://docs.docker.com/engine/reference/commandline/inspect
