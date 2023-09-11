FROM ruby:3.0.2-alpine

RUN apk update && \
    apk add build-base && \
    apk add g++ gcc unixodbc-dev unixodbc freetds-dev freetds && \
    apk add chromium chromium-chromedriver gcompat

RUN apk update &&\
    apk add --update alpine-sdk \
               build-base

RUN mkdir cucumber
WORKDIR /cucumber
COPY Gemfile .

RUN gem install bundler --source http://rubygems.org &&\
    bundle install
