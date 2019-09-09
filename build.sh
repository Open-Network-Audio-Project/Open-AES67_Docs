#!/bin/bash

mkdocs build

if [ "$1" != "" ]; then
  if [ "$1" = "-publish" ]; then
    echo "Publishing to Tracked Repository"
    rm -r ./Open-AES67.github.io/*
    cp -r  ./site/* ./Open-AES67.github.io/
  else
    echo "invalid argument"
  fi
fi

exit