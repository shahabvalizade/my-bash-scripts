#!/bin/bash
while read -r name value; do
  if [[ -z "$name" || -z "$value" ]]; then
    continue
  fi
  echo "Name: $name, Value: $value"
done < test-file-2.txt

