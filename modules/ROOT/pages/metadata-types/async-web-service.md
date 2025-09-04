<div id="header">

# Asynchronous Web Service

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

This web service variant is used to execute long-running workflows. Instead of getting immediate results from a pipeline with a Web Service call, the only thing that is given back after the call in the unique ID of the executing workflow. With that unique ID you can query the status of the workflow. You can specify additional variables to report back during the querying of the status of the asynchronously running workflow.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                         | Description                                                                                                                                                                       |
| ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Name                           | The name to be used for this Asynchronous Web Services                                                                                                                            |
| Enabled                        | Boolean flag to indicated whether this web service is enabled or not                                                                                                              |
| Filename                       | The workflow to use for this web service, with options to open the selected workflow ('Open'), create a new workflow ('New'), or browse to select an existing workflow ('Browse') |
| Status variables (, separated) | List the variables that are being reported back when the asynchronous status service is queried                                                                                   |
| Content variable               | The name of the variable which will contain the content body of the service call                                                                                                  |

</div>

</div>

<div class="sect1">

## More information

<div class="sectionbody">

<div class="paragraph">

For more details on the Asynchronous Web Service and usage examples, check the [hop-server/async-web-service.TiOaZv6YrY](hop-server/async-web-service.TiOaZv6YrY) page in the [hop-server/index.TiOaZv6YrY](hop-server/index.TiOaZv6YrY) docs.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:08 +0200

</div>

</div>
