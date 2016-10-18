#!/bin/bash
export VERSION=`echo ${GO_PIPELINE_LABEL} | awk '{split($0,a,"."); print a[2
]}'`
mvn deploy:deploy-file -Dfile=demo.war -DrepositoryId=releaseRepo -Durl=http://192.168.33.100:8081/nexus/content/repositories/releases  -DgroupId=com.gitflow.spike -DartifactId=demo -Dversion=${VERSION}
