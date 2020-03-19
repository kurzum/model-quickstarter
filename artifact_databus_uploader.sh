#!/bin/bash

# $1 ignore.list directory or None
# $2 Working directory
# $3 Locale (en_US)
# $4 Stopwords file
# $5 Analyzer+Stemmer language prefix e.g. Dutch
# $6 Model target folder
# $7 databus folder
# $8 artifact version

set -e

usage ()
{
  echo "artifact_databus_uploader.sh"
  echo "usage: ./artifact_databus_uploader_db.sh nl/ignore.list wdir nl_NL nl/stopwords.nl.list Dutch models/nl spotlight/ 2020.03.11"
  echo "Create and upload a databus artifact of a DBpedia spotlihgt model and their stats for a specified language."
  echo " "
}
echo $7

if [[ ! -d "$7" ]]; then
    echo "artifact folder does not exist"
fi

if [[ ! -d "$7/spotlight-model/$8" ]] ; then
	echo "creating model version folder"
	mkdir $7/spotlight-model/$8
fi

if [[ ! -d "$7/spotlight-wikistats/$8" ]] ; then
	echo "creating wikistats version folder"
	mkdir $7/spotlight-wikistats/$8
fi

BASE_DIR=$(pwd)

BASE_ARTIFACTDIR=$BASE_DIR/$7

echo $BASE_ARTIFACTDIR
cd $BASE_ARTIFACTDIR

mvn deploy -T 10 -DignoreList=$1 -Dwdir=$2 -Dlocale=$3 -Dstopwords=$4 -Dstemmer=$5 -DmodelFolder=$6 -DartifactDir=$7 -DartifactVer=$8

##Cleaning version folders
#for i in `find $BASE_DATABUSDIR -name "*bz2" -o -name "*gz"` 
#do
#   rm $i
#done 


