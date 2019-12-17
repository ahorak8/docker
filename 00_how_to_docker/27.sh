# Getting ID of first replica:
value=$(docker service ps -q engineering-bay |sed '1q;d')

# Display real-time logs, using value gotten from above:
docker service logs --follow "$value"

# Commands needed for this:

# -> 'docker service logs' to get the logs
# 	** --follow or -f for live logs

# -> 'docker service ps' to access the individual service's identity that we want to log
# 	** --quiet or -q only display task IDs

# Testing: 
# docker service ps --quiet --filter "name=engineering-bay.1" engineering-bay, should return a single ID
# docker service logs <ID>
# Note: Make sure you only have one version of engineering-bay running. [docker service rm]
