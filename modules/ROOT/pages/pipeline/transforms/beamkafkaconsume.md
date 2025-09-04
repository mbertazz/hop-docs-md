<div id="header">

# <span class="image image-doc-icon">![Beam Kafka Consume Icon](../assets/images/transforms/icons/beam-kafka-input.svg)</span> Beam Kafka Consume

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
<p>The Beam Kafka Consume transform <a href="https://kafka.apache.org/23/javadoc/index.html?org/apache/kafka/clients/consumer/KafkaConsumer.html">consumes</a> records from a Kafka cluster using the Beam execution engine.</p>
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

The main limitation of the Kafka Consumer is that it currently only supports reading Strings as keys and String and Avro Record as values.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                               | Description                                                                                                                           |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name                       | Name of the transform, this name has to be unique in a single pipeline.                                                               |
| Bootstrap servers                    | A comma separated list of hosts which are Kafka brokers in a "bootstrap" Kafka cluster.                                               |
| Topics to consume                    | A comma separated list of topics to consume.                                                                                          |
| Group ID                             | Specifies the ID of a consumer group a Kafka consumer belongs to.                                                                     |
| The name of the key output field     | The result key field.                                                                                                                 |
| The name of the message output field | The result message field.                                                                                                             |
| The message type (default is Sting)  | The type of message to get from Kafka.                                                                                                |
| Schema registry URL (Avro)           | The schema registry URL in case you’re consuming Avro Record messages                                                                 |
| Schema registry subject (Avro)       | The name of the subject (schema name) in the schema registry. This will allow us to know what kind of Avro values are being consumed. |
| Use processing time                  | The time when the record is processed by Beam.                                                                                        |
| Use log append time                  | The time when the record is appended by the broker.                                                                                   |
| Use create time                      | The time when the producer record is created.                                                                                         |
| Restrict read to committed messages  | Restricts reading to committed records only.                                                                                          |
| Allow offsets to be committed back   | Allows committing offsets as to mark an offset as consumed.                                                                           |
| Configuration options                | A list of configuration parameters.                                                                                                   |
| Parameter                            | A configuration parameter.                                                                                                            |
| Value                                | The parameter value.                                                                                                                  |
| Type                                 | The value data type.                                                                                                                  |

<div class="sect2">

### Avro and Schema registry

<div class="paragraph">

Here are some options you need to consume Avro Record values from a Kafka server. The schema of Avro values are not sent to Kafka but to a schema registry. As such you need to have one available. Here are some options you need to set to make this work on a Confluent Cloud Kafka instance. There are various parts of the software stack that need authentication, hence the bit of redundancy. We recommend that you put these options in variables in your environment configuration file.

</div>

| Option                               | Example                                                                                                                        |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------ |
| auto.offset.reset                    | earliest (or latest)                                                                                                           |
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

Last updated 2025-09-04 18:21:49 +0200

</div>

</div>
