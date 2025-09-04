<div id="header">

# Hop Server Web Services Overview

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

Hop Server has a rich set of web services that can be used to query and manage the server’s status, or to manage pipeline and workflow execution details.

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
<td>when specified, the id for a workflow or pipeline represents one execution of a workflow or pipeline on the server.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## addExport

<div class="sectionbody">

<div class="dlist">

  - name  
    addExport

  - description  
    Upload a resources export file. Add a zipped pipeline or workflow to the body payload as a binary file.

  - endPoint  
    GET `hop/addExport`

  - parameters
    
    <div class="ulist">
    
      - type: `pipeline` or `workflow`
    
      - load: -
    
    </div>

  - example request  
    `http://localhost:8081/hop/addExport/?type=workflow` with zipped workflow as payload

  - result  
    A zip file with the export is created on the server’s file system.

</div>

<div class="listingblock">

<div class="content">

``` highlight
<?xml version="1.0" encoding="UTF-8"?>
<webresult>
    <result>OK</result>
    <message>file:///tmp/export_70eb8ef1-9721-4cf5-afa3-940cd0f771d9.zip</message>
    <id/>
</webresult>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## addPipeline

<div class="sectionbody">

<div class="dlist">

  - name  
    addPipeline

  - description  
    Add a pipeline for execution

  - endPoint  
    GET `hop/addPipeline`
    
    <div class="ulist">
    
      - Content-Type: text/xml;charset=UTF-8
    
    </div>

  - parameters
    
    <div class="ulist">
    
      - xml Request body should contain xml containing pipeline\_configuration (pipeline and pipeline\_execution\_configuration wrapped in pipeline\_configuration tag).
    
    </div>

  - example request  
    `http://localhost:8081/hop/addPipeline/xml=Y` with XML payload

  - result  
    \-

</div>

</div>

</div>

<div class="sect1">

## addWorkflow

<div class="sectionbody">

<div class="dlist">

  - name  
    addWorkflow

  - description  
    Add a workflow for execution

  - endPoint  
    GET `hop/addWorkflow`
    
    <div class="ulist">
    
      - Content-Type: text/xml;charset=UTF-8
    
    </div>

  - parameters
    
    <div class="ulist">
    
      - xml Request body should contain xml containing workflow\_configuration (pipeline and workflow\_execution\_configuration wrapped in pipeline\_configuration tag).
    
    </div>

  - example request  
    `http://localhost:8081/hop/addWorkflow/xml=Y` with XML payload

  - result  
    \-

</div>

</div>

</div>

<div class="sect1">

## getPipelineImage

<div class="sectionbody">

<div class="dlist">

  - name  
    getPipelineImage

  - description  
    Generate a SVG image of a pipeline

  - endPoint  
    GET `hop/pipelineImage`

  - parameters
    
    <div class="ulist">
    
      - name: name of the pipeline to generate the image for
    
      - id: id of the pipeline to generate the image for
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/pipelineImage/?name=remote-pipeline&id=c1451bfb-b867-4c76-b123-c29d2b05da17`

  - result  
    an SVG image of the pipeline graph

</div>

</div>

</div>

<div class="sect1">

## getPipelineStatus

<div class="sectionbody">

<div class="dlist">

  - name  
    getPipelineStatus

  - description  
    Get the status of a pipeline

  - endPoint  
    GET `hop/pipelineStatus`

  - parameters
    
    <div class="ulist">
    
      - name: name of the pipeline to get the status for
    
      - id: id of the pipeline to get the status for
    
      - xml (optional): return the information as xml (default HTML) use \&xml=Y
    
      - json (optional): return the information as json (default HTML) use \&json=Y
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/pipelineStatus/?name=<NAME>>&id=<ID>`

  - result  
    an HTML response with the execution status, transform details and canvas preview for this pipeline

</div>

</div>

</div>

<div class="sect1">

## Status

<div class="sectionbody">

<div class="dlist">

  - name  
    status

  - description  
    Get the status of the server

  - parameters  
    none

  - example request  
    GET `http://localhost:8081/hop/status/`

  - result  
    an HTML page with an overview of the pipelines and workflows on the server, their execution details and the server’s configuration details.

</div>

</div>

</div>

<div class="sect1">

## getWorkflowImage

<div class="sectionbody">

<div class="dlist">

  - name  
    getWorkflowImage

  - description  
    Generate an SVG image of a workflow

  - endPoint  
    GET `hop/workflowImage`

  - parameters
    
    <div class="ulist">
    
      - name: name of the workflow to generate the image for
    
      - id: id of the workflow to generate the image for
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/workflowImage/?name=<NAME>>&id=<ID>`

  - result  
    an SVG image of the workflow graph

</div>

</div>

</div>

<div class="sect1">

## getWorkflowStatus

<div class="sectionbody">

<div class="dlist">

  - name  
    getWorkflowStatus

  - description  
    Get the status of a workflow

  - endPoint  
    GET `hop/workflowStatus`

  - parameters
    
    <div class="ulist">
    
      - name: name of the workflow to get the status for
    
      - id: id of the workflow to get the status for
    
      - xml (optional): return the information as xml (default HTML) use \&xml=Y
    
      - json (optional): return the information as json (default HTML) use \&json=Y
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/workflowStatus/?name=<NAME>&id=<ID>`

  - result  
    an HTML response with the execution status, action details and canvas preview for this workflow

</div>

</div>

</div>

<div class="sect1">

## pausePipeline

<div class="sectionbody">

<div class="dlist">

  - name  
    pausePipeline

  - description  
    Pause or continue a pipeline

  - endPoint  
    GET `/hop/pausePipeline`

  - parameters
    
    <div class="ulist">
    
      - name: name of the pipeline to pause or restart
    
      - id: id of the pipeline to pause or restart
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/pausePipeline/?name=<NAME>&id=<ID>`

  - result  
    HTML page with the request status, e.g.

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>Pause pipeline</TITLE>
    <META http-equiv="Refresh" content="2;url=/hop/pipelineStatus?name=<NAME>&id=<ID>">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H1>Pipeline [tmp] : pause requested.</H1>
    <a href="/hop/pipelineStatus?name=<NAME>&id=<ID>">Back to the pipeline status page</a>
    <p>
        <p>
</BODY>

</HTML>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Prepare Execution

<div class="sectionbody">

<div class="dlist">

  - name  
    prepareExec

  - description  
    Prepare the execution of a pipeline

  - endPoint  
    GET `/hop/prepareExec`

  - parameters
    
    <div class="ulist">
    
      - xml: use xml, default Y
    
      - name: the name of the pipeline to prepare execution for
    
      - id: the id of the pipeline to prepare execution for
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/prepareExec/?xml=Y&name=<NAME>&id=<ID>`

  - result  
    Example result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<?xml version="1.0" encoding="UTF-8"?>
<webresult>
    <result>OK</result>
    <message/>
    <id/>
</webresult>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Register Pipeline

<div class="sectionbody">

<div class="dlist">

  - name  
    registerPipeline

  - description  
    Register a pipeline for execution

  - endPoint  
    GET `hop/registerPipeline`
    
    <div class="ulist">
    
      - Content-Type: text/xml;charset=UTF-8
    
    </div>

  - parameters
    
    <div class="ulist">
    
      - xml Request body should contain xml containing pipeline\_configuration (pipeline and pipeline\_execution\_configuration wrapped in pipeline\_configuration tag).
    
    </div>

  - example request  
    `http://localhost:8081/hop/registerPipeline/xml=Y`

</div>

<div class="paragraph">

with XML payload (example):

</div>

<div class="listingblock">

<div class="content">

``` highlight
<pipeline_configuration>
<pipeline>
  <info>
    <name>generate_rows</name>
    <name_sync_with_filename>Y</name_sync_with_filename>
    <description/>
    <extended_description/>
    <pipeline_version/>
    <pipeline_type>Normal</pipeline_type>
    <parameters>
    </parameters>
    <capture_transform_performance>N</capture_transform_performance>
    <transform_performance_capturing_delay>1000</transform_performance_capturing_delay>
    <transform_performance_capturing_size_limit>100</transform_performance_capturing_size_limit>
    <created_user>-</created_user>
    <created_date>2022/02/03 13:47:49.645</created_date>
    <modified_user>-</modified_user>
    <modified_date>2022/02/03 13:47:49.645</modified_date>
    <key_for_session_key>H4sIAAAAAAAA/wMAAAAAAAAAAAA=</key_for_session_key>
    <is_key_private>N</is_key_private>
  </info>
  <notepads>
  </notepads>
  <order>
    <hop>
      <from>Generate rows</from>
      <to>Delay row</to>
      <enabled>Y</enabled>
    </hop>
    <hop>
      <from>Delay row</from>
      <to>result</to>
      <enabled>Y</enabled>
    </hop>
  </order>
  <transform>
    <name>Delay row</name>
    <type>Delay</type>
    <description/>
    <distribute>Y</distribute>
    <custom_distribution/>
    <copies>1</copies>
    <partitioning>
      <method>none</method>
      <schema_name/>
    </partitioning>
    <scaletime>seconds</scaletime>
    <timeout>1</timeout>
    <attributes/>
    <GUI>
      <xloc>416</xloc>
      <yloc>96</yloc>
    </GUI>
  </transform>
  <transform>
    <name>Generate rows</name>
    <type>RowGenerator</type>
    <description/>
    <distribute>Y</distribute>
    <custom_distribution/>
    <copies>1</copies>
    <partitioning>
      <method>none</method>
      <schema_name/>
    </partitioning>
    <fields>
      <field>
        <length>-1</length>
        <name>value</name>
        <precision>-1</precision>
        <set_empty_string>N</set_empty_string>
        <type>String</type>
        <nullif>test</nullif>
      </field>
    </fields>
    <interval_in_ms>5000</interval_in_ms>
    <last_time_field>FiveSecondsAgo</last_time_field>
    <never_ending>N</never_ending>
    <limit>10000</limit>
    <row_time_field>now</row_time_field>
    <attributes/>
    <GUI>
      <xloc>160</xloc>
      <yloc>96</yloc>
    </GUI>
  </transform>
  <transform>
    <name>result</name>
    <type>Dummy</type>
    <description/>
    <distribute>Y</distribute>
    <custom_distribution/>
    <copies>1</copies>
    <partitioning>
      <method>none</method>
      <schema_name/>
    </partitioning>
    <attributes/>
    <GUI>
      <xloc>720</xloc>
      <yloc>96</yloc>
    </GUI>
  </transform>
  <transform_error_handling>
  </transform_error_handling>
  <attributes/>
</pipeline>
  <pipeline_execution_configuration>
    <pass_export>N</pass_export>
    <parameters>
    </parameters>
    <variables>
    <variable><name>HOP_AUDIT_FOLDER</name><value>/Users/hans/config/audit</value></variable>
    <variable><name>HOP_AUTO_CREATE_CONFIG</name><value>Y</value></variable>
    <variable><name>HOP_CONFIG_FOLDER</name><value>/Users/hans/config</value></variable>
    <variable><name>HOP_DATASETS_FOLDER</name><value>/Users/hans/test/datasets</value></variable>
    <variable><name>HOP_ENVIRONMENT_NAME</name><value>test1</value></variable>
    <variable><name>HOP_METADATA_FOLDER</name><value>/Users/hans/test/metadata</value></variable>
    <variable><name>HOP_PIPELINE_PAN_JVM_EXIT_CODE</name><value/></variable>
    <variable><name>HOP_PROJECTS</name><value>/Users/hans/tmp/</value></variable>
    <variable><name>HOP_PROJECT_NAME</name><value>test</value></variable>
    <variable><name>HOP_UNIT_TESTS_FOLDER</name><value>/Users/hans/test</value></variable>
    <variable><name>NEO4J_CONNECTION</name><value>neo4j</value></variable>
    <variable><name>PROJECT_HOME</name><value>/Users/hans/test</value></variable>
    <variable><name>TEST</name><value>TEST</value></variable>
    <variable><name>ftp.nonProxyHosts</name><value>local|*.local|169.254/16|*.169.254/16</value></variable>
    <variable><name>http.nonProxyHosts</name><value>local|*.local|169.254/16|*.169.254/16</value></variable>
    <variable><name>jdk.debug</name><value>release</value></variable>
    <variable><name>native.encoding</name><value>UTF-8</value></variable>
    <variable><name>p1</name><value>a</value></variable>
    <variable><name>socksNonProxyHosts</name><value>local|*.local|169.254/16|*.169.254/16</value></variable>
    </variables>
    <log_level>Basic</log_level>
    <log_file>N</log_file>
    <log_filename/>
    <log_file_append>N</log_file_append>
    <create_parent_folder>N</create_parent_folder>
    <clear_log>Y</clear_log>
    <show_subcomponents>Y</show_subcomponents>
    <run_configuration>local</run_configuration>
</pipeline_execution_configuration>
<metastore_json>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
ljWkYK7zO7toJAlk3Xw8/QVlC+SCFRAAAA==
</metastore_json>
</pipeline_configuration>
```

</div>

</div>

<div class="paragraph">

The metastore\_json is base64 encoded GZip content

</div>

<div class="dlist">

  - result  
    \-

</div>

</div>

</div>

<div class="sect1">

## Register Workflow

<div class="sectionbody">

<div class="dlist">

  - name  
    registerWorkflow

  - description  
    Register a workflow on the server

  - endPoint  
    GET `/hop/registerWorkflow`
    
    <div class="ulist">
    
      - Content-Type: text/xml;charset=UTF-8
    
    </div>

  - parameters
    
    <div class="ulist">
    
      - xml:
    
    </div>

  - example request  
    \-

  - result  
    \-

</div>

</div>

</div>

<div class="sect1">

## Remove Pipeline

<div class="sectionbody">

<div class="dlist">

  - name  
    removePipeline

  - description  
    Remove a pipeline from the server

  - endPoint  
    GET `/hop/removePipeline`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the pipeline to remove
    
      - id: the id of the pipeline to remove
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/removePipeline/?name=<NAME>&id=<ID>`

  - result  
    Example result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>The pipeline was removed</TITLE>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H3>The pipeline with name [<NAME>] and hopServer object id <ID> was removed from Hop
        Server.</H3>
    <a href="/hop/status">Back to the status page</a><br>
    <p>
</BODY>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Remove Workflow

<div class="sectionbody">

<div class="dlist">

  - name  
    removeWorkflow

  - description  
    Remove a workflow from the server

  - endPoint  
    GET `/hop/removeWorkflow`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the workflow to remove
    
      - id: the id of the workflow to remove
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/removeWorkflow/?name=<NAME>&id=<ID>`

  - result  
    Example result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>The workflow was removed</TITLE>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H3>The workflow with name [<NAME>] and hopServer object id <ID> was removed from Hop
        Server.</H3>
    <a href="/hop/status">Back to the status page</a><br>
    <p>
</BODY>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Sniff Transform

<div class="sectionbody">

<div class="dlist">

  - name  
    sniffTransform

  - description  
    Sniff test a pipeline transform

  - endPoint  
    GET `/hop/sniffTransform`

  - parameters
    
    <div class="ulist">
    
      - xml: use XML (default: Y)
    
      - pipeline: name of the pipeline to sniff
    
      - id: id of the pipeline to sniff
    
      - transform: name of the transform to sniff
    
      - type: (input/output) sniff input or output
    
      - lines: number of lines to wait for
    
      - copynr: when using multiple copies you can specify the copynr
    
    </div>

  - following parameters are required
    
    <div class="ulist">
    
      - xml
    
      - id or pipeline
    
      - transform
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/sniffTransform/?xml=Y&pipeline=<NAME>&id=<ID>&transform=<TRANSFORMNAME>&type=output&lines=100`

  - result  
    Example result (empty):

</div>

<div class="listingblock">

<div class="content">

``` highlight
<row-buffer>
<row-meta/>
</row-buffer>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Start Pipeline Execution

<div class="sectionbody">

<div class="dlist">

  - name  
    startExec

  - description  
    Start the execution of a pipeline

  - endPoint  
    GET `/hop/startExec`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the pipeline to start
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/startExec?name=<NAME>`

  - result  
    Example result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>Start of pipeline</TITLE>
    <META http-equiv="Refresh" content="2;url=/hop/pipelineStatus?name=<NAME>">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H1>Pipeline [<NAME>] was started.</H1>
    <a href="/hop/pipelineStatus?name=<NAME>&id=8bea27db-de97-4bd0-a210-d9bba3aacac2">Back to the status page</a>
    <p>
        <p>
</BODY>

</HTML>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Start Pipeline

<div class="sectionbody">

<div class="dlist">

  - name  
    startPipeline

  - description  
    Prepare and start the execution of a pipeline

  - endPoint  
    GET `/hop/startPipeline`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the pipeline to start
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/startPipeline?name=<NAME>`

  - result  
    Example result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>Start of pipeline</TITLE>
    <META http-equiv="Refresh" content="2;url=/hop/pipelineStatus?name=<NAME>">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H1>Pipeline [<NAME>] was started.</H1>
    <a href="/hop/pipelineStatus?name=<NAME>&id=8bea27db-de97-4bd0-a210-d9bba3aacac2">Back to the status page</a>
    <p>
        <p>
</BODY>

</HTML>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Start Workflow

<div class="sectionbody">

<div class="dlist">

  - name  
    startWorkflow

  - description  
    Prepare and start the execution of a workflow

  - endPoint  
    GET `/hop/startPipeline`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the workflow to start
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/startWorkflow?name=<NAME>`

  - result  
    Example result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>Start of workflow</TITLE>
    <META http-equiv="Refresh" content="2;url=/hop/startWorkflow?name=<NAME>">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H1>Workflow [<NAME>] was started.</H1>
    <a href="/hop/workflowStatus?name=<NAME>&id=8bea27db-de97-4bd0-a210-d9bba3aacac2">Back to the status page</a>
    <p>
        <p>
</BODY>

</HTML>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Stop Pipeline

<div class="sectionbody">

<div class="dlist">

  - name  
    stopPipeline

  - description  
    Stop a pipeline

  - endPoint  
    GET `/hop/stopPipeline`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the pipeline to stop
    
      - id: the id of the pipeline to stop
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/stopPipeline?name=<NAME>&id=<ID>`

  - result  
    Example Result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>Stop pipeline</TITLE>
    <META http-equiv="Refresh" content="2;url=/hop/pipelineStatus?name=<NAME>>">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H1>Pipeline [<NAME>] stop requested.</H1>
    <a href="/hop/pipelineStatus?name=<NAME>&id=<ID>">Back to the pipeline status page</a>
    <p>
        <p>
</BODY>

</HTML>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Stop Workflow

<div class="sectionbody">

<div class="dlist">

  - name  
    stopWorkflow

  - description  
    Stop a workflow

  - endPoint  
    GET `/hop/stopWorkflow`

  - parameters
    
    <div class="ulist">
    
      - name: the name of the workflow to stop
    
      - id: the id of the workflow to stop
    
    </div>

  - example request  
    GET `http://localhost:8081/hop/stopWorkflow?name=<NAME>&id=<ID>`

  - result  
    Example Result:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<HTML>

<HEAD>
    <TITLE>Stop workflow</TITLE>
    <META http-equiv="Refresh" content="2;url=/hop/workflowStatus?name=<NAME>>">
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
</HEAD>

<BODY>
    <H1>Workflow [<NAME>] stop requested.</H1>
    <a href="/hop/workflowStatus?name=<NAME>&id=<ID>">Back to the pipeline status page</a>
    <p>
        <p>
</BODY>

</HTML>
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:52 +0200

</div>

</div>
