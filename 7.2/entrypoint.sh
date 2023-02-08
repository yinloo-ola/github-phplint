#!/bin/bash -l

echo "Changed files: ${1}"
export IFS=" "
changed_files=$1
for file in $changed_files; do
  if [[ $file == *.php ]]
  then
    RESULTS=`php -l -n $file`

    if [ "$RESULTS" != "No syntax errors detected in $file" ] ; then
      echo $RESULTS
      exit 1
    else
      echo $RESULTS
    fi
  fi
done
