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

if [[ -z "${username:-}" || -z "${addpoint:-}" ]]; then
  echo "Usage: $0 --username <name> --addpoint <number>"
  exit 1
fi

if ! [[ "$addpoint" =~ ^-?[0-9]+$ ]]; then
  echo "Error: --addpoint must be an integer"
  exit 1
fi

scores_file="scores.txt"
touch $scores_file
tmp_file="$(mktemp)"

awk -v username="$username" -v addpoint="$addpoint" '
  BEGIN { found=0 }
  NF==2 {
        if ($1 == username) { $2 = $2 + addpoint; found=1 }
        print $1, $2
        next
  }
  END {
      if (!found) {
          print username, 0 + addpoint
      }
  }
' "$scores_file" > "$tmp_file" && mv "$tmp_file" "$scores_file"
