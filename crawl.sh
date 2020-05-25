#!/bin/bash

folder=(en-stable en-dev en-v2.1 en-v3.1 en-v3.0 en-v1.0)

for v in "${folder[@]}"
do
  echo "$v"
  docker run --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/$v/$v.json | jq -r tostring)" algolia/docsearch-scraper &
done