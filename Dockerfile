FROM ruby:2.2
MAINTAINER zchee <zcheeee@gmail.com>

WORKDIR /usr/src/app

RUN bundle config --global jobs 8
COPY vendor /usr/src/app/vendor/
COPY Gemfile /usr/src/app/
RUN bundle install

COPY . /usr/src/app
CMD bundle exec ruboty
