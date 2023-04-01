FROM ruby:2.7.7-alpine
RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    tzdata \
    nodejs \
    yarn
RUN gem install rails -v '6.0.6'
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs $(nproc) --retry 3
COPY . ./

RUN rails webpacker:install
