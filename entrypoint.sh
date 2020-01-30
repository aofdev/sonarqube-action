#!/bin/bash

sonar-scanner \
-Dsonar.login="$INPUT_TOKEN" \
-Dsonar.host.url="$INPUT_URL" \
-Dsonar.sources="$INPUT_SOURCES" \
-Dsonar.projectKey="$INPUT_APP" \
-Dsonar.projectName="$INPUT_PROJECTNAME" \
-Dsonar.inclusions="$INPUT_INCLUSIONS" \
-Dsonar.exclusions="$INPUT_EXCLUSIONS" \
-Dsonar.scm.provider=git \
-Dsonar.sourceEncoding=UTF-8 \
