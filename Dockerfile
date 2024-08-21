FROM jekyll/jekyll:4.2.2

COPY . /app

WORKDIR /app

RUN chown -R jekyll:jekyll /app

RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
