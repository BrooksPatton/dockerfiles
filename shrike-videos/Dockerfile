FROM node:latest
RUN useradd -mU web
USER web
WORKDIR /home/web

RUN npm init -y
RUN npm install svupload

CMD ["npx", "svupload"]

