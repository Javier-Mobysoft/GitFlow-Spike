#!/bin/bash
version=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep  -v INFO`
echo $version
version=`echo $version | sed "s/\([0-9][0-9]*-SNAPSHOTS\)/${GO_PIPELINE_COUNTER}_${BRANCH_ENV}-SNAPSHOTS/g"`
echo $version
mvn versions:set -DnewVersion=$version