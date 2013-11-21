#!/bin/bash


function tif2png(){
    for f in `find . -name "*.tif"`
    do
        DST=`echo "$f" | sed "s/tif/png/"`
        convert $f $DST
    done
}

function collada(){
    for f in `find . -name "*.dae"`
    do
        cat $f |sed "s/.tif/.png/" > tmp.txt
        cat tmp.txt > $f
        rm tmp.txt
    done
}

collada
