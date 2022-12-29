#!/usr/bin/env bash

read -p "Enter Group Id : " groupId
read -p "Enter Artifact Id : " artifactId
mvn archetype:generate -DgroupId="$groupId"\
                       -DartifactId="$artifactId"\
                       -DarchetypeArtifactId=maven-archetype-quickstart \
                       -DarchetypeVersion=1.4 \
                       -DinteractiveMode=false





