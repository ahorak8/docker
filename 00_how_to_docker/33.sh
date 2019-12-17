docker rmi $(docker images --all --quiet)

# rmi to remove images
# To remove all images listed by $(docker images --all --quiet)
# -a or --all, to show all images
# -q or --quiet, to only show IDs

# To test: 
# docker images ls, will list no results
