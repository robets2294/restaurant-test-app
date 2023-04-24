FROM ruby:2.7.2-alpine

RUN apk add --update --no-cache \
  build-base \
  postgresql-dev \
  tzdata \
  nodejs \
  yarn

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . .

EXPOSE 3000