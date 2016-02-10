#!/bin/bash
# backup build folder
# build new folder
# compile JSON data into ssp.json
# compile metadata into .htm files
# compile all .html file into one doc_ssp.html
#
echo "======" >> UPDATES
echo "============= `date` ===============" >> UPDATES
zip -r build.zip build/docs &&
./BuildJSON.sh &&
python setup.py build 2>&1 >> UPDATES &&
./BuildMetadata.sh &&
./BuildPages.sh 
