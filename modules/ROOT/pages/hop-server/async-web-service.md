<div id="header">

# Asynchronous Web Service

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

This web service variant is used to execute long-running workflows. Instead of getting immediate results from a pipeline with a [Web Service](hop-server/web-service.9qKyIsvjcM) call, the only thing that is given back after the call in the unique ID of the executing workflow. With that unique ID you can query the status of the workflow. You can specify additional variables to report back during the querying of the status of the asynchronously running workflow.

</div>

<div class="paragraph">

Check the [Asynchronous Web Service](metadata-types/async-web-service.9qKyIsvjcM) metadata type for more information on how to configure the async web service.

</div>

<div class="paragraph">

Here is the lifecycle:

</div>

<div class="sect2">

### Execute Workflow

<div class="paragraph">

Executing an asynchronous web service is done by calling method `hop/asyncRun` with the main parameter being the name of the asynchronous web service. (`service=<name of metadata object>`) The response will be a JSON document which includes the ID of the workflow. Any other parameters will be considered to be variables or parameters of the workflow and are set in the underlying workflow.

</div>

<div class="paragraph">

You can choose the workflow run configuration to use for the execution with the `runConfig` parameter. Please note that the more advanced features, like tracking of the progress of a running pipeline, are only available on a Local workflow engine.

</div>

<div class="paragraph">

You can also POST content to the web service which can be set as a variable in the executing workflow. See the "Content variable" option below. In the following example we execute service `dataload` with parameter `MAX` set to 50M. The content of JSON file `document.json` is posted to the service. The result of the call is stored in file `async-run.json`:

</div>

<div class="listingblock">

<div class="content">

``` highlight
curl -v \
  --user cluster:cluster \
  --request POST \
  -o async-run.json \
  -H "Content-Type: application/json" \
  --data-binary '@document.json' \
  'http://localhost:8282/hop/asyncRun/?service=dataload&MAX=50000000'
```

</div>

</div>

</div>

<div class="sect2">

### Query Status

<div class="paragraph">

You can call method `hop/asyncStatus` with as arguments the service name and ID of the executing workflow: `hop/asyncStatus?service=<name>&id=<id>`.

</div>

<div class="paragraph">

The variables that are specified in the web service will be included in the JSON output of the service.

</div>

<div class="paragraph">

You can also include the execution status of one or more pipelines. You can mark a pipeline action using the action: `Enable Async Logging`. You’ll be asked the name of the web service to report to.

</div>

<div class="paragraph">

Using the output of the previous command you can execute the following command to query the status of the workflow from a command line:

</div>

<div class="listingblock">

<div class="content">

``` highlight
ID=$(cat async-run.json | sed 's/^.*"id":"//g' | sed 's/"}$//g') && \
curl --user cluster:cluster \
     --request GET \
     -o - \
     'http://localhost:8282/hop/asyncStatus/?service=dataload&id='$ID
```

</div>

</div>

<div class="paragraph">

The ID of the executing asynchronous web service is the same as the "container ID" of the executing workflow. This means you can query the workflow itself as well with the `hop/getWorkflowStatus` service. The output of that service can be given in HTML (default), XML (parameter `&xml=Y`) or JSON (parameter `&json=Y`). The web service will also include the log channel ID of the workflow so that you can match it with the execution ID listed in the [execution information location](metadata-types/execution-information-location.9qKyIsvjcM) of your choice.

</div>

<div class="paragraph">

See also: [Get Workflow Status](hop-server/rest-api.9qKyIsvjcM#_getworkflowstatus).

</div>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                 | Description                                                                                                     |
| ---------------------- | --------------------------------------------------------------------------------------------------------------- |
| Name                   | The name of the asynchronous web service. This is the name that is passed into the `asyncRun` webService URL.   |
| Enabled                | Enables or disabled this Asynchronous Web Service                                                               |
| Filename on the server | This is the filename on the server. Make sure that the workflow you want to execute is available on the server. |
| Status variables       | List the variables that are being reported back when the asynchronous status service is queried                 |
| Content variable       | The name of the variable which will contain the content body of the service call                                |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:51 +0200

</div>

</div>
