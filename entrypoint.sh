#!/bin/bash
echo $INPUT_TOKEN
echo $INPUT_HOST
echo $INPUT_SOURCES
echo ${PWD##*/}
echo $INPUT_PROJECTBASEDIRECTORY
echo $INPUT_PROJECTNAME

sonar-scanner \
-Dsonar.host.url="$INPUT_HOST" \
-Dsonar.login="$INPUT_TOKEN" \
-Dsonar.projectKey=${PWD##*/} \
-Dsonar.projectBaseDir="$INPUT_PROJECTBASEDIRECTORY" \
-Dsonar.projectName="$INPUT_PROJECTNAME" \
-Dsonar.sources="$INPUT_SOURCES" \
# -Dsonar.exclusions="$INPUT_EXCLUSIONS" \
# -Dsonar.inclusions="$INPUT_INCLUSIONS" \
-Dsonar.scm.provider=git