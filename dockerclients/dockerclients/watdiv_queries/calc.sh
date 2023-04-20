#!/bin/bash

sub=$1

count=0
n=0
for d in */ ; do
  dd=${d}${sub}
  for f in $dd/* ; do
    num=$(wc -l < $f)
    count=$((${count}+${num}))
    n=$((n+1))
  done
done

echo $((count / n))
