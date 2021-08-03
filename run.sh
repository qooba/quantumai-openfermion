#!/bin/bash

docker run -it -p 8888:8888 -v $(pwd)/notebooks:/home/jovyan qooba/quantumai:openfermion start.sh jupyter lab

