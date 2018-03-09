FROM python:latest
RUN apt-get update && apt-get install -y wget unzip curl
RUN useradd -m youtubeupload
RUN pip install --upgrade google-api-python-client progressbar2
RUN rm /home/youtubeupload/.profile
WORKDIR /home/youtubeupload
RUN wget https://github.com/tokland/youtube-upload/archive/master.zip
RUN unzip master.zip
WORKDIR /home/youtubeupload/youtube-upload-master
RUN python setup.py install
VOLUME /data
USER youtubeupload
ADD upload-video.sh /home/youtubeupload/upload-video.sh
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm" && \
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" && \
nvm install node && \
npm install -g svupload
RUN echo "\n\nnvm use node" >> /home/youtubeupload/.bashrc
WORKDIR /data
ENTRYPOINT ["/home/youtubeupload/upload-video.sh"]
