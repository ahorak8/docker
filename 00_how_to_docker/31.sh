docker service rm $(docker service ls -q)

# Remove all services listed by $(docker service ls -q) 
# -q or --quiet to just list IDs

# To test: 
# docker service ls, should list no results
