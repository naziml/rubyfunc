FROM ruby:2.4

COPY ./app /app
COPY ./test /test
WORKDIR /app

EXPOSE 4567

RUN gem install sinatra sinatra-contrib

CMD ["ruby", "/app/server.rb", "-o", "0.0.0.0"]
