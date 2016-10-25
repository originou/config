#!/bin/bash

for file in $(ls -A -I.git -Iinstall.sh); do
  cp -r $file $HOME/
done
