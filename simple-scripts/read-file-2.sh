#!/bin/bash
read a < test-file.txt
echo $(( $a+1 ))