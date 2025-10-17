#!/bin/bash

while [[ $# -gt 0 ]]; do
  case $1 in
    --arg1)
      arg1="$2"
      shift 2
      ;;
    --arg2)
      arg2="$2"
      shift 2
      ;;
    *)
      echo "Unknown option: $1"
      exit 1
      ;;
  esac
done

echo "arg1: $arg1"
echo "arg2: $arg2"

