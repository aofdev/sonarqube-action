#!/bin/bash
echo $INPUT_TOKEN
echo $INPUT_HOST
echo $INPUT_SOURCES

sonar-scanner \
-Dsonar.host.url="$INPUT_HOST" \
-Dsonar.login="$INPUT_TOKEN" \
-Dsonar.sources="$INPUT_SOURCES" \
-Dsonar.projectKey="$INPUT_APP" \
-Dsonar.projectName="$INPUT_PROJECTNAME" \
-Dsonar.exclusions="$INPUT_EXCLUSIONS" \
# -Dsonar.inclusions="$INPUT_INCLUSIONS" \
-Dsonar.scm.provider=git \
-Dsonar.sourceEncoding=UTF-8 \
