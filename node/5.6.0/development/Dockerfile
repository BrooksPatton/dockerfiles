FROM node:5.6.0
MAINTAINER Brooks Patton
RUN npm install -g \
  mocha \
  express-generator
CMD /bin/bash
LABEL version="1.0.0"
LABEL description="development image for working on node based projects."
EXPOSE 3000
ENV PORT 3000
VOLUME /data
WORKDIR /data
