#!/bin/bash

set -e
HERE="`pwd`"

rm -rfv assets vendor
cd ../bms/
rm -rfv dist
BUILD=1 ./node_modules/.bin/gulp
cp -rv dist/* "$HERE"
cp collections.yml "$HERE"


