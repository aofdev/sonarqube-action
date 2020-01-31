#!/bin/bash

sonar-scanner \
-Dsonar.host.url="$INPUT_HOST" \
-Dsonar.login="$INPUT_TOKEN" \
-Dsonar.projectKey=$INPUT_PROJECTKEY \
-Dsonar.projectBaseDir="$INPUT_PROJECTBASEDIRECTORY" \
-Dsonar.projectName="$INPUT_PROJECTNAME" \
-Dsonar.sources="$INPUT_SOURCES" \
-Dsonar.exclusions="$INPUT_EXCLUSIONS" \
-Dsonar.inclusions="$INPUT_INCLUSIONS" \
-Dsonar.scm.provider=git \