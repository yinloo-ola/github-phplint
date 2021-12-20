#!/bin/sh -l

# sh -c "! (find . -type f -name \"*.php\" $1 -exec php -l -n {} \; | grep -v \"No syntax errors detected\")"
echo $1
export IFS=" "
sentence=$1
for file in $sentence; do
  php -l -n $file
done
