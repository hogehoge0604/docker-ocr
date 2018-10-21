#!/bin/bash

cmd=`basename $0`
if [ $# -ne 2 ]; then
     echo "Usage: $cmd ocr_from_pdf_filename ocr_to_filename"
     exit 1
fi

label="test/ocr"
created=`docker images | grep $label`
filename_from=$1
filename_to=$2

if [ -z "$created" ]; then
    docker build -t $label .
fi

id=`docker run -it -d $label bash`

docker cp file/$filename_from $id:/root/$filename_from
docker exec $id root/ocr.sh $filename_from $filename_to
docker cp $id:/root/$filename_to file/$filename_to

docker rm -f $id
