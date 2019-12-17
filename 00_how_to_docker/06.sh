docker run -d --name overlord --restart always -p 5000:80 nginx

# To get ip of Char, use: docker-machine ip Char
# To test if container is running, use: docker ps
# To test if container is functioning, go to: http://192.168.99.102:5000
# (IP address might be different if Char was restarted)
# Trouble shooting: 'docker kill overlord' then 'docker rm orverlord' before rerunning it
