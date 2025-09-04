<div id="header">

# Web Service

</div>

<div id="content">

<div class="sect1">

## Introduction

<div class="sectionbody">

<div class="paragraph">

Hop has a simple way of exposing data through a servlet.

</div>

<div class="paragraph">

For more information on configuring the Hop server check the [Hop Server docs](hop-server/index.1Z5rVwc6I4)  

</div>

</div>

</div>

<div class="sect1">

## Web Service Metadata

<div class="sectionbody">

<div class="sect2">

### Screenshot

<div class="imageblock text-left">

<div class="content">

![Web Service metadata example](/images/hop-server/web-service-example.png)

</div>

</div>

</div>

<div class="sect2">

### Options

| Option                        | Description                                                                                                                                                      |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name                          | The name of the web service. This is the name that is passed into the webService URL.                                                                            |
| Enabled                       | Enables or disabled the web service                                                                                                                              |
| Filename on the server        | This is the filename on the server. Make sure that the pipeline you want to execute is available on the server.                                                  |
| Output transform              | The name of the transform from which this service will take the output row(s).                                                                                   |
| Output field                  | The output field from which this service will take data from, convert it to a String and output it                                                               |
| Content type                  | The content type which will get reported by the webService servlet                                                                                               |
| List status on server         | Enable this option if you want the executions of the web service pipeline to be listed in the status of the server.                                              |
| Request body content variable | This is the name of the variable which at runtime will contain the content of the request body content. This is useful when doing a POST against the webservice. |

</div>

</div>

</div>

<div class="sect1">

## Hop Server configuration

<div class="sectionbody">

<div class="paragraph">

Your Hop Server needs to know about the metadata you defined. As stated above you need to make sure the server has access to the pipeline(s) you want to execute as well as the server metadata.

</div>

<div class="paragraph">

The best way to do this is to set the following option in your XML configuration file:

</div>

<div class="paragraph">

Linux

</div>

<div class="listingblock">

<div class="content">

``` highlight
<metadata_folder>/path/to/your/metadata</metadata_folder>
```

</div>

</div>

<div class="paragraph">

Windows

</div>

<div class="listingblock">

<div class="content">

``` highlight
<metadata_folder>C:\\path\\to\\your\\metadata</metadata_folder>
```

</div>

</div>

<div class="paragraph">

A simple example would be:

</div>

<div class="listingblock">

<div class="content">

``` highlight
<hop-server-config>
  <hop-server>
    <name>8181</name>
    <hostname>localhost</hostname>
    <port>8181</port>
  </hop-server>
  <metadata_folder>/home/hop/project/services/metadata</metadata_folder>

</hop-server-config>
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Using the service

<div class="sectionbody">

<div class="sect2">

### Base request (ATTENTION: Use the S word capitalized)

<div class="listingblock">

<div class="content">

``` highlight
http://<hop-server-url>/hop/webService
```

</div>

</div>

</div>

<div class="sect2">

### Request parameters

| Parameter          | Description                                                                                                                     |
| ------------------ | ------------------------------------------------------------------------------------------------------------------------------- |
| `service`          | The name of the service. This corresponds to the Web Service metadata object.                                                   |
| `runConfig`        | The name of the pipeline run configuration. Please note that returning values is only supported on the "Local" pipeline engine. |
| Any parameter name | Any parameter can be set simply by passing the value through the request URL                                                    |
| Any variable name  | Any variable can be set simply by passing the value through the request URL                                                     |

</div>

<div class="sect2">

### POST

<div class="paragraph">

Beside the default GET you can also do a POST against the web service and pass in a request body. The content of this body is then picked up if you set the request body content variable. This variable will contain the body content every time the POST request triggers the execution of the underlying pipeline.

</div>

</div>

<div class="sect2">

### Request example

<div class="paragraph">

The following executes Hop Web Service `test` as seen in the screenshot above. It passes a parameter B and a variable A and outputs JSON produced by a JSON Output transform.

</div>

<div class="listingblock">

<div class="content">

``` highlight
http://localhost:8181/hop/webService/?service=test&A=valueA&B=valueB
```

</div>

</div>

<div class="paragraph">

The web service pipeline looks like this:

</div>

<div class="imageblock text-left">

<div class="content">

![Web Service pipeline example](/images/hop-server/web-service-pipeline-example.png)

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:53 +0200

</div>

</div>
