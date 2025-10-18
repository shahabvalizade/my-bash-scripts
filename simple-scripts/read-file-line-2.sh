#!/bin/bash
awk 'NF == 2 { print "Name:", $1, "Score:", $2 }' test-file-2.txt
