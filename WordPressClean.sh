#!/usr/bin/env bash
#
# Removes ALL data, docker containers and images!
# Use with care, and comment lines if you want (see suggestion).

My_ScriptsDir=$(dirname $0)
source $My_ScriptsDir/WordPressAllInclude.sh

# shows all containers   
docker ps -a    
# remove old containers
docker rm $dckwp
docker rm $dckwpMariaDb

# show images
docker images
# remove images (suggestion: comment out to avoid download traffic)
docker image rm mariadb
docker image rm wordpress

# remove the data direcories (suggestion: comment out to avoid data loss)
rm -r $PWD/$databaseDir
rm -r $PWD/$htmlDir

popd