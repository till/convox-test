#! /bin/bash

mkdir -p ./foo
cd ./foo
for n in {1..1000000}; do
    dd if=/dev/urandom of=file$( printf %03d "$n" ).bin bs=1 count=$(( RANDOM + 1024 ))
done
