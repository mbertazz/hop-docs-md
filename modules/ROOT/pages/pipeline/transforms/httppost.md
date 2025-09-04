<div id="header">

# <span class="image image-doc-icon">![HTTP Post transform Icon](../assets/images/transforms/icons/httppost.svg)</span> HTTP Post

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The HTTP Post transform uses an HTTP POST command to submit form data via a URL.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General Tab

<div class="paragraph">

The General tab defines which RSS/Atom URLs you want to use, and optionally which fields contain the URLs.

</div>

| Option                                 | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| -------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| URL                                    | The Web service URL to submit to.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Accept URL from field?                 | If checked, you must specify which field to retrieve the URL from.                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| URL field name                         | If the previous option is checked, this is where you specify the URL field.                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Encoding                               | The encoding standard for the files being accessed.                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Request entity field                   | The name of the field that will contain the POST request. When enabled, the Post a file option will retrieve the file named in this field, and post the contents of that file.                                                                                                                                                                                                                                                                                                                           |
| Post a file                            | If a file is defined in the Request entity field, its contents will be posted if this option is checked. Currently "Request entity field" must be filled in order for "Post a file" to work. Selecting "Post a file" and specifying a field under "Body parameters" without selecting a value for "Request entity field" (the place for the file name) will fail silently.                                                                                                                               |
| Use MultiPart Upload                   | This will send the data to the server in the form of a multipart request, this is useful when posting files                                                                                                                                                                                                                                                                                                                                                                                              |
| Connection timeout                     | Defines the timeout (defaults to 10000) in Milliseconds when a connection attempt will error out.                                                                                                                                                                                                                                                                                                                                                                                                        |
| Socket timeout                         | Defines the timeout (defaults to 10000) in Milliseconds when a socket will error out.                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Connection close wait time             | Define the wait time after the connection is closed in Milliseconds, the default -1 means the default wait time from the operating system (often 2 minutes). Background information: Each row opens a connection and keeps it in a so called TIME-WAIT state for a specific time. A lot (may be thousands) of connections in a TIME-WAIT state introduce significant memory overhead. This option can reduce this memory overhead by reducing the time to keep a closed connection in a TIME-WAIT state. |
| Result fieldname                       | The field that you want to post the result output to.                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| HTTP status code fieldname             | The field that you want to post the status code output to.                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Response time (milliseconds) fieldname | The field that you want to post the response time, in milliseconds, to.                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| HTTP login                             | If this form requires authentication, this field should contain the username.                                                                                                                                                                                                                                                                                                                                                                                                                            |
| HTTP password                          | If this form requires authentication, this field should contain the password that corresponds with the username.                                                                                                                                                                                                                                                                                                                                                                                         |
| Proxy host                             | Hostname or IP address of the proxy server, if you use one.                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Proxy port                             | Port number of the proxy server, if you use one.                                                                                                                                                                                                                                                                                                                                                                                                                                                         |

</div>

<div class="sect2">

### Fields tab: Body (Header) Parameters

<div class="paragraph">

The Fields tab defines parameters for the HTTP request header and body. If you’ve filled in the URL and other necessary details in the General tab, you can use the Get values buttons to pre-populate the fields here. Body parameters are used in POST and PUT operations.

</div>

| Option         | Description                                                            |
| -------------- | ---------------------------------------------------------------------- |
| \#             | The order that this parameter will be passed to the Web application.   |
| Name           | The name of the field that contains the value to map to the parameter. |
| Parameter      | The parameter to map the value of Name to.                             |
| Put in Header? | If set to Y, the parameter will be put into the request header.        |

</div>

<div class="sect2">

### Fields tab: Query Parameters

<div class="paragraph">

The Fields tab defines parameters for the HTTP request header and body. If you’ve filled in the URL and other necessary details in the General tab, you can use the Get values buttons to pre-populate the fields here. Query parameters are specified in the URL and can be used in any HTTP method.

</div>

| Option | Description                                                            |
| ------ | ---------------------------------------------------------------------- |
| \#     | The order that this parameter will be passed to the Web application.   |
| Name   | The name of the field that contains the value to map to the parameter. |
| Value  | The value to map to the parameter.                                     |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:26 +0200

</div>

</div>
