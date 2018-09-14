# OpenAPI Documents

The documents in this folder represent the WaCoDiS
services using OpenAPI 3.0.

# Code Generation

The OpenAPI Generator Command Line tool is the most flexible solution
for generating source code based on the API documents.

https://github.com/OpenAPITools/openapi-generator

## Job Definition API

### Java / Spring

For convenience, a one-command script is available. It generates models, APIs and
supporting files and applies additional code formatting (in the style of AOSP):

`/bin/bash generate-job-definition.sh`

**Custom Generation**

Models Only:

```
lib/openapi-generator-cli.sh generate -g spring \
    -Dmodels \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobdefinition.controller \
    -DdateLibrary=joda \
    -i job-definition-api.yml \
    -o ./build/job-definition-api
```

APIs Only:

```
lib/openapi-generator-cli.sh generate -g spring \
    -Dapis \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobdefinition.controller \
    -DdateLibrary=joda \
    -i job-definition-api.yml \
    -o ./build/job-definition-api
```

supportingFiles Only:

```
lib/openapi-generator-cli.sh generate -g spring \
    -DsupportingFiles \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobdefinition.controller \
    -DdateLibrary=joda \
    -i job-definition-api.yml \
    -o ./build/job-definition-api
```

## Data Access API

### Java / Spring

For convenience, a one-command script is available. It generates models, APIs and
supporting files and applies additional code formatting (in the style of AOSP):

`/bin/bash generate-data-access.sh`

**Custom Generation**

Models Only:

```
lib/openapi-generator-cli.sh generate -g spring \
    -Dmodels \
    --model-package=de.wacodis.dataaccess.model \
    --api-package=de.wacodis.dataaccess.controller \
    -DdateLibrary=joda \
    -i data-access.yml \
    -o ./build/data-access
```

APIs Only:

```
lib/openapi-generator-cli.sh generate -g spring \
    -Dapis \
    --model-package=de.wacodis.dataaccess.model \
    --api-package=de.wacodis.dataaccess.controller \
    -DdateLibrary=joda \
    -i data-access.yml \
    -o ./build/data-access
```

supportingFiles Only:

```
lib/openapi-generator-cli.sh generate -g spring \
    -DsupportingFiles \
    --model-package=de.wacodis.dataaccess.model \
    --api-package=de.wacodis.dataaccess.controller \
    -DdateLibrary=joda \
    -i data-access.yml \
    -o ./build/data-access
```
