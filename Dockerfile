FROM ruby:2.4

COPY . /app

RUN gem install sinatra sinatra-contrib

CMD ruby /app/server.rb
