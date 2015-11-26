#!/bin/sh

# example usage: 
# exec java $(java-dynamic-memory-opts 80) -jar myfatjar.jar

# JVM uses only 1/4 of system memory by default
DEFAULT_MEM_JAVA_PERCENT=80

if [ -n "$1" ]
  then
    MEM_JAVA_PERCENT=$1
  else
    MEM_JAVA_PERCENT=$DEFAULT_MEM_JAVA_PERCENT
fi

MEM_TOTAL_KB=$(cat /proc/meminfo | grep MemTotal | awk '{print $2}')
MEM_JAVA_KB=$(($MEM_TOTAL_KB * $MEM_JAVA_PERCENT / 100))

echo "-Xmx${MEM_JAVA_KB}k"