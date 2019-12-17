docker run --name roach-warden --link spawning-pool:db -p 8081:80 -d phpmyadmin/phpmyadmin

# https://hub.docker.com/r/phpmyadmin/phpmyadmin/
# To test, go to: http://<IP>:8081
# Username: root; Password: Kerrigan
