#!/bin/bash

#If this container is run as a user, then home will be set to "/".
#  Set the home directory env variable to the home directory created in the Dockerfile.
if [ "${HOME}" = "/" ]; then
    export HOME="$USER_HOME"
fi

#Set the container id of this container.
#  Often the short version of this is set in HOSTNAME,
#  but when using "--network host", HOSTNAME is set to the hostname of the host,
#  so something else is needed.
export CONTAINER_ID=$(basename $(cat /proc/1/cpuset))

echo "Running..."
exec "${@}"
echo "...done"
