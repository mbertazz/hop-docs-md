<div id="header">

# <span class="image image-doc-icon">![Beam Kinesis Produce Icon](../assets/images/transforms/icons/beam-kinesis-produce.svg)</span> Beam Kinesis Produce

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
<p>The Beam <a href="https://aws.amazon.com/kinesis/">Kinesis</a> Produce transform sends data (messages) to an Amazon Kinesis stream using a Beam pipeline execution engine.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
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

## Limitations

<div class="sectionbody">

<div class="paragraph">

The main limitation of the Kinesis produce transform is that it currently only supports sending String data. Please create a request in GitHub if you want to see support for Avro messages and other formats.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                             | Description                                                                                                                                                                                       |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                     | Name of the transform, this name has to be unique in a single pipeline.                                                                                                                           |
| AWS access key                     | The Amazon Web Services access key to authenticate with.                                                                                                                                          |
| AWS secret key                     | The Amazon Web Services secret key to authenticate with.                                                                                                                                          |
| Stream name                        | The name of the Kinesis stream to write to.                                                                                                                                                       |
| The name of the data field to send | This is the name of the field that contains the actual data (message)                                                                                                                             |
| The type of data to send           | Only String data (messages) are supported for now.                                                                                                                                                |
| Partition key                      | The partition key to use                                                                                                                                                                          |
| Configuration options              | A list of configuration options. See [here](https://github.com/awslabs/amazon-kinesis-producer/blob/master/java/amazon-kinesis-producer-sample/default_config.properties) for a list of examples. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:51 +0200

</div>

</div>
