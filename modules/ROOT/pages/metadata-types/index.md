<div id="header">

# Metadata Types

</div>

<div id="content">

<div class="paragraph">

Metadata is one of the cornerstones in Hop and can be defined as workflows, pipelines and any other type of metadata objects.

</div>

<div class="paragraph">

Hop Gui has a Metadata Perspective to manage all types of metadata: run configurations, database (relational and NoSQL) connections, logging, and pipeline probes just to name a few.

</div>

<div class="paragraph">

Metadata is typically stored as json files in a projects' metadata folder as a set of json files, in subfolders per metadata type. The only exception to the rule are workflows and pipelines, which are defined as XML (for now, because of historical reasons). Since workflows and pipelines are what Hop is all about, these are typically stored in your project folder, not in your project’s metadata folder.

</div>

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>We’ve made it as easy as possible to add or remove plugins in Hop. Since metadata types are plugin types too, the available metadata types in your Hop installation may not match this list entirely.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

By default, Hop contains the following metadata types:

</div>

<div class="ulist">

  - [Asynchronous Web Service](hop-server/async-web-service.7tclnGDHm5): Execute and query a workflow asynchronously through a web service.

  - [Azure Blob Storage Authentication](metadata-types/azure-authentication.7tclnGDHm5): A Azure Blob Storage connection type.

  - [Beam File Definition](metadata-types/beam-file-definition.7tclnGDHm5): Describes a file layout in a Beam Pipeline

  - [Cassandra Connection](metadata-types/cassandra/cassandra-connection.7tclnGDHm5): Describes a connection to a Cassandra cluster

  - [Data Set](metadata-types/data-set.7tclnGDHm5): This defines a data set, a static pre-defined collection of rows

  - [Execution Data Profile](metadata-types/execution-data-profile.7tclnGDHm5): Collects and profiles data as it flows through a pipeline using configurable samplers for insight into value ranges, nulls, and row samples.

  - [Execution Information Location](metadata-types/execution-information-location.7tclnGDHm5): Defines where and how Apache Hop stores execution metadata, supporting local files, remote servers, Neo4j, or Elastic for later inspection and analysis.

  - [Google Storage Authentication](metadata-types/google-storage-authentication.7tclnGDHm5): A Google Cloud Storage connection type.

  - [Hop Server](metadata-types/hop-server.7tclnGDHm5): Defines a Hop Server

  - [MongoDB Connection](metadata-types/mongodb-connection.7tclnGDHm5): Describes a MongoDB connection

  - [Mail Server Connection](metadata-types/mail-server-connection.7tclnGDHm5): Describes a mail server connection

  - [Neo4j Connection](metadata-types/neo4j/neo4j-connection.7tclnGDHm5): A shared connection to a Neo4j server

  - [Neo4j Graph Model](metadata-types/neo4j/neo4j-graphmodel.7tclnGDHm5): Description of the nodes, relationships, indexes, …​ of a Neo4j graph

  - [Partition Schema](metadata-types/partition-schema.7tclnGDHm5): Describes a partition schema

  - [Pipeline Log](metadata-types/pipeline-log.7tclnGDHm5): Allows to log the activity of a pipeline with another pipeline

  - [Pipeline Probe](metadata-types/pipeline-probe.7tclnGDHm5): Allows to stream output rows of a pipeline to another pipeline

  - [Pipeline Run Configuration](metadata-types/pipeline-run-config.7tclnGDHm5): Describes how and with which engine a pipeline is to be executed

  - [Pipeline Unit Test](metadata-types/pipeline-unit-test.7tclnGDHm5): Describes a test for a pipeline with alternative data sets as input from a certain transform and testing output against golden data

  - [Relational Database Connection](metadata-types/rdbms-connection.7tclnGDHm5): Describes all the metadata needed to connect to a relational database

  - [REST Connection](metadata-types/rest-connection.7tclnGDHm5): Describes all the metadata needed to connect to a REST api.

  - [Splunk Connection](metadata-types/splunk-connection.7tclnGDHm5): Describes a Splunk connection

  - [Static Schema Definition](metadata-types/static-schema-definition.7tclnGDHm5): Defines a reusable data stream layout to ensure consistency across multiple pipelines and simplify schema management.

  - [Variable Resolver](metadata-types/variable-resolver/index.7tclnGDHm5): Use plugins to resolve variable values with a pipeline, a key store, a vaults, or secret managers.

  - [Web Service](hop-server/web-service.7tclnGDHm5): Allows to run a pipeline to generate output for a servlet on Hop Server

  - [Workflow Log](metadata-types/workflow-log.7tclnGDHm5): Allows to log the activity of a workflow with a pipeline

  - [Workflow Run Configuration](metadata-types/workflow-run-config.7tclnGDHm5): Describes how to run a workflow

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:12 +0200

</div>

</div>
