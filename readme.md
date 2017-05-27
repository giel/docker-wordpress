# Instructions

This page describes how to install wordpress with docker on a Mac. After these instruction you have a locally running wordpress installation on your Mac which does not need an internet connection. It is ideal to play with a WordPress site without actually deploying on the world wide web! You can use the export / import functions from WordPress to transfer a WordPress site. 

## Installation
Install docker [(for mac)](https://docs.docker.com/docker-for-mac/install/). And make sure it is running.

Create a special docker data dir to store persistant data from docker containers (in the Terminal):

    mkdir -p ~/doc/docker

same for wordpress

    mkdir -p ~/doc/docker/wordpress

Copy the 5 WordPress shell scripts to a folder. All 5 files must be in the same folder. I assume you put the script in the users bin folder:

    ~/bin/ 

Make the scripts executable:

    chmod +x ~/bin/WordPressCreate.sh
    chmod +x ~/bin/WordPressClean.sh
    chmod +x ~/bin/WordPressStart.sh
    chmod +x ~/bin/WordPressStop.sh

Fill out the directories choosen to use in the `WordPressAllInclude.sh` file and save the file. The instruction in the file should be clear.

Finally you can create the docker containers. This will download the latest images and create containers. Use the `WordPressCreate.sh` script:

    ~/bin/WordPressCreate.sh

## Access WordPress

- normal site: [http://127.0.0.1/](http://127.0.0.1/) 
- login page: [http://127.0.0.1/wp-login.php](http://127.0.0.1/wp-login.php) 
- install page: [http://127.0.0.1/wp-admin/install.php](http://127.0.0.1/wp-admin/install.php)

Please remember the user name and password of the admin user you are prompted for the first time you run. 

## Start and stop

    ~/bin/WordPressStart.sh
    ~/bin/WordPressStop.sh

## Cleanup

The cleanup batchfile will remove ALL installed and entered data. But you can choose to clean less. The script contains suggestions for data to keep.

    ~/bin/WordPressClean.sh

# Useful docker commands

    docker images   # shows dowloaded images
    docker ps -a    # shows all containers   
    docker start <container name>
    docker stop <container name>
    docker rm <container name>
    docker image rm <image name>

    docker --help
    docker <command> --help

# Links

- [Upcloud: docker with wordpress](https://www.upcloud.com/support/wordpress-with-docker/)
- [General Docker installation documentation](https://docs.docker.com/engine/installation/)
- [Docker for Mac installation documentation](https://docs.docker.com/docker-for-mac/install/)