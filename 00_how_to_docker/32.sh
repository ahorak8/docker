docker rm -f $(docker ps -a -q)

# Remove all containers listed by $(docker ps -a -q) 
# -q or --quiet to just list IDs
# -f or --force, to force removal of a running container

# To test:
# docker ps -a, will show no results
