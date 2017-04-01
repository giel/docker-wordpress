# Standard include script for all WordPress(script) files
#
# Choose the directory where the database and website will be generated, it must exist!
pushd ~/doc/docker/wordpress

# The next 2 directories will be created in directory choosen above.
databaseDir=database
htmlDir=html

# wordpress database in mariaDB
wpdb=wordpressDB
wpdbpwd=PwdMdDb12

# mariaDB container name
dckwpMariaDb=wordpressdb
# wordpress container name
dckwp=wordpress

# access site via localhost
wpserverip=127.0.0.1 
