# An image to be able to run npm run watch.
FROM node:8-slim

RUN apt-get update
RUN apt-get install -q -y bzip2 ruby ruby-dev libffi-dev gcc make zlib1g zlib1g-dev git

RUN echo en_US.UTF-8 UTF-8 > /etc/locale.gen
RUN apt-get install -q -y locales

RUN npm -g install browser-sync
RUN npm -g install grunt-cli

RUN gem install bundler

RUN mkdir /home/node/.bundle
RUN echo '---' > /home/node/.bundle/config
RUN echo 'BUNDLE_PATH: .bundle' >> /home/node/.bundle/config
RUN echo 'BUNDLE_DISABLE_SHARED_GEMS: "1"' >> /home/node/.bundle/config
RUN chown -R node:node /home/node/.bundle

ENV LANG en_US.UTF-8
USER node
WORKDIR /source
