<div id="header">

# <span class="image image-doc-icon">![Kafka Producer transform Icon](../assets/images/transforms/icons/KafkaProducerOutput.svg)</span> Kafka Producer

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
<p>The Kafka Producer transform allows you to publish messages in near-real-time across worker nodes where multiple, subscribed members have access.</p>
</div>
<div class="paragraph">
<p>A Kafka Producer transform publishes a stream of records to one Kafka topic.</p>
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

| Option            | Description                                                                                                                                                                                                        |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Transform name    | the name for this transform                                                                                                                                                                                        |
| Bootstrap servers | comma separated list of bootstrap servers in a Kafka cluster                                                                                                                                                       |
| Client ID         | The unique Client identifier, used to identify and set up a durable connection path to the server to make requests and to distinguish between different clients.                                                   |
| Topic             | The category to which records are published.                                                                                                                                                                       |
| Key Field         | In Kafka, all messages can be keyed, allowing for messages to be distributed to partitions based on their keys in a default routing scheme. If no key is present, messages are randomly distributed to partitions. |
| Message Field     | The individual record contained in a topic.                                                                                                                                                                        |

<div class="sect2">

### Options

<div class="paragraph">

Use this tab to configure the property formats of the Kafka consumer broker sources. A few of the most common property formats have been included for your convenience. You can enter any desired Kafka property. For further information on these input names, see the Apache Kafka documentation site: <https://kafka.apache.org/documentation/>.

</div>

<div class="paragraph">

The options that are included by default are:

</div>

| Option                  | Value  |
| ----------------------- | ------ |
| auto.offset.reset       | latest |
| ssl.key.password        |        |
| ssl.keystore.location   |        |
| ssl.keystore.password   |        |
| ssl.truststore.location |        |
| ssl.truststore.password |        |

</div>

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

Last updated 2025-09-04 18:22:32 +0200

</div>

</div>
