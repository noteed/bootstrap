#! /bin/bash

docker run -v $(pwd):/source bootstrap npm install
docker run -v $(pwd):/source bootstrap bundle install
