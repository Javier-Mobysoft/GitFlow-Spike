#!/bin/bash

export version=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep  -v INFO`
sed "s/0-SNAPSHOTS/${GO_PIPELINE_COUNTER}_${BRANCH_ENV}$-SNAPSHOTS/g" <<< $version
mvn versions:set -DnewVersion=${BRANCH_ENV}${GO_PIPELINE_COUNTER}


