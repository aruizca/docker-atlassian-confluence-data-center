#!/bin/bash

for f in Dockerfile README.md run-synchrony-jar.sh.jinja2 docker-entrypoint.sh confluence-home-sync-server.py
do
  echo "Replacing version in $f"
  sed -i .bak 's/6\.5\.0/6.6.0/g' $f
  sed -i .bak 's/650/660/g' $f
done

rm -f *.bak
