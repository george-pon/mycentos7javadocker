#!/bin/bash
#
# test run image
#
function docker-run-mycentos7javadocker() {
    docker pull georgesan/mycentos7javadocker:latest
    ${WINPTY_CMD} docker run -i -t --rm \
        -e http_proxy=${http_proxy} -e https_proxy=${https_proxy} -e no_proxy="${no_proxy}" \
        georgesan/mycentos7javadocker:latest
}
docker-run-mycentos7javadocker
