FROM ruby:2.6.0	
# v8 runtime -- dependency for execjs
RUN apt update ; apt install -y nodejs

ENV VIRTUAL_HOST=test-mp.devguru.co
# Keep the app data in /srv
RUN mkdir -p /srv
RUN gem install bundler
WORKDIR /srv

# Dependencies for RoR app
COPY Gemfile Gemfile.lock /srv/
RUN bundle install

# Copy the RoR app
COPY . /srv

