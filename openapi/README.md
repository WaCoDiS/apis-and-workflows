# OpenAPI Documents

The documents in this folder represent the WaCoDiS
services using OpenAPI 3.0.

# Code Generation

The OpenAPI Generator Command Line tool is the most flexible solution
for generating source code based on the API documents.

https://github.com/OpenAPITools/openapi-generator

## Job Repository

### Spring Server

For convenience, a one-command script is available. It generates models, APIs and
supporting files and applies additional code formatting (in the style of AOSP):

`/bin/bash generate-job-repository.sh`

**Custom Generation**

Models Only:

```
openapi-generator-cli generate -g spring \
    -Dmodels \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -DdateLibrary=java8-localdatetime \
    -i job-repository.yml \
    -o ./build/job-repository
```

APIs Only

```
openapi-generator-cli generate -g spring \
    -Dapis \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -DdateLibrary=java8-localdatetime \
    -i job-repository.yml \
    -o ./build/job-repository
```

supportingFiles Only

```
openapi-generator-cli generate -g spring \
    -DsupportingFiles \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -DdateLibrary=java8-localdatetime \
    -i job-repository.yml \
    -o ./build/job-repository
```
