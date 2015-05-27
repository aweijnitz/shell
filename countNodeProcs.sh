#!/bin/bash
COUNT=`ps auxwww | grep '^aw .*node.*[a-zA-Z]\.js' | wc -l`
echo $COUNT
