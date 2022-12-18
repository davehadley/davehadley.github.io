FROM debian:bullseye-slim

LABEL org.opencontainers.image.authors="David Hadley <davehadley@users.noreply.github.com>"
LABEL org.opencontainers.image.source="git@github.com:davehadley/davehadley.github.io.git"
LABEL uk.co.davehadley.github.io="true"

RUN apt-get update \
    && apt-get -y install \
        ruby ruby-dev build-essential \
        locales \
        git

RUN gem install bundler

WORKDIR /app
COPY . .
RUN bundle install

# needed to solve https://github.com/jekyll/jekyll/issues/4268
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

CMD bundle exec jekyll serve --livereload --host 0.0.0.0
