#!/bin/bash
#
# test run image
#
function docker-run-mycentos7javadocker() {
    ${WINPTY_CMD} docker run -i -t --rm \
        -e http_proxy=${http_proxy} -e https_proxy=${https_proxy} -e no_proxy="${no_proxy}" \
        mycentos7javadocker:latest
}
docker-run-mycentos7javadocker
