#!/usr/bin/env bash
#
# Start wordpress/mysql containers for running wordpress
#

My_ScriptsDir=$(dirname $0)
source $My_ScriptsDir/WordPressAllInclude.sh

docker start $dckwpMariaDb
docker start $dckwp
docker ps

echo normale site: http://$wpserverip/
echo login page:   http://$wpserverip/wp-login.php
echo install page: http://$wpserverip/wp-admin/install.php


popd