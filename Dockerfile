FROM ruby:2.6.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir -p /myapp/api
WORKDIR /myapp/api
COPY Gemfile /myapp/api/Gemfile
COPY Gemfile.lock /myapp/api/Gemfile.lock
RUN bundle install
# This script runs every time the container is created, necessary for rails
ENTRYPOINT ["/myapp/api/entrypoint.sh"]