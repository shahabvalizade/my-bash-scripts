#!/bin/bash
while read name value; do
  if [[ -z "$name" || -z "$value" ]]; then
    continue
  fi
  echo "Name: $name, Value: $value"
done < test-file-2.txt

awk '{ print "Name:", $1, "Score:", $2 }' test-file-2.txt