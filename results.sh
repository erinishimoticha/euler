#!/bin/bash

echo "Euler Problems" > README.md
echo "=====" >> README.md
for lang in */
do
    echo "# $lang" >> README.md
    cd $lang
    for f in *.*
    do
        echo "## $lang$f" >> ../README.md
        begin=$(($(date +%s%N)/1000000))
        ./$f
        end=$(($(date +%s%N)/1000000))
        time=$((end - begin))
        echo "$time ms" >> ../README.md
        echo "" >> ../README.md
    done
    cd ..
done
