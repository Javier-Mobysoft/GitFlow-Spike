#!/bin/bash

mvn deploy:deploy-file -Dfile=target/demo.war -DrepositoryId=releaseRepo -Durl=http://192.168.33.100:8081/nexus/content/repositories/releases  -DgroupId=com.gitflow.spike -DartifactId=demo -Dversion=${GO_PIPELINE_COUNTER}
