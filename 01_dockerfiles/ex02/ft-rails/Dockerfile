FROM ruby:latest
# base image

RUN apt-get update -y && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	sqlite3 \
	gem

RUN	gem install bundler --no-document
RUN gem install rails --no-document
RUN gem install rake -v 12.3.1 --no-document

# Run on ft-rails:on-build
ONBUILD COPY app /opt/app
ONBUILD WORKDIR	/opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN	bundle install
ONBUILD RUN rake _12.3.1_ db:migrate
ONBUILD RUN	rake _12.3.1_ db:seed
ONBUILD RUN	rake _12.3.1_ 

# Research links:
# https://guides.rubyonrails.org/getting_started.html
# https://dev.to/neshaz/how-to-use-rake-db-commands-in-the-correct-way--50o2