#!/bin/bash
rm -rf ./build

lib/openapi-generator-cli.sh generate -g spring \
    -Dmodels \
    --model-package=de.wacodis.model \
    -DserializableModel=true \
    -DdateLibrary=joda \
    -i ./definitions/wacodis-schemas.yml \
    -o ./build/wacodis-schemas

lib/google-format-java-cli.sh --aosp --replace ./build/wacodis-schemas/src/main/java/de/wacodis/model/*

