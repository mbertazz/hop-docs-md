<div id="header">

# Avro

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

From [avro.apache.org](https://avro.apache.org):

</div>

<div class="paragraph">

Apache Avro™ is a data serialization system. To learn more about Avro, please read the [current documentation](https://avro.apache.org/docs/current/).

</div>

<div class="paragraph">

Hop supports Avro through a number of plugins. First and foremost we support Avro as a data type called "Avro Record". It simply describes a class of type `org.apache.avro.generic.GenericRecord`. This in turn encapsulates both an Avro schema and a set of values.

</div>

</div>

</div>

<div class="sect1">

## Pipeline Transforms

<div class="sectionbody">

<div class="ulist">

  - [Avro Decode](pipeline/transforms/avro-decode.hsSjjKcLJm): This allows you to extract Hop values from an Avro Record data type.

  - [Avro Encode](pipeline/transforms/avro-encode.hsSjjKcLJm): This allows you to extract Hop values from an Avro Record data type.

</div>

</div>

</div>

<div class="sect1">

## Kafka Producer transforms

<div class="sectionbody">

<div class="paragraph">

If you want to send or receive Avro records using the Hop Kafka transforms it’s important to set a few options:

</div>

| Option                                | Description                                                                                              | Example                        |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------- | ------------------------------ |
| `value.converter.schema.registry.url` | Specify the URL of your Confluent schema registry.                                                       | <http://confluent-server:8081> |
| `schema.registry.url`                 | Specify the URL of your Confluent schema registry.                                                       | <http://confluent-server:8081> |
| `auto.register.schemas`               | Instruct Kafka to automatically register the schema of the Avro record in the Confluent schema registry. | true                           |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:51 +0200

</div>

</div>
