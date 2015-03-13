#!/bin/bash
for line in $(ls val/rel); do

    name=$( echo $line | cut -d"." -f1 )

    echo "trec_eval $name: "

    ./libsvm/trec_eval -q -m map val/rel/$name.rel val/top/color_$name.top

    echo ""

done