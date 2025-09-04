<div id="header">

</div>

<div id="content">

<div class="sect1">

## Project Metadata

<div class="sectionbody">

<div class="paragraph">

A project’s metadata typically contains a number of database connections (relational or NoSQL), logging configurations and so on. This metadata is stored on a project level and is available through the metadata perspective.

</div>

<div class="paragraph">

The way metadata typically is handled is:

</div>

<div class="ulist">

  - metadata objects (connections, logging, …​) are defined on a project level. E.g. a `CRM` database connection is created in the project, using a number of variables for hostname (`${CRM_HOST}`) and database name (`${CRM_DBNAME}`), with corresponding variables for the port, username, password and so on.

  - the metadata object *configuration* is defined on an environment level, where a number of variable *values* are created the contain the ip address for `${CRM_HOST}` etc.

</div>

<div class="paragraph">

A project’s metadata is stored in `${PROJECT_HOME}/metadata`, but can be overruled by setting the project’s `metadata base folder ${HOP_METADATA_FOLDER}` property in the project configuration dialog or directly in the `project-config.json` file.

</div>

<div class="paragraph">

A basic project metadata folder will look similar to the one below:

</div>

<div class="listingblock">

<div class="content">

``` highlight
.
├── cassandra-connection
├── dataset
├── file-definition
├── git
├── mongodb-connection
├── neo4j-connection
├── neo4j-graph-model
├── partition
├── pipeline-log
├── pipeline-probe
├── pipeline-run-configuration
│   ├── local.json
│   └── Spark.json
├── rdbms
│   └── crm.json
├── schema-definition
├── server
├── splunk
├── unit-test
├── web-service
├── workflow-log
└── workflow-run-configuration
    └── local.json
18 directories, 4 files
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:30 +0200

</div>

</div>
