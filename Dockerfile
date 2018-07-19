FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /set-date
WORKDIR /set-date
ADD Gemfile /set-date/Gemfile
ADD Gemfile.lock /set-date/Gemfile.lock
RUN bundle install
ADD . /set-date
