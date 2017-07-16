#!/bin/bash

docker run --rm -it \
-v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK  \
-v ${PWD}:/release \
3mdeb/solidpc /bin/bash -c "/release/build-img.sh"
