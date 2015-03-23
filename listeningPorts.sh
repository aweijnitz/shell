#!/bin/sh
netstat -a |grep LISTEN |grep -v unix
