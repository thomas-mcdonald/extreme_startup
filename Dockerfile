FROM ruby:2.3-onbuild

EXPOSE 3000
CMD /usr/local/bin/ruby web_server.rb
