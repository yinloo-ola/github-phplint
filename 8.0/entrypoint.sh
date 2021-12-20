#!/bin/bash -l

echo "Changed files: ${1}"
export IFS=" "
changed_files=$1
for file in $changed_files; do
  if [[ $file == *.php ]]
  then
    php -l -n $file
  fi
done
