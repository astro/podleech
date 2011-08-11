#!/bin/sh

url="$1"

if [ "$url" = "" ]; then
    echo "Usage: $0 <feed url>"
    exit 1
fi

curl -s "${url}" | xsltproc $(dirname $0)/enclosures-to-script.xsl - | sh -x
