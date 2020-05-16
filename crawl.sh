#!/bin/bash

folder=(cn-stable cn-dev cn-v2.1 cn-v3.1 cn-v3.0 cn-v1.0)

for v in "${folder[@]}"
do
  echo "$v"
  docker run --env-file=.env -e "CONFIG=$(cat /Users/yinixu/pingcap/docsearch-configs/$v/$v.json | jq -r tostring)" algolia/docsearch-scraper &
done