FROM ruby:2.7.0-slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        gcc \
        g++ \
        make \
        git \
    && rm -rf /var/lib/apt/lists/* \
    && git clone git://github.com/imathis/octopress.git /srv/octopress

WORKDIR /srv/app/octopress
RUN gem install bundle \
    && bundle install
