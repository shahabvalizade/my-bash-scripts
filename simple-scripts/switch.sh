#!/bin/bash
read color
case $color in
    red)
        echo 1
        ;;
    blue)
        echo 2
        ;;
    green)
        echo 3
        ;;
    yellow)
        echo 4
        ;;
    purple)
        echo 5
        ;;
esac