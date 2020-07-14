#!/bin/bash

SCRAPE_DIR=./scrapes/

for i in "$SCRAPE_DIR/*"; do
    echo $i
    cat $i | jq -r '.[]'
done
