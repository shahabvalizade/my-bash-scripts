#!/bin/bash
content=$(<test-file.txt)
echo $(( content + 1 ))