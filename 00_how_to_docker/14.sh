docker run --name lair --link spawning-pool:mysql -p 8080:80 -d wordpress

# To test if Wordpress works and is connected to the database: http://<IP>:8080 
