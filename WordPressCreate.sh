#!/usr/bin/env bash
#
# Create wordpress/mysql containers for running wordpress
#

My_ScriptsDir=$(dirname $0)
source $My_ScriptsDir/WordPressAllInclude.sh

# Start with mariadb
# pulling and running the container
docker run -e MYSQL_ROOT_PASSWORD=$wpdbpwd \
   -e MYSQL_DATABASE=$wpdb \
   --name $dckwpMariaDb \
   -v "$PWD/$databaseDir":/var/lib/mysql \
   -d \
   mariadb:latest

# Next wordpress
docker pull wordpress
docker run -e WORDPRESS_DB_PASSWORD=$wpdbpwd \
   --name $dckwp --link $dckwpMariaDb:mysql \
   -p $wpserverip:80:80 \
   -v "$PWD/$htmlDir":/var/www/html \
   -d \
   wordpress

# check if both containers are running
docker ps

echo normale site: http://$wpserverip/
echo login page:   http://$wpserverip/wp-login.php
echo install page: http://$wpserverip/wp-admin/install.php

popd