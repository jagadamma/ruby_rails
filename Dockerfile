FROM ruby:2.5
RUN  apt-get update && apt-get install -y nodejs postgresql-client
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY . /app
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT  ["entrypoint.sh"]
RUN bundle install
EXPOSE 3000 
CMD ["rails" , "server", "-b" , "0.0.0.0"]
