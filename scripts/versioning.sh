#!/bin/bash
version=`mvn org.apache.maven.plugins:maven-help-plugin:2.1.1:evaluate -Dexpression=project.version | grep  -v INFO`
incremental_version=`echo ${GO_PIPELINE_LABEL} | awk '{split($0,a,"."); print a[2]}'`
version=`echo $version | sed "s/-SNAPSHOT/${BRANCH_ENV}-SNAPSHOT/g"`
mvn versions:set -DnewVersion=$version