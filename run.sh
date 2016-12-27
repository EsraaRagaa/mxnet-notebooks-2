#!/bin/bash
docker rm -f mxnet-notebook
docker run --name="mxnet-notebook" \
	-p 8888:8888 \
	-v ${PWD}/notebooks:/root/notebooks \
	-d mxnet-notebook
