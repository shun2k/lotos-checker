FROM ruby:3.1.0

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    node.js \
    postgresql-client \
    yarn
WORKDIR /lotos-checker
COPY Gemfile Gemfile.lock /lotos-checker/
RUN bundle install