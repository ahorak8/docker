FROM ft-rails:on-build
# ft-rails:on-build needs to be an existing image first

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
# s = server
# -b binds IP address
# -p specificies port

# BUILDING: 
# 1) Create the onbuild image: 
# docker build -t ft-rails:on-build -f ft-rails/Dockerfile .
# 2) Build the app image:
# docker build -t railsapp-img .

# RUNNING: 
# docker run -d --name railsapp -it --rm -p 3000:3000 railsapp-img

# To open in web browser:
# $(docker-machine ip Char):3000

# To stop (the app container will delete itself):
# docker stop railsapp
