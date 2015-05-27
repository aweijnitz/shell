#!/bin/sh
netstat -ap |grep LISTEN |grep -v unix
