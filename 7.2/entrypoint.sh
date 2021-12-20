#!/bin/sh -l

# sh -c "! (find . -type f -name \"*.php\" $1 -exec php -l -n {} \; | grep -v \"No syntax errors detected\")"
IFS=' ' read -r -a array <<< "$1"
for element in "${array[@]}"
do
    php -l -n "$element"
done
