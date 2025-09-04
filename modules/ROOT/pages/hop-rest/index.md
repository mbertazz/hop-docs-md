<div id="header">

# Hop REST Web Application

<div id="toc" class="toc">

<div id="toctitle">

Table of Contents

</div>

  - [Description](#_description)
  - [The base URL](#_the_base_url)
  - [Configuration](#_configuration)
  - [Metadata services](#_metadata_services)
      - [List the metadata type keys](#_list_the_metadata_type_keys)
      - [List the metadata elements for a key](#_list_the_metadata_elements_for_a_key)
      - [Get a metadata element](#_get_a_metadata_element)
      - [Save a metadata element](#_save_a_metadata_element)
      - [Delete a metadata element](#_delete_a_metadata_element)
  - [Plugins services](#_plugins_services)
      - [List all the plugin type classes](#_list_all_the_plugin_type_classes)
      - [List all the plugins for a given type class](#_list_all_the_plugins_for_a_given_type_class)
  - [Execution services](#_execution_services)
      - [Execute a pipeline synchronously](#_execute_a_pipeline_synchronously)
  - [Execution Information Location services](#_execution_information_location_services)
      - [Get execution IDs](#_get_execution_ids)
      - [Get execution](#_get_execution)
      - [Get execution state](#_get_execution_state)

</div>

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The Hop REST web application is deployed as a WAR file `hop-rest-<version>.war`. You can put this archive in the `webapps` folder of your favorite server (e.g. Apache Tomcat). We suggest that you rename it to `hop.war` or that you unzip it in a `hop` folder.

</div>

</div>

</div>

<div class="sect1">

## The base URL

<div class="sectionbody">

<div class="paragraph">

When deployed under a `webapps/hop` folder you will get the services, detailed below, under the base URL of `/hop/api/v1/`.

</div>

</div>

</div>

<div class="sect1">

## Configuration

<div class="sectionbody">

<div class="paragraph">

When the web application starts it will look for an environment variable called `HOP_REST_CONFIG_FOLDER` to determine where it will look for a file called `hop-rest.properties`. This file can contain the following properties to determine the configuration of the application:

</div>

| Property             | Description                                                                                                                                                                                                                |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `logLevel`           | The logging level to use, one of `NOTHING`, `ERROR`, `MINIMAL`, `BASIC`, `DETAILED`, `DEBUG`, or `ROWLEVEL`.                                                                                                               |
| `metadataExportFile` | The metadata to use for the web application in the form of a single JSON 'export' file. Use the GUI tools menu or `sh hop-conf.sh --export-metadata` to export metadata to a single file.                                  |
| `environmentName`    | In case the `projects` plugin is available it will enable this environment and the underlying project (to be configured on the system, point to a configuration with `HOP_CONFIG_FOLDER`) before starting the application. |
| `projectName`        | In case the `projects` plugin is available it will enable this project (to be configured on the system, point to a configuration with `HOP_CONFIG_FOLDER`) before starting the application.                                |

</div>

</div>

<div class="sect1">

## Metadata services

<div class="sectionbody">

<div class="paragraph">

The metadata services are deployed under sub-path `metadata/`.

</div>

<div class="sect2">

### List the metadata type keys

|                |                                                                                                                                                                                                                                                                                                                                                                    |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Type           | `GET`                                                                                                                                                                                                                                                                                                                                                              |
| Path           | `metadata/types`                                                                                                                                                                                                                                                                                                                                                   |
| Produces       | `application/json`                                                                                                                                                                                                                                                                                                                                                 |
| Example call   | `curl -X GET http://localhost:8080/hop/api/v1/metadata/types`                                                                                                                                                                                                                                                                                                      |
| Example output | `["dataset","workflow-log","async-web-service","execution-info-location","web-service","cassandra-connection","workflow-run-configuration","unit-test","rdbms","mongodb-connection","file-definition","splunk","pipeline-run-configuration","pipeline-log","server","partition","execution-data-profile","neo4j-connection","pipeline-probe","neo4j-graph-model"]` |

</div>

<div class="sect2">

### List the metadata elements for a key

|                |                                                                                          |
| -------------- | ---------------------------------------------------------------------------------------- |
| Type           | `GET`                                                                                    |
| Path           | `metadata/list/{key}`                                                                    |
| Arguments      | `key` : the key of the metadata type                                                     |
| Produces       | `application/json`                                                                       |
| Example call   | `curl -X GET http://localhost:8080/hop/api/v1/metadata/list/pipeline-run-configuration/` |
| Example output | `["local"]`                                                                              |

</div>

<div class="sect2">

### Get a metadata element

|                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Type           | `GET`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Path           | `metadata/{key}/{name}`                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Arguments      | `key` : the key of the metadata type, `{name}` : the name of the metadata element to get.                                                                                                                                                                                                                                                                                                                                                                                                 |
| Produces       | `application/json`                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Example call   | `curl -X GET http://localhost:8080/hop/api/v1/metadata/pipeline-run-configuration/local/`                                                                                                                                                                                                                                                                                                                                                                                                 |
| Example output | `{"engineRunConfiguration":{"Local":{"feedback_size":"50000","sample_size":"1000","sample_type_in_gui":"None","wait_time":"2","rowset_size":"10000","safe_mode":false,"show_feedback":false,"topo_sort":false,"gather_metrics":false,"transactional":false}},"defaultSelection":false,"configurationVariables":[],"name":"local","description":"Runs your pipelines locally with the standard local Hop pipeline engine","dataProfile":"first-last","executionInfoLocationName":"local"}` |

</div>

<div class="sect2">

### Save a metadata element

|              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Type         | `POST`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Path         | `metadata/{key}`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Arguments    | `key` : the key of the metadata type to save                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Consumes     | `application/json`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Produces     | `application/json`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Example call | `curl -X POST http://localhost:8080/hop/api/v1/metadata/pipeline-run-configuration/ -d '{"engineRunConfiguration":{"Local":{"feedback_size":"50000","sample_size":"1000","sample_type_in_gui":"None","wait_time":"2","rowset_size":"10000","safe_mode":false,"show_feedback":false,"topo_sort":false,"gather_metrics":false,"transactional":false}},"defaultSelection":false,"configurationVariables":[],"name":"local","description":"Runs your pipelines locally with the standard local Hop pipeline engine","dataProfile":"first-last","executionInfoLocationName":"local"}'` |

</div>

<div class="sect2">

### Delete a metadata element

|              |                                                                                                    |
| ------------ | -------------------------------------------------------------------------------------------------- |
| Type         | `DELETE`                                                                                           |
| Path         | `metadata/{key}/{name}`                                                                            |
| Arguments    | `key` : the key of the metadata type to save. `name` : the name of the metadata element to delete. |
| Produces     | `application/json`                                                                                 |
| Example call | `curl -X DELETE http://localhost:8080/hop/api/v1/metadata/pipeline-run-configuration/Flink/`       |
| Output       | `Flink`                                                                                            |

</div>

</div>

</div>

<div class="sect1">

## Plugins services

<div class="sectionbody">

<div class="paragraph">

The plugins services are deployed under sub-path `plugins/`.

</div>

<div class="sect2">

### List all the plugin type classes

|                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Type           | `GET`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Path           | `plugins/types`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Produces       | `application/json`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Example call   | `curl -X GET http://localhost:8080/hop/api/v1/plugins/types`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Example output | `["org.apache.hop.core.compress.CompressionPluginType","org.apache.hop.core.row.value.ValueMetaPluginType","org.apache.hop.core.database.DatabasePluginType","org.apache.hop.core.plugins.TransformPluginType","org.apache.hop.core.auth.AuthenticationConsumerPluginType","org.apache.hop.imp.ImportPluginType","org.apache.hop.core.encryption.TwoWayPasswordEncoderPluginType","org.apache.hop.core.auth.AuthenticationProviderPluginType","org.apache.hop.core.plugins.PartitionerPluginType","org.apache.hop.core.logging.LoggingPluginType","org.apache.hop.execution.plugin.ExecutionInfoLocationPluginType","org.apache.hop.core.config.plugin.ConfigPluginType","org.apache.hop.core.plugins.HopServerPluginType","org.apache.hop.core.plugins.ActionPluginType","org.apache.hop.core.extension.ExtensionPointPluginType","org.apache.hop.pipeline.engine.PipelineEnginePluginType","org.apache.hop.pipeline.transform.RowDistributionPluginType","org.apache.hop.workflow.engine.WorkflowEnginePluginType","org.apache.hop.core.vfs.plugin.VfsPluginType","org.apache.hop.execution.sampler.ExecutionDataSamplerPluginType","org.apache.hop.metadata.plugin.MetadataPluginType"]` |

</div>

<div class="sect2">

### List all the plugins for a given type class

<table>
<tbody>
<tr class="odd">
<td><p>Type</p></td>
<td><p><code>GET</code></p></td>
</tr>
<tr class="even">
<td><p>Path</p></td>
<td><p><code>plugins/list/{typeClassName}/</code></p></td>
</tr>
<tr class="odd">
<td><p>Arguments</p></td>
<td><p><code>key</code> : the class name of the plugin type</p></td>
</tr>
<tr class="even">
<td><p>Produces</p></td>
<td><p><code>application/json</code></p></td>
</tr>
<tr class="odd">
<td><p>Example call</p></td>
<td><p><code>curl -X GET http://localhost:8080/hop/api/v1/plugins/list/org.apache.hop.pipeline.engine.PipelineEnginePluginType</code></p>
<p>This call retrieves all the information about all the pipeline engine plugins.</p></td>
</tr>
<tr class="even">
<td><p>Example output</p></td>
<td><p><code>[{&quot;category&quot;:null,&quot;name&quot;:&quot;Beam DataFlow pipeline engine&quot;,&quot;description&quot;:&quot;This allows you to run your pipeline on Google Cloud Platform DataFlow, provided by the Apache Beam community&quot;,&quot;ids&quot;:[&quot;BeamDataFlowPipelineEngine&quot;],&quot;pluginType&quot;:&quot;org.apache.hop.pipeline.engine.PipelineEnginePluginType&quot;,&quot;imageFile&quot;:null,&quot;separateClassLoaderNeeded&quot;:false,&quot;classLoaderGroup&quot;:null,&quot;nativePlugin&quot;:false, …​ }</code></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Execution services

<div class="sectionbody">

<div class="paragraph">

The 'Execution' services are deployed under sub-path `execution/`.

</div>

<div class="sect2">

### Execute a pipeline synchronously

<table>
<tbody>
<tr class="odd">
<td><p>Type</p></td>
<td><p><code>POST</code></p></td>
</tr>
<tr class="even">
<td><p>Path</p></td>
<td><p><code>execution/sync</code></p></td>
</tr>
<tr class="odd">
<td><p>Produces</p></td>
<td><p><code>application/json</code></p></td>
</tr>
<tr class="even">
<td><p>Example call</p></td>
<td><p><code>curl -X POST  http://localhost:8080/hop/api/v1/execution/sync/  -H 'Content-Type: application/json'  -d '{ &quot;service&quot; : &quot;test&quot;, &quot;runConfig&quot; : &quot;local&quot;, &quot;variables&quot; : { &quot;VAR1&quot; : &quot;value1&quot;, &quot;VAR2&quot; : &quot;value2&quot; }, &quot;bodyContent&quot; : &quot;This is body content&quot; }'</code> `</p></td>
</tr>
<tr class="odd">
<td><p>Example output</p></td>
<td><p>The executing pipeline can produce output like this:</p>
<p><code>{ &quot;rows&quot; : [ { &quot;id&quot; : 1, &quot;uuid&quot; : &quot;93b534f0-31ef-4992-8012-ffbfd3d7d489&quot;, &quot;var1&quot; : &quot;value1&quot;, &quot;var2&quot; : &quot;value2&quot;, &quot;bodyContent&quot; : &quot;This is body content&quot; }, …​ ] }</code></p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

The body to post can contain the following options (see also: the example above)

</div>

<div class="ulist">

  - `execute`: the name of the Web Service metadata element to use

  - `runConfig`: the name of the pipeline run configuration to use

  - `variables`: a map with variables (or parameters) with their names and values

  - `bodyContent`: this will be set as a variable using the body content variable option in the Web Service metadata.

</div>

</div>

</div>

</div>

<div class="sect1">

## Execution Information Location services

<div class="sectionbody">

<div class="paragraph">

The execution information location services are deployed under sub-path `location/`.

</div>

<div class="sect2">

### Get execution IDs

<table>
<tbody>
<tr class="odd">
<td><p>Type</p></td>
<td><p><code>POST</code></p></td>
</tr>
<tr class="even">
<td><p>Path</p></td>
<td><p><code>location/executions/{locationName}</code></p></td>
</tr>
<tr class="odd">
<td><p>Arguments</p></td>
<td><p><code>locationName</code> : the name of the execution information location to query.</p></td>
</tr>
<tr class="even">
<td><p>Consumes</p></td>
<td><p><code>application/json</code></p></td>
</tr>
<tr class="odd">
<td><p>Produces</p></td>
<td><p><code>application/json</code></p></td>
</tr>
<tr class="even">
<td><p>Example call</p></td>
<td><p><code>curl -X GET  http://localhost:8080/hop/api/v1/location/executions/local/  -H 'Content-Type: application/json'  -d '{ &quot;includeChildren&quot; : &quot;true&quot;, &quot;limit&quot; : 100 }'</code> `</p></td>
</tr>
<tr class="odd">
<td><p>Example output</p></td>
<td><p>The list of execution IDs looks like this:</p>
<p><code>[&quot;af84cbc2-0166-4dea-956f-72b73cf66d0d&quot;, &quot;bf84cbc2-0166-4dea-956f-72b73cf66d0e&quot;, &quot;cf84cbc2-0166-4dea-956f-72b73cf66d0f&quot;]</code></p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

The body to post can contain the following options (see also: the example above)

</div>

<div class="ulist">

  - `includeChildren`: Set this to true if you want to see child executions of workflows and pipelines

  - `limit`: the maximum number of IDs to retrieve or a value ⇐0 to get all IDs

</div>

</div>

<div class="sect2">

### Get execution

<table>
<tbody>
<tr class="odd">
<td><p>Type</p></td>
<td><p><code>GET</code></p></td>
</tr>
<tr class="even">
<td><p>Path</p></td>
<td><p><code>location/executions/{locationName}/{executionId}</code></p></td>
</tr>
<tr class="odd">
<td><p>Arguments</p></td>
<td><p><code>locationName</code>: the name of the execution information location to query. <code>executionId</code>: the ID of the execution to retrieve.</p></td>
</tr>
<tr class="even">
<td><p>Produces</p></td>
<td><p><code>application/json</code></p></td>
</tr>
<tr class="odd">
<td><p>Example call</p></td>
<td><p><code>curl -X GET  http://localhost:8080/hop/api/v1/location/executions/local/df84cbc2-0166-4dea-956f-72b73cf66d0d/</code> `</p></td>
</tr>
<tr class="even">
<td><p>Example output</p></td>
<td><p>The execution details look like this:</p>
<p><code>{&quot;name&quot;:&quot;pipeline-name&quot;,&quot;filename&quot;:&quot;/path/filename.hpl&quot;,&quot;id&quot;:&quot;df84cbc2-0166-4dea-956f-72b73cf66d0d&quot;,&quot;parentId&quot;:null,&quot;executionType&quot;:&quot;Pipeline&quot;, …​ }</code></p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Get execution state

<table>
<tbody>
<tr class="odd">
<td><p>Type</p></td>
<td><p><code>GET</code></p></td>
</tr>
<tr class="even">
<td><p>Path</p></td>
<td><p><code>location/state/{locationName}/{executionId}</code></p></td>
</tr>
<tr class="odd">
<td><p>Arguments</p></td>
<td><p><code>locationName</code>: the name of the execution information location to query. <code>executionId</code>: the ID of the execution state to retrieve.</p></td>
</tr>
<tr class="even">
<td><p>Produces</p></td>
<td><p><code>application/json</code></p></td>
</tr>
<tr class="odd">
<td><p>Example call</p></td>
<td><p><code>curl -X GET  http://localhost:8080/hop/api/v1/location/state/local/df84cbc2-0166-4dea-956f-72b73cf66d0d/</code> `</p></td>
</tr>
<tr class="even">
<td><p>Example output</p></td>
<td><p>The execution state looks like this:</p>
<p><code>{&quot;executionType&quot;:&quot;Pipeline&quot;,&quot;parentId&quot;:null,&quot;id&quot;:&quot;df84cbc2-0166-4dea-956f-72b73cf66d0d&quot;,&quot;name&quot;:&quot;test-service&quot;,&quot;copyNr&quot;:null,&quot;loggingText&quot;:&quot;logging-text&quot;,&quot;lastLogLineNr&quot;:14,&quot;metrics&quot;:[{&quot;componentName&quot;:&quot;id&quot;,&quot;componentCopy&quot;:&quot;0&quot;,&quot;metrics&quot;:{&quot;Read&quot;:5,&quot;Buffers Output&quot;:0,&quot;Errors&quot;:0,&quot;Input&quot;:0,&quot;Written&quot;:5,&quot;Updated&quot;:0,&quot;Output&quot;:0,&quot;Rejected&quot;:0,&quot;Buffers Input&quot;:0}},{&quot;componentName&quot;:&quot;uuid&quot;,&quot;componentCopy&quot;:&quot;0&quot;,&quot;metrics&quot;:{&quot;Read&quot;:5,&quot;Buffers Output&quot;:0,&quot;Errors&quot;:0,&quot;Input&quot;:0,&quot;Written&quot;:5,&quot;Updated&quot;:0,&quot;Output&quot;:0,&quot;Rejected&quot;:0,&quot;Buffers Input&quot;:0}},{&quot;componentName&quot;:&quot;Enhanced JSON Output&quot;,&quot;componentCopy&quot;:&quot;0&quot;,&quot;metrics&quot;:{&quot;Read&quot;:5,&quot;Buffers Output&quot;:0,&quot;Errors&quot;:0,&quot;Input&quot;:0,&quot;Written&quot;:1,&quot;Updated&quot;:0,&quot;Output&quot;:1,&quot;Rejected&quot;:0,&quot;Buffers Input&quot;:0}},{&quot;componentName&quot;:&quot;OUTPUT&quot;,&quot;componentCopy&quot;:&quot;0&quot;,&quot;metrics&quot;:{&quot;Read&quot;:1,&quot;Buffers Output&quot;:0,&quot;Errors&quot;:0,&quot;Input&quot;:0,&quot;Written&quot;:1,&quot;Updated&quot;:0,&quot;Output&quot;:0,&quot;Rejected&quot;:0,&quot;Buffers Input&quot;:0}},{&quot;componentName&quot;:&quot;5 rows&quot;,&quot;componentCopy&quot;:&quot;0&quot;,&quot;metrics&quot;:{&quot;Read&quot;:0,&quot;Buffers Output&quot;:0,&quot;Errors&quot;:0,&quot;Input&quot;:0,&quot;Written&quot;:5,&quot;Updated&quot;:0,&quot;Output&quot;:0,&quot;Rejected&quot;:0,&quot;Buffers Input&quot;:0}},{&quot;componentName&quot;:&quot;Get variables&quot;,&quot;componentCopy&quot;:&quot;0&quot;,&quot;metrics&quot;:{&quot;Read&quot;:5,&quot;Buffers Output&quot;:0,&quot;Errors&quot;:0,&quot;Input&quot;:0,&quot;Written&quot;:5,&quot;Updated&quot;:0,&quot;Output&quot;:0,&quot;Rejected&quot;:0,&quot;Buffers Input&quot;:0}}],&quot;statusDescription&quot;:&quot;Finished&quot;,&quot;updateTime&quot;:1678191016156,&quot;childIds&quot;:[&quot;46690405-4b06-4353-973a-06aff689afe0&quot;,&quot;ec974060-e228-4438-8408-b049803eb316&quot;,&quot;f7344a76-06b0-4499-95a1-1b30bd987561&quot;,&quot;32837620-df15-4602-b32c-69111689767f&quot;,&quot;db2e3feb-3ab1-4491-a4dc-7036cc0c3a3f&quot;,&quot;4653fb73-ac94-4ac3-adef-a14e6129aa14&quot;],&quot;details&quot;:{},&quot;failed&quot;:false,&quot;containerId&quot;:&quot;c7c90ed5-6684-408a-be11-d1fd1c65164a&quot;}</code></p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:50 +0200

</div>

</div>
