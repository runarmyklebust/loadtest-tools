#/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <url-file> <number of threads>"
    exit 0;
fi

jmeter -n -t url-runner-noGUI.jmx\
 -Jnumber-of-threads=$2\
 -Jthread-loop-count=2\
 -Jurl-file=./$1\
 -Jurl-loop-count=100\
 -Jsummary-file-name=./results/$1/summary.txt\
 -Jresult-file=./results/$1/results.xml\
 -Jerror-file=./results/$1/errors.jtl\
 --logfile loadrunner_$1.jtl\
 -p jmeter-commandline.properties

