#!/bin/bash
rm -rf ./build

lib/openapi-generator-cli.sh generate -g spring \
    --model-package=de.wacodis.dataaccess.model \
    --api-package=de.wacodis.dataaccess.controller \
    -DdateLibrary=joda \
    -i data-access-api.yml \
    -o ./build/data-access-api

lib/google-format-java-cli.sh --aosp --replace ./build/data-access/src/main/java/de/wacodis/dataaccess/model/* ./build/data-access/src/main/java/de/wacodis/dataaccess/controller/*

