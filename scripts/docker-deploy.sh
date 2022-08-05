#!/bin/bash
########################
# Author := Noman Aziz #
########################

echo "Start of Script\n"

echo "Stopping Previous Container $1"

/usr/bin/docker stop $1

echo "Removing Previous Container $1"

/usr/bin/docker rm -f $1

echo "Removing Previous Image $2"

/usr/bin/docker rmi $2

echo "Fetching and Deploying New Image"

/usr/bin/docker run -d -p 4000:3000 --name $1 $2

echo "End of Script"