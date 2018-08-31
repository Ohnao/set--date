FROM ruby:2.3.7
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /set-date
WORKDIR /set-date
ADD ./rails-vue-sandbox/Gemfile /set-date/Gemfile
ADD ./rails-vue-sandbox/Gemfile.lock /set-date/Gemfile.lock
WORKDIR /set-date/rails-vue-sandbox
RUN ls
RUN bundle install
ADD ./rails-vue-sandbox /set-date
