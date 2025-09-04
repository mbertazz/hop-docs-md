<div id="header">

# <span class="image image-doc-icon">![Kafka Consumer transform Icon](../assets/images/transforms/icons/KafkaConsumerInput.svg)</span> Kafka Consumer

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
<p>The Kafka Consumer transform pulls streaming data from Kafka. It runs a sub-pipeline that executes according to message batch size or duration, letting you process a continuous stream of records in near-real-time.</p>
</div>
<div class="paragraph">
<p>This sub-pipeline must start with an Injector transform.</p>
</div>
<div class="paragraph">
<p>You can define the number of messages to accept for processing, as well as the specific data formats to stream activity data and system metrics.</p>
</div>
<div class="paragraph">
<p>You can set up this transform to collect monitored events, track user consumption of data streams, and monitor alerts.</p>
</div>
<div class="paragraph">
<p>Kafka records are stored within topics, and consist of a category to which the records are published. Topics are divided into a set of logs known as partitions.</p>
</div>
<div class="paragraph">
<p>Kafka scales topic consumption by distributing partitions among a consumer group.</p>
</div>
<div class="paragraph">
<p>A consumer group is a set of consumers sharing a common group identifier.</p>
</div>
<div class="paragraph">
<p>Since the Kafka Consumer transform continuously ingests streaming data, you may want to use the Abort transform in your parent or sub-pipeline to stop consuming records from Kafka for specific workflows.</p>
</div>
<div class="paragraph">
<p>For example, you can run the parent pipeline on a timed schedule, or abort the sub-pipeline if sensor data exceeds a preset range.</p>
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

### General

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>The name for this transform</p></td>
</tr>
<tr class="even">
<td><p>Kafka pipeline</p></td>
<td><p>Specify the pipeline to execute by entering its path or clicking <em>Browse</em> and selecting the path.</p>
<p><strong>Note:</strong> this pipeline <strong>must</strong> start with an Injector transform.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Setup

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Bootstrap servers</p></td>
<td><p>Comma separated list of bootstrap servers in a Kafka cluster</p></td>
</tr>
<tr class="even">
<td><p>Topics</p></td>
<td><p>Enter the name of each Kafka topic from which you want to consume streaming data (messages).</p></td>
</tr>
<tr class="odd">
<td><p>Consumer group</p></td>
<td><p>Enter the name of the group of which you want this consumer to be a member. Each Kafka Consumer transform will start a single thread for consuming. If left empty, it will be defaulted to <em>Apache Hop</em>.</p>
<p>When part of a consumer group, each consumer is assigned a subset of the partitions from topics it has subscribed to, which locks those partitions. Each instance of a Kafka Consumer transform will only run a single consumer thread.</p></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Batch

<div class="paragraph">

Use this tab to determine how many messages to consume before processing. You can specify message count and/or a specific amount of time.

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
<td>While either option will trigger consumption, the first satisfied option will start the pipeline for the batch.</td>
</tr>
</tbody>
</table>

</div>

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Duration (ms)</p></td>
<td><p>Specify a time in milliseconds. This value is the amount of time the transform will spend collecting records prior to the execution of the pipeline. If set to a value of ‘0’, then Number of records triggers consumption.</p></td>
</tr>
<tr class="even">
<td><p>Number of records</p></td>
<td><p>Specify a number. After every ‘X’ number of records, the specified pipeline will be executed and these ‘X’ records will be passed to the pipeline. If set to a value of ‘0’ then Duration triggers consumption.</p></td>
</tr>
<tr class="odd">
<td><p>Offset management</p></td>
<td><div class="content">
<div class="paragraph">
<p>Choose when to commit</p>
</div>
<div class="ulist">
<ul>
<li><p>when record read</p></li>
<li><p>when batch completed</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

<div class="sect2">

### Fields

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Input name</p></td>
<td><div class="content">
<div class="paragraph">
<p>The input name is received from the Kafka streams. The following are received by default:</p>
</div>
<div class="ulist">
<ul>
<li><p><strong>key</strong>: Determines message distribution to partitions. If no key is present, messages are randomly distributed from partitions.</p></li>
<li><p><strong>message</strong>: The individual message contained in a record. Each record consists of a key, a value, and a timestamp.</p></li>
<li><p><strong>topic</strong>: The category to which records are published.</p></li>
<li><p><strong>partition</strong>: An ordered sequence of records that is continuously appended. You cannot have more consumers than the number of partitions.</p></li>
<li><p><strong>offset</strong>: A sequential ID number assigned by Kafka to each record. It uniquely identifies each record within the partition.</p></li>
<li><p><strong>timestamp</strong>: The time the message is received on the server.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Output name</p></td>
<td><p>The <em>Output name</em> can be mapped to subscriber and member requirements.</p></td>
</tr>
<tr class="odd">
<td><p>Type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The Type field defines the data format for streaming the record. You must choose the same data type that produced the records. This field applies to the ‘key’ and ‘message’ input names. Options include:</p>
</div>
<div class="ulist">
<ul>
<li><p>String</p></li>
<li><p>Boolean</p></li>
<li><p>Number</p></li>
<li><p>Integer</p></li>
<li><p>Binary</p></li>
</ul>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Result fields

<div class="sectionbody">

<div class="paragraph">

Return fields from a transform in the sub pipeline for further processing in this pipeline.

</div>

<div class="sect2">

### Options

<div class="paragraph">

Use this tab to configure the property formats of the Kafka consumer broker sources. A few of the most common property formats have been included for your convenience. You can enter any desired Kafka property. For further information on these input names, see the Apache Kafka documentation site: <https://kafka.apache.org/documentation/>.

</div>

<div class="paragraph">

The options that are included by default are:

</div>

| NName                   | Value  |
| ----------------------- | ------ |
| auto.offset.reset       | latest |
| ssl.key.password        |        |
| ssl.keystore.location   |        |
| ssl.keystore.password   |        |
| ssl.truststore.location |        |
| ssl.truststore.password |        |

</div>

<div class="sect2">

### Error handling

<div class="paragraph">

The Kafka consumer supports error handling but this is **limited to the case** of Batch Size equal to 1 (records from the Kafka queue are processed one by one). In this case, whenever a record coming from the Kafka queue generates an error in the called sub pipeline, that record will be sent along to the error path for further processing. The record that enter the error path is committed in Kafka and next records in the queue can be processed without any problem. Apart the errors fields inserted by error handling, the layout of the record flowing into the error path will be the layout specified in *Field* tab.

</div>

<div class="paragraph">

This feature is very useful in any case where we have a record in the Kafka queue that is stopping processing of further records (because it generates an error during processing) and we want to "remove it" from the queue so that we can process the remaining records in the queue. The failing record can be saved somewhere (for example saved to a file or to a DB table) for further investigation.

</div>

</div>

<div class="sect2">

### Avro and Schema registry

<div class="paragraph">

Here are some options you need to consume Avro Record values from a Kafka server. The schema of Avro values are not sent to Kafka but to a schema registry. As such you need to have one available. Here are some options you need to set to make this work on a Confluent Cloud Kafka instance. There are various parts of the software stack that need authentication, hence the bit of redundancy. We recommend that you put these options in variables in your environment configuration file.

</div>

| Option                               | Example                                                                                                                        |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| schema.registry.url                  | <https://abcd-12345x.europe-west3.gcp.confluent.cloud>                                                                         |
| key.deserializer                     | org.apache.kafka.common.serialization.StringDeserializer                                                                       |
| value.deserializer                   | io.confluent.kafka.serializers.KafkaAvroDeserializer                                                                           |
| value.converter.schema.registry.url  | <https://abcd-12345x.europe-west3.gcp.confluent.cloud>                                                                         |
| sasl.jaas.config                     | org.apache.kafka.common.security.plain.PlainLoginModule required username="CLUSTER\_API\_KEY" password="CLUSTER\_API\_SECRET"; |
| security.protocol                    | SASL\_SSL                                                                                                                      |
| basic.auth.credentials.source        | USER\_INFO                                                                                                                     |
| basic.auth.user.info                 | CLUSTER\_API\_KEY:CLUSTER\_API\_SECRET                                                                                         |
| schema.registry.basic.auth.user.info | SCHEMA\_REGISTRY\_API\_KEY:SCHEMA\_REGISTRY\_API\_SECRET                                                                       |
| sasl.mechanism                       | PLAIN                                                                                                                          |
| client.dns.lookup                    | use\_all\_dns\_ips                                                                                                             |
| acks                                 | ALL                                                                                                                            |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:31 +0200

</div>

</div>
