FROM ruby:latest
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY Gemfile* .
RUN bundle install
COPY . .
EXPOSE 3000

# CMD ["rails", "tailwindcss:watch&"]
CMD rake assets:precompile

ENTRYPOINT [ "sh", "startup.sh" ]

#CMD ["rails", "server", "-b", "0.0.0.0"]
CMD ["./bin/dev"]
