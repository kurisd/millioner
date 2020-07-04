#!/bin/bash
j=155
while [];
j=$[j+1]
do
heif-convert IMG_7${j}.HEIC IMG_7${j}.jpg
done
