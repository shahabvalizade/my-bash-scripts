#!/bin/bash

while [[ $# -gt 0 ]]; do
  case $1 in
    --username)
      username="$2"
      shift 2
      ;;
    --addpoint)
      addpoint="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

scores_file="scores.txt"
touch $scores_file

while read -r name score; do
  echo "Name: $name, Score: $score"
done < scores.txt



