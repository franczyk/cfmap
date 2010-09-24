#!/bin/bash


cd `dirname $0`
BASE=`pwd`

if [ -d $BASE/cassandra_data ]
then
    $BASE/tomcat-live/bin/shutdown.sh > /dev/null 2> /dev/null
    user=`whoami`
    pgrep -u $user -f cassandra | xargs kill -9 2> /dev/null > /dev/null
fi

