#!/bin/sh
docker build -t questionbot .
docker run -d questionbot sh ./run_test.sh
