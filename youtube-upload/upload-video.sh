#!/bin/bash

# Setting up nvm for node stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion"  ] && \. "$NVM_DIR/bash_completion"
nvm use node

echo "Let's upload a video!"
echo "What is the title of the video?"
read TITLE
echo "What tags (comma separated) should this video have?"
read TAGS
echo "What playlist should this video be in?"
read PLAYLIST
echo "finally, what is the filename?"
ls -l
read FILENAME

echo "here is what I have"
echo "*****************************"
echo "title: $TITLE"
echo "tags: $TAGS"
echo "Playlist: $PLAYLIST"
echo "filename: $FILENAME"
echo "*****************************"
echo "is this correct? (Y/n)"
read READY

if [ "$READY" == "" -o "$READY" == "y" -o "$READY" == "Y" ]
then
  echo "Uploading time!"
  youtube-upload \
    --title="$TITLE" \
    --tags="$TAGS" \
    --playlist="$PLAYLIST" \
    "$FILENAME"

  if [ "$?" == "0" ]
  then
    if [ "$GALVANIZE_VIDEO" == "true" ]
    then
      npx svupload
    fi
  fi
else
  echo "Ok then, doing nothing"
fi
