#!/bin/bash

sonar-scanner \
-Dsonar.host.url="$INPUT_HOST" \
-Dsonar.login="$INPUT_TOKEN" \
-Dsonar.projectKey=${PWD##*/} \
-Dsonar.projectBaseDir="$INPUT_PROJECTBASEDIRECTORY" \
-Dsonar.projectName="$INPUT_PROJECTNAME" \
-Dsonar.sources="$INPUT_SOURCES" \
-Dsonar.scm.provider=git \
# -Dsonar.exclusions="$INPUT_EXCLUSIONS" \