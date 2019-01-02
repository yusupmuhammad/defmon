#!/bin/bash
while read -r url filename tail; do
  curl --insecure --connect-timeout 5 -o "baseline/$filename" "$url"
  #cat "baseline/$filename" | md5sum > "baseline/$filename"
done < sum.list

