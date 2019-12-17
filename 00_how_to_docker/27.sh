docker service logs --follow $(docker service ps --quiet --filter "name=engineering-bay.1" engineering-bay)

# Commands needed for this:

# -> 'docker service logs' to get the logs
# 	** --follow or -f for live logs

# -> 'docker service ps' to access the individual service's identity that we want to log. Need to filter results
# 	** --quiet or -q only display task IDs
# 	** --filter or -f filter output based on conditions provided

# Testing: 
# docker service ps --quiet --filter "name=engineering-bay.1" engineering-bay, should return a single ID
# docker service logs <ID>
# Note: Make sure you only have one version of engineering-bay running. [docker service rm]
