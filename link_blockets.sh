#!/usr/bin/env bash

DEST=/usr/share/i3blocks

for blocklet in blocks/*
do
  BLOCK=$(realpath $blocklet)
  NAME=$(basename $blocklet)
  if [ ! -f "$DEST/$NAME" ]; then
    echo "Creating symlink for $NAME in $DEST"
    sudo ln -s $BLOCK $DEST
  fi
done

