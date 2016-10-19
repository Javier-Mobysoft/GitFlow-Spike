#!/bin/bash
version=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep  -v INFO`
incremental_version=`echo ${GO_PIPELINE_LABEL} | awk '{split($0,a,"."); print a[2]}'`
version=`echo $version | sed "s/\([0-9][0-9]*-SNAPSHOT\)/${incremental_version}${BRANCH_ENV}/g"`
mvn versions:set -DnewVersion=$version