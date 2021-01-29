# WaCoDiS APIs and Workflows
![Java CI](https://github.com/WaCoDiS/metadata-connector/workflows/Java%20CI/badge.svg)
  
The WaCoDiS APIs and Workflows repository contains schema definitions of the common WaCoDiS data model and diagrams that depicture the architecture and workflow of the WaCoDiS system.

**Table of Content**  
1. [WaCoDiS Project Information](#wacodis-project-information)
2. [Overview](#overview) 
3. [Installation / Building Information](#installation--building-information)
4. [Developer Information](#developer-information)
5. [Contact](#contact)
6. [Credits and Contributing Organizations](#credits-and-contributing-organizations)

## WaCoDiS Project Information
<p align="center">
  <img src="https://raw.githubusercontent.com/WaCoDiS/apis-and-workflows/master/misc/logos/wacodis.png" width="200">
</p>
Climate changes and the ongoing intensification of agriculture effect in increased material inputs in watercourses and dams.
Thus, water industry associations, suppliers and municipalities face new challenges. To ensure an efficient and environmentally
friendly water supply for the future, adjustments on changing conditions are necessary. Hence, the research project WaCoDiS
aims to geo-locate and quantify material outputs from agricultural areas and to optimize models for sediment and material
inputs (nutrient contamination) into watercourses and dams. Therefore, approaches for combining heterogeneous data sources,
existing interoperable web based information systems and innovative domain oriented models will be explored.

### Architecture Overview

For a detailed overview about the WaCoDiS system architecture please visit the 
**[WaCoDiS Core Engine](https://github.com/WaCoDiS/core-engine)** repository.

## Overview  

This repository hosts the definitions for APIs, data models and business workflows for the WaCoDiS system architecture.

### Technologies
* __OpenAPI__  
[OpenAPI](https://github.com/OAI/OpenAPI-Specification) is used for the specification of data models used within this project.

### Data models

All APIs and data models are defined using OpenAPI 2.0 (aka Swagger).
File contents can be used to generate service or client stubs or pasted
into the Swagger Editor (http://editor.swagger.io/).

The OpenAPI subfolder contains OpenAPI definitions for the common core data model of WaCoDiS and the REST interfaces of WaCoDiS Data Access API and WaCoDiS Job Definition API. 
* The core data types shared across all WaCoDiS components are defined in the [*wacodis-schemas* file](https://github.com/WaCoDiS/apis-and-workflows/blob/master/openapi/src/main/definitions/wacodis-schemas.yml).
* The [*data-access-api* file](https://github.com/WaCoDiS/apis-and-workflows/blob/master/openapi/src/main/definitions/data-access-api.yml) contains the definition of the REST API of [WaCoDiS Data Access API](https://github.com/WaCoDiS/data-access-api).
* The [*job-definition-api* file](https://github.com/WaCoDiS/apis-and-workflows/blob/master/openapi/src/main/definitions/job-definition-api.yml) contains the definition of the REST API of [WaCoDiS Job Management API](https://github.com/WaCoDiS/job-definition-api).

## Sequence diagrams

Sequence diagrams are created with https://www.websequencediagrams.com/.
File contents can be pasted into the application to generate visualizations.

## Component diagrams

Component diagrams are created with https://www.draw.io/.
Files can be loaded into the application to generate visualizations.

## Installation / Building Information
### Generate source code from OpenAPI definitions
[See the specific documentation ](https://github.com/WaCoDiS/apis-and-workflows/blob/master/openapi/README.md) for further information on how to generate source code from OpenAPI defintions usig [OpenAPI generator](https://github.com/OpenAPITools/openapi-generator).

The WaCoDiS components already contain generated java classes for WaCoDiS schemas but also have a maven plugin for generating java classes for WaCoDiS schemas configured. The classes can be generated again by using the specified maven profile `mvn clean install -p download-generate-models`.  
Be aware that the generated files must be edited manually in order to ensure that a specific WaCoDiS component works correctly. Consult the documentation of the specific components for further information. 

## Developer Information
### How to contribute
Since the WaCoDiS schema is the common WaCoDiS data model shared across all system components it is important to consider backwards compatibility when updating the schema. The REST APIs of WaCoDiS Job Definition API and WaCoDiS Data Access API are used by different components of the WaCoDiS system. So it is important to avoid breaking changes here as well. 

### Branching
The master branch provides sources for stable builds. The develop branch represents the latest (maybe unstable)
state of development.

### License and Third Party Lib POM Plugins
TODO

## Contact
|    Name   |   Organization    |    Mail    |
| :-------------: |:-------------:| :-----:|
| Sebastian Drost | Bochum University of Applied Sciences | sebastian.drost@hs-bochum.de |
| Arne Vogt | Bochum University of Applied Sciences | arne.vogt@hs-bochum.de |
| Andreas Wytzisk  | Bochum University of Applied Sciences | andreas.wytzisk@hs-bochum.de |
| Matthes Rieke | 52° North GmbH | m.rieke@52north.org |

## Credits and Contributing Organizations
- Department of Geodesy, Bochum University of Applied Sciences, Bochum
- 52° North Initiative for Geospatial Open Source Software GmbH, Münster
- Wupperverband, Wuppertal
- EFTAS Fernerkundung Technologietransfer GmbH, Münster

The research project WaCoDiS is funded by the BMVI as part of the [mFund programme](https://www.bmvi.de/DE/Themen/Digitales/mFund/Ueberblick/ueberblick.html)  
<p align="center">
  <img src="https://raw.githubusercontent.com/WaCoDiS/apis-and-workflows/master/misc/logos/mfund.jpg" height="100">
  <img src="https://raw.githubusercontent.com/WaCoDiS/apis-and-workflows/master/misc/logos/bmvi.jpg" height="100">
</p>

