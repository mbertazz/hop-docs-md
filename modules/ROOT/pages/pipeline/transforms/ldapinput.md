<div id="header">

# <span class="image image-doc-icon">![LDAP Input transform Icon](../assets/images/transforms/icons/ldapinput.svg)</span> LDAP Input

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
<p>The LDAP Input transform allows you to read information like users, roles and other data from an LDAP server.</p>
</div>
<div class="paragraph">
<p>The following sections describe the available options for the LDAP input transform.</p>
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

## General Tab

<div class="sectionbody">

| Option                 | Description                                                              |
| ---------------------- | ------------------------------------------------------------------------ |
| Transform name         | Name of the transform; this name has to be unique in a single pipeline.  |
| Host                   | Host can be the IP address of the LDAP directory server or its DNS name. |
| Port                   | Port number of LDAP directory server.                                    |
| Use authentication     | To enable LDAP authentication                                            |
| Username               | The username to be passed during authentication.                         |
| Password               | The password to be passed during authentication.                         |
| Use certificate        | To enable the use of a certificate.                                      |
| Trust store path       |                                                                          |
| Trust store password   |                                                                          |
| Trust all certificates |                                                                          |
| Test connection        | Tests the configured connection to the LDAP server.                      |

</div>

</div>

<div class="sect1">

## Search Tab

<div class="sectionbody">

| Option                  | Description                                                                                                                         |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Dynamic search base     | Enables the search base field.                                                                                                      |
| Search base fieldname   | The field containing the base LDAP node.                                                                                            |
| Search base             | Base LDAP node to search the LDAP contents.                                                                                         |
| Dynamic filter string   | Enables the filter string field.                                                                                                    |
| Filter string fieldname | The field containing the filter string.                                                                                             |
| Filter String           | LDAP filter to search the customized contents, in the current stage only "single filter format" is supported like. Example: mail=\* |

</div>

</div>

<div class="sect1">

## Advanced Tab

<div class="sectionbody">

| Option                        | Description                                       |
| ----------------------------- | ------------------------------------------------- |
| Include rownum in output?     | Adds a row number to the output.                  |
| Rownum fieldname              | The field containing the row number.              |
| Limit                         | Limit the number of results returned.             |
| Time limit                    | Limit the amount of time given to return results. |
| Multi valued field separator. |                                                   |
| Set paging                    |                                                   |
| Page size                     |                                                   |
| Search scope                  | Object scope, One level scope, Subtree scope      |

</div>

</div>

<div class="sect1">

## Fields Tab

<div class="sectionbody">

| Option         | Description                                                                                                                         |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| Name           | The name of the imported field. Note: If you renamed a field in the Select & Alter tab, the name here must match the renamed value. |
| Attribute      |                                                                                                                                     |
| Fetch as       | String, Binary                                                                                                                      |
| Is sorted Key? | Y/N                                                                                                                                 |
| Type           | The data type for this field.                                                                                                       |
| Format         | The format mask (number type or date format)                                                                                        |
| Length         | The field length.                                                                                                                   |
| Precision      | The precision option depends on the field type, but only Number is supported; it returns the number of floating point digits.       |
| Currency       | Symbol used to represent currencies                                                                                                 |
| Decimal        | A decimal point; this is either a dot or a comma                                                                                    |
| Group          | A method of separating units of thousands in numbers of four digits or larger. This is either a dot or a comma.                     |
| Trim type      | Where to trim the field, left, right, both, none                                                                                    |
| Repeat         | If LDAP returns no value for an attribute, use the value from the previous row                                                      |
| Get fields     | Gets the result fields                                                                                                              |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:33 +0200

</div>

</div>
