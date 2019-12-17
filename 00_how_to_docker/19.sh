docker run -d -it --name Abathur -p 3000:3000 -v ~/:/root python:2-slim

docker exec Abathur pip install Flask

echo 'from flask import Flask\napp = Flask(__name__)\n@app.route("/")\ndef hello_world():\n\treturn "<h1>Hello World!</h1>"' > ~/app.py

docker exec -e FLASK_APP=/root/app.py Abathur flask run --host=0.0.0.0 --port 3000

# https://hub.docker.com/_/python
# https://flask.palletsprojects.com/en/1.1.x/quickstart

# Testing: curl $(docker-machine ip Char):3000
