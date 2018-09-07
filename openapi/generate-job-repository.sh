#!/bin/bash
rm -rf ./build

lib/openapi-generator-cli.sh generate -g spring \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -DdateLibrary=joda \
    -i job-repository.yml \
    -o ./build/job-repository

lib/google-format-java-cli.sh --aosp --replace ./build/job-repository/src/main/java/de/wacodis/api/model/* ./build/job-repository/src/main/java/de/wacodis/jobrepository/controller/*

