FROM ruby:2.4.2
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-api-example

WORKDIR /rails-api-example

ADD Gemfile /rails-api-example/Gemfile
ADD Gemfile.lock /rails-api-example/Gemfile.lock
RUN bundle install
ADD . /rails-api-example
