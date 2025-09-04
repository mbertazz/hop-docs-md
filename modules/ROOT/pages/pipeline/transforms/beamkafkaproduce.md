<div id="header">

# <span class="image image-doc-icon">![Beam Kafka Produce Icon](../assets/images/transforms/icons/beam-kafka-output.svg)</span> Beam Kafka Produce

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
<p>The Beam Kafka Produce transform <a href="https://kafka.apache.org/25/javadoc/index.html?org/apache/kafka/clients/producer/KafkaProducer.html">publishes</a> records to a Kafka cluster using the Beam execution engine.</p>
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

The main limitation of the Kafka Producer is that it currently only supports writing or producing Strings as keys and String and Avro Record as values.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                      | Description                                                                             |
| --------------------------- | --------------------------------------------------------------------------------------- |
| Transform name              | Name of the transform, this name has to be unique in a single pipeline.                 |
| Bootstrap servers           | A comma separated list of hosts which are Kafka brokers in a "bootstrap" Kafka cluster. |
| The topics                  | The topics to publish to.                                                               |
| The field to use as key     | The record key.                                                                         |
| The field to use as message | The record message.                                                                     |

<div class="sect2">

### Avro and Schema registry

<div class="paragraph">

Here are some options you need to send Avro Record values to a Kafka server. The schema of Avro values are not sent to Kafka but to a schema registry. As such you need to have one available. Here are some options you need to set to make this work on a Confluent Cloud Kafka instance. There are various parts of the software stack that need authentication, hence the bit of redundancy. We recommend that you put these options in variables in your environment configuration file.

</div>

| Option                               | Example                                                                                                                        |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| schema.registry.url                  | <https://abcd-12345x.europe-west3.gcp.confluent.cloud>                                                                         |
| value.converter.schema.registry.url  | <https://abcd-12345x.europe-west3.gcp.confluent.cloud>                                                                         |
| auto.register.schemas                | true                                                                                                                           |
| security.protocol                    | SASL\_SSL                                                                                                                      |
| sasl.jaas.config                     | org.apache.kafka.common.security.plain.PlainLoginModule required username="CLUSTER\_API\_KEY" password="CLUSTER\_API\_SECRET"; |
| username                             | CLUSTER\_API\_KEY                                                                                                              |
| password                             | CLUSTER\_API\_SECRET                                                                                                           |
| sasl.mechanism                       | PLAIN                                                                                                                          |
| client.dns.lookup                    | use\_all\_dns\_ips                                                                                                             |
| acks                                 | ALL                                                                                                                            |
| basic.auth.credentials.source        | USER\_INFO                                                                                                                     |
| basic.auth.user.info                 | CLUSTER\_API\_KEY:CLUSTER\_API\_SECRET                                                                                         |
| schema.registry.basic.auth.user.info | SCHEMA\_REGISTRY\_API\_KEY:SCHEMA\_REGISTRY\_API\_SECRET                                                                       |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:50 +0200

</div>

</div>
