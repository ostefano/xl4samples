#!/bin/bash

for file in $(find . -type f | grep ".bin"); do
  if [ ! -f "${file}.zip" ]; then
    echo "zip -P infected ${file}.zip ${file}"
    zip -P infected ${file}.zip ${file}
  fi
done
