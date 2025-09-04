<div id="header">

</div>

<div id="content">

<div class="sect1">

## Functionality

<div class="sectionbody">

<div class="paragraph">

We can create a new variable resolver metadata element of type `Pipeline Variable Resolver`. The options used are fairly simple:

</div>

<div class="ulist">

  - The pipeline filename to use: The file name of the pipeline to run to resolve a variable expression.

  - Pipeline Run configuration name: this has to reference a run configuration of type: [Native Local](pipeline/pipeline-run-configurations/native-local-pipeline-engine.z5nYzaAy4C).

  - The name of the variable in the pipeline that will contain the expression to resolve

  - The name of the output field to use to pick up the value of the fields.

</div>

<div class="paragraph">

This setup gives you a lot of flexibility. Maybe you have a configuration file per database, per system, …​ In that case you can set the variable to contain the type or name of the database, system, …​ to read a configuration file for. You can retrieve multiple values from these alternative configuration stores and send them to the output transform in a single row.

</div>

<div class="admonitionblock important">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Important
</div></td>
<td>Only the first output row in the pipeline is considered.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

The variable expression is (as always) in the following format:

</div>

<div class="paragraph">

`#{name:variable:field}`

</div>

<div class="ulist">

  - name: the name of the variable resolver metadata element to use

  - variable: the variable value to set in the variable specified in the metadata (see above)

  - field: the name of the field for which we want to retrieve a string in the output transform.

</div>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

Suppose we have a number of databases we have configuration files for in separate properties files:

</div>

<div class="ulist">

  - db1.properties

  - db2.properties

  - db3.properties …​

</div>

<div class="paragraph">

These all contain the same 5 keys, with different values of-course:

</div>

<div class="listingblock">

<div class="content">

``` highlight
username=user1
password=pwd1
hostname=hostname1
port=port1
db=db1
```

</div>

</div>

<div class="paragraph">

We can then have a pipeline that reads and processes the appropriate file per type:

</div>

<div class="imageblock">

<div class="content">

![pipeline variable resolver pipeline](../assets/images/metadata-types/variable-resolver/pipeline-variable-resolver-pipeline.png)

</div>

</div>

<div class="paragraph">

The Variable Resolver metadata would look like this:

</div>

<div class="imageblock">

<div class="content">

![pipeline variable resolver conf](../assets/images/metadata-types/variable-resolver/pipeline-variable-resolver-conf.png)

</div>

</div>

<div class="paragraph">

Here are some examples of expressions and the results they give back:

</div>

<div class="ulist">

  - `#{conf:db1:username}` : user1

  - `#{conf:db2:db}` : db2

  - `#{conf:db3:port}` : port3

</div>

<div class="paragraph">

This gives you a lot of flexibility.

</div>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>In the case that you don’t specify any field to retrieve, the whole row will be encoded as a JSON value and given back.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:21 +0200

</div>

</div>
