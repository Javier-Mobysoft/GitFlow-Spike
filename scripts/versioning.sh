#!/bin/bash
incremental_version=`echo ${GO_PIPELINE_LABEL} | awk '{split($0,a,"."); print a[2]}'`
mvn versions:set -DnewVersion=${BRANCH_ENV}-${incremental_version}