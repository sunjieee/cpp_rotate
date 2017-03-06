#!/bin/bash

g++ -std=c++11 rotate.cpp  -o rotate `pkg-config --libs --cflags opencv`

image_path="/home/sunjieeee/matchnet/data/phototour/liberty/"
output_path="/home/sunjieeee/matchnet/data/phototour/outfile/"

images=`ls ${image_path} | grep .bmp`
for i in ${images}; do
	./rotate ${image_path}${i} ${output_path}${i}
done

