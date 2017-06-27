#! /bin/bash

docker run -v $(pwd):/source -p 9001:9001 bootstrap bundle exec jekyll serve --host 0.0.0.0
