FROM ruby:latest

RUN	gem install rails sqlite3 &&\
	apt update &&\
	apt install nodejs -y

# These only run on ft-rails:on-build
ONBUILD ADD	app /opt/app
ONBUILD WORKDIR	/opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN	bundle install &&\
			bundle exec rake db:migrate &&\
			bundle exec rake db:seed
