#!/bin/bash
rm -rf ./build
export OPENAPI_GENERATOR_VERSION=3.3.4

lib/openapi-generator-cli.sh generate -g spring \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobdefinition.controller \
    -DserializableModel=true \
    -DdateLibrary=joda \
    -i ./definitions/job-definition-api.yml \
    -o ./build/job-definition-api

lib/google-format-java-cli.sh --aosp --replace ./build/job-definition-api/src/main/java/de/wacodis/api/model/* ./build/job-definition-api/src/main/java/de/wacodis/jobdefinition/controller/*

