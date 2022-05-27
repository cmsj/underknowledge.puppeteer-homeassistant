#!/usr/bin/env bash

# Run pupeteer
 node home_assistant.js
 # Convert to a nice grayscale, while theoreticaly the kindle could work this out byhimself, it looks ugly
 convert home_assistant.png -rotate 90 -depth 4 -colorspace gray -define png:color-type=0 -define png:bit-depth=8 home_assistant_8bit.png
 # Copy the file to its final destination
 cp home_assistant_8bit.png /kindle/dashboard.png
