#!/usr/bin/env bash
#
# Start wordpress/mysql containers for running wordpress
#

My_ScriptsDir=$(dirname $0)
source $My_ScriptsDir/WordPressAllInclude.sh

docker ps
docker stop $dckwp
docker stop $dckwpMariaDb
docker ps

popd