#!/bin/bash

docker build -t qooba/quantumai:openfermion_dev -f Dockerfile.dev .
docker build -t qooba/quantumai:openfermion .
