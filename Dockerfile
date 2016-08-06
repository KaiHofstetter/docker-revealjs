FROM node:6.3.1

MAINTAINER Kai Hofstetter <kai.hofstetter@gmx.de>

# Install curl
RUN apt-get update && \
    apt-get -y install curl

# Download reveal.js
RUN curl -L "https://github.com/hakimel/reveal.js/archive/3.3.0.tar.gz" > /tmp/revealjs.tar.gz && \
    tar -xzf /tmp/revealjs.tar.gz -C / && \
    rm -f /tmp/revealjs.tar.gz && \
    mv reveal.js-3.3.0 reveal.js

WORKDIR /reveal.js

# Install grunt-cli and reval.js
RUN npm install -g grunt-cli && \
    npm install

CMD npm start

EXPOSE 8000
