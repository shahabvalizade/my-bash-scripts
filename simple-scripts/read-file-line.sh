#!/bin/bash
while read -r name value; do
  echo "Name: $name, Value: $value"
done < test-file-2.txt
