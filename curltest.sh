#!/bin/bash

function usage() {
echo "Usage:  $0 host count size port"
}

if [ $# -ne 4 ]; then
usage;
exit;
fi

host=$1
count=$2
size=$3
port=$4

let i=$count-1
while [ $i -ge 0 ];
  do
    curl -w "$i: %{time_total} %{http_code} %{size_download} %{url_effective}\n" -o "/dev/null" -s http://${host}:${port}/${size}_test.html
    let i=i-1
    ./usleep 1000
done

