# OpenAPI Documents

The documents in this folder represent the WaCoDiS
services using OpenAPI 3.0.

# Code Generation

The OpenAPI Generator Command Line tool is the most flexible solution
for generating source code based on the API documents.

https://github.com/OpenAPITools/openapi-generator

## Job Repository

### Spring Server

**Full Generation**:

```
openapi-generator-cli generate -g spring \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -i job-repository.yml \
    -o ./build/job-repository
```

**Models Only**:

```
openapi-generator-cli generate -g spring \
    -Dmodels \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -i job-repository.yml \
    -o ./build/job-repository
```

**APIs Only**:

```
openapi-generator-cli generate -g spring \
    -Dapis \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -i job-repository.yml \
    -o ./build/job-repository
```

**supportingFiles Only**:

```
openapi-generator-cli generate -g spring \
    -DsupportingFiles \
    --model-package=de.wacodis.api.model \
    --api-package=de.wacodis.jobrepository.controller \
    -i job-repository.yml \
    -o ./build/job-repository
```
