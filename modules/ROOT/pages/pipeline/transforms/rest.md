<div id="header">

# <span class="image image-doc-icon">![REST Client transform Icon](../assets/images/transforms/icons/rest.svg)</span> REST Client

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
<p>The REST Client transform enables you to consume RESTfull services. Representational State Transfer (REST) is a key design idiom that embraces a stateless client-server architecture in which the web services are viewed as resources and can be identified by their URLs.</p>
</div>
<div class="paragraph">
<p>The REST client transform can use a pre-defined <a href="metadata-types/rest-connection.Ds5C0NY4hz">REST connection</a> or use full URLs directly.<br />
When using a REST connection, the URL (hard-coded or accepted from a field) will be considered a path relative to the base URL defined in the REST connection. Header values that are specified in the <code>Headers</code> tab of the transform will overwrite any headers with the same name that were defined in the REST connection.</p>
</div>
<div class="paragraph">
<p>When used without a REST connection, the full URL needs to be specified.</p>
</div>
</div>
</div>
<div class="sect1">
<h2 id="_example">Example</h2>
<div class="sectionbody">
<div class="paragraph">
<p>The REST client Transform returns a &quot;result&quot; field (can change the name), and the field is often used in the next transform. For example, it can be read in by a JSON input transform that extracts the fields specified on the Fields tab.</p>
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

The General tab is where you enter basic connection information for accessing a resource.

</div>

| Option                                 | Description                                                                                                                                                        |
| -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Transform name                         | Name of this transform as it appears in the pipeline workspace                                                                                                     |
| REST Connection                        | The (optional) [REST connection](metadata-types/rest-connection.Ds5C0NY4hz) to use for the base URL and authentication/authorization header name and value.        |
| URL                                    | Indicates the path to a resource                                                                                                                                   |
| Accept URL from field                  | Designates the path to a resource is defined from a field                                                                                                          |
| URL field name                         | Indicates the field from which the path to a resource is defined                                                                                                   |
| HTTP method                            | Indicates how the transform interacts with a resource---options are either GET, PUT, DELETE, POST, HEAD, or OPTIONS                                                |
| Get Method from field                  | Designates the GET method is defined from a field                                                                                                                  |
| Method fieldname                       | Indicates the field from which the GET method is defined                                                                                                           |
| Body field                             | Contains the request body for POST, PUT, and DELETE methods. Body field only accepts a previous field, not a hard coded value.                                     |
| Application type                       | Designates what type of application a resource is---options are either TEXT PLAIN, XML, JSON, OCTET STREAM, XHTML, FORM URLENCODED, ATOM XML, SVG XML, or TEXT XML |
| Connection timeout                     | Indicates the timeout until a connection is established (milliseconds)                                                                                             |
| Read timeout                           | Indicates the timeout for waiting for reading data (milliseconds)                                                                                                  |
| Result fieldname                       | Designates the name of the result output field                                                                                                                     |
| HTTP status code fieldname             | Designates the name of the HTTP status code field                                                                                                                  |
| Response time (milliseconds) fieldname | Designates the name of the response time field                                                                                                                     |

</div>

<div class="sect2">

### Authentication Tab

<div class="paragraph">

If necessary, enter authentication details for a resource in the Authentication tab.

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
<td>Hop allows using NULL parameters/variables for both the HTTP Login and HTTP Password.</td>
</tr>
</tbody>
</table>

</div>

| Option        | Description                                                                                                                                                                          |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| HTTP Login    | Indicates the username required to access a resource                                                                                                                                 |
| HTTP Password | Indicates the password associated with the provided HTTP Login username                                                                                                              |
| Preemptive    | Option to send the authentication credentials before a server gives an unauthorized response. Currently always true, due to [bug \#4196](https://github.com/apache/hop/issues/4196). |
| Proxy Host    | Indicates the name of a proxy host                                                                                                                                                   |
| Proxy Port    | Indicates the port number of a proxy host                                                                                                                                            |

</div>

<div class="sect2">

### SSL Tab

<div class="paragraph">

The SSL tab is where you provide authentication details for accessing a resource that requires SSL certificate authentication.

</div>

| Option              | Description                                                         |
| ------------------- | ------------------------------------------------------------------- |
| Truststore file     | Indicates the location of a truststore file                         |
| Truststore password | Indicates the password associated with the provided truststore file |

</div>

<div class="sect2">

### Headers Tab

<div class="paragraph">

The Headers tab enables you to define the content of any HTTP headers using an existing field. Populate the list of fields by clicking the Get fields button.

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
<td>To figure out what Headers are required, you can use Postman and remove as many headers as possible for the Request to still work. You should not need to use the Headers with value “&lt;calculated when request is sent&gt;” in Postman. You do not need to manually add an Authorization header if you used the Authentication tab.</td>
</tr>
</tbody>
</table>

</div>

| Option | Description                                                                                                                   |
| ------ | ----------------------------------------------------------------------------------------------------------------------------- |
| Field  | The field from incoming Hop stream that contains the header information. Add the header value field name to the Field column. |
| Name   | The name of the outgoing Hop field from this transform. Add the header key field name to the Name column.                     |

</div>

<div class="sect2">

### Parameters Tab

<div class="paragraph">

The Parameters tab enables you to define parameter values for POST, PUT, and DELETE requests. GET parameters should be part of the URL directly.

</div>

| Option    | Description                                                                |
| --------- | -------------------------------------------------------------------------- |
| Parameter | The field from incoming Hop stream that contains the parameter information |
| Parameter | The name of the outgoing Hop field from this transform                     |

</div>

<div class="sect2">

### Matrix Parameters tab

<div class="paragraph">

Use the Matrix Parameters tab to define matrix parameter values for POST, PUT, DELETE, and PATCH requests.

</div>

| Option    | Description                                                                           |
| --------- | ------------------------------------------------------------------------------------- |
| Parameter | The field from the incoming Hop stream that contains the matrix parameter information |
| Parameter | The name of the outgoing Hop field from this transform                                |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:54 +0200

</div>

</div>
