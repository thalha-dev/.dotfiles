#!/usr/bin/env bash


if [ $# == 2 ]
then
    echo "groupId: $1"
    echo "artifactId: $2"
    mvn archetype:generate -DgroupId=$1\
                           -DartifactId=$2 \
                           -DarchetypeArtifactId=maven-archetype-quickstart \
                           -DarchetypeVersion=1.4 \
                           -DinteractiveMode=false
else
    echo "provide groupId and artifactId"
fi





