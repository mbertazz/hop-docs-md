<div id="header">

# Metadata Injection

</div>

<div id="content">

<div class="sect1">

## What is metadata injection?

<div class="sectionbody">

<div class="paragraph">

Metadata is at the very core of everything in Apache Hop. When you develop a pipeline, the transforms with all of the configuration options, the hops between those transforms and the pipeline run configuration you use to run the pipeline are all metadata items.

</div>

<div class="paragraph">

There are use cases where you’ll find yourself creating different variations of what is basically the same pipeline.

</div>

<div class="paragraph">

Consider this simple pipeline as an example: you need to load transaction data values from a supplier, filter out some specific values, and output everything to a file.

</div>

<div class="paragraph">

The process is always the same, the only difference is the different file layouts, maybe different values to filter out, and the output file.

</div>

<div class="paragraph">

Metadata injection can make this process a lot easier by taking the metadata for this pipeline from various sources and inject it into a *template pipeline* at runtime.

</div>

<div class="paragraph">

After injection, Apache Hop has an in-memory pipeline that is configured for the exact metadata you need for this run.

</div>

<div class="paragraph">

Instead of one pipeline per supplier, you’ll only need one template pipeline and one injecting pipeline. This significantly reduces the number of files to maintain, the number of repetitive tasks and thus increases stability maintainability of your project.

</div>

</div>

</div>

<div class="sect1">

## How metadata injection works

<div class="sectionbody">

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
<td>the sample below is available from the <code>metadata-injection</code> folder in the <code>samples</code> project.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

The *template pipeline* is an empty pipeline that contains all the necessary transforms and hops for the flow of the pipeline, but none of the configuration.

</div>

<div class="imageblock">

<div class="content">

![Metadata Injection - template pipeline](../assets/images/hop-gui/metadata-injection-template-pipeline.svg)

</div>

</div>

<div class="paragraph">

The *injecting pipeline* is a standard pipeline that gathers and prepares all of the required metadata to run the template pipeline through the [ETL Metadata Injection](./transforms/metainject.ep6t0GGgBg) transform.

</div>

<div class="paragraph">

The Metadata Injection transform reads the template pipeline and lets you map fields from the injecting pipeline to target fields in the transforms in the template pipelines.

</div>

<div class="imageblock">

<div class="content">

![Metadata Injection - injecting pipeline](../assets/images/hop-gui/metadata-injection-injecting-pipeline.svg)

</div>

</div>

<div class="paragraph">

Here’s what happens in the example below:

</div>

<div class="ulist">

  - **read customer metadata** parses a sample file and reads its file layout. The various items of the detected file layout are injected in the fields for `read customer data` in the template pipeline.

  - **static filename, format** provides the file name and file format from a data grid.

  - **rename fields** provides the original names and new names for fields that will be injected into the `cast dates` [Select Values](./transforms/selectvalues.ep6t0GGgBg) transform in the template pipeline.

  - **zips per state** provides all of the required information to configure `nb zip codes per state` the [Memory Group By](./transforms/memgroupby.ep6t0GGgBg) transform in the template pipeline

</div>

<div class="paragraph">

In addition to the injection explained above, the `sort state` [Sort Rows](./transforms/sort.ep6t0GGgBg) transform etc are configured by information (metadata) that was already provided to the metadata injection transform. Additionally, the metadata injection can be configured to provide static (hard-coded) values to the template pipeline.

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
<td>The <a href="./transforms/metainject.ep6t0GGgBg">ETL Metadata Injection</a> transform overrules the default behavior for pipelines: not all incoming streams need to have the same layout. It is perfectly ok to provide input to the metadata injection transform from different streams with different layouts.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Metadata Injection Debugging and Troubleshooting

<div class="sectionbody">

<div class="paragraph">

The [ETL Metadata Injection](./transforms/metainject.ep6t0GGgBg) transform generates and executes a generated pipeline with the injected metadata by default.

</div>

<div class="paragraph">

This may be one too many levels of abstraction when you’re debugging or troubleshooting pipelines that use metadata injection.

</div>

<div class="paragraph">

This default behavior can be overruled from the `Options` tab:

</div>

<div class="ulist">

  - Optional target file (hpl after injection)

  - Run resulting pipeline

</div>

<div class="paragraph">

Disabling the `run resulting pipeline` and providing a filename for the injected pipelines to be written to lets you open and troubleshoot the generated pipelines as you would with any other pipeline. This can make troubelshooting metadata injection significantly more productive.

</div>

</div>

</div>

<div class="sect1">

## Metadata Injection recommendations

<div class="sectionbody">

<div class="paragraph">

We recommend the following basic procedure for using this transform to inject metadata:

</div>

<div class="olist arabic">

1.  Optimize your data for injection, such as preparing folder structures and inputs.

2.  Develop pipelines for the repetitive process (the template pipeline), for metadata injection through the ETL Metadata Injection transform, and for handling multiple inputs.

</div>

<div class="paragraph">

The metadata is injected into the template pipeline through any transform that supports metadata injection.

</div>

</div>

</div>

<div class="sect1">

## Supported Transforms

<div class="sectionbody">

<div class="paragraph">

The goal is to add Metadata Injection support to all transforms, The current status is:

</div>

<div class="paragraph">

   

</div>

Details

<div class="content">

| Transform                              | Supports MDI |
| -------------------------------------- | ------------ |
| (EXPERIMENTAL) Beam Hive Catalog Input | Y            |
| Abort                                  | Y            |
| Add a checksum                         | Y            |
| Add constants                          | Y            |
| Add sequence                           | Y            |
| Add value fields changing sequence     | Y            |
| Add XML                                | Y            |
| Analytic query                         | Y            |
| Apache Tika                            | Y            |
| Append streams                         | Y            |
| Avro Decode                            | Y            |
| Avro Encode                            | Y            |
| Avro File Input                        | Y            |
| Avro File Output                       | Y            |
| AWS SNS Notify                         | Y            |
| AWS SQS Reader                         | Y            |
| Azure Event Hubs Listener              | Y            |
| Azure Event Hubs Writer                | Y            |
| Beam BigQuery Input                    | Y            |
| Beam BigQuery Output                   | Y            |
| Beam Bigtable Input                    | Y            |
| Beam Bigtable Output                   | Y            |
| Beam File Input                        | Y            |
| Beam File Output                       | Y            |
| Beam GCP Pub/Sub : Publish             | Y            |
| Beam GCP Pub/Sub : Subscribe           | Y            |
| Beam Kafka Consume                     | Y            |
| Beam Kafka Produce                     | Y            |
| Beam Kinesis Consume                   | Y            |
| Beam Kinesis Produce                   | Y            |
| Beam Timestamp                         | Y            |
| Beam Window                            | Y            |
| Block until transforms finish          | Y            |
| Blocking transform                     | Y            |
| Calculator                             | Y            |
| Call DB procedure                      | Y            |
| Cassandra input                        | Y            |
| Cassandra output                       | Y            |
| Change file encoding                   | Y            |
| Check if file is locked                | Y            |
| Check if webservice is available       | Y            |
| Clone row                              | Y            |
| Closure generator                      | Y            |
| Coalesce Fields                        | Y            |
| Column exists                          | Y            |
| Combination lookup/update              | Y            |
| Concat Fields                          | Y            |
| Copy rows to result                    | N            |
| CrateDB bulk loader                    | Y            |
| Credit card validator                  | Y            |
| CSV file input                         | Y            |
| Data grid                              | Y            |
| Data validator                         | Y            |
| Database join                          | Y            |
| Database lookup                        | Y            |
| De-serialize from file                 | Y            |
| Delay row                              | Y            |
| Delete                                 | Y            |
| Detect empty stream                    | N            |
| Dimension lookup/update                | Y            |
| Doris bulk loader                      | Y            |
| Dummy (do nothing)                     | N            |
| Dynamic SQL row                        | Y            |
| EDI to XML                             | Y            |
| Email messages input                   | N            |
| Enhanced JSON Output                   | N            |
| ETL metadata injection                 | Y            |
| Execute a process                      | Y            |
| Execute row SQL script                 | Y            |
| Execute SQL script                     | Y            |
| Execute Unit Tests                     | Y            |
| Execution Information                  | Y            |
| Fake data                              | Y            |
| File exists                            | Y            |
| File Metadata                          | Y            |
| Filter rows                            | Y            |
| Formula                                | Y            |
| Fuzzy match                            | Y            |
| Generate random value                  | Y            |
| Generate rows                          | Y            |
| Get data from XML                      | N            |
| Get file names                         | Y            |
| Get files from result                  | N            |
| Get files rows count                   | Y            |
| Get JDBC Metadata                      | Y            |
| Get Neo4j logging info                 | Y            |
| Get records from stream (deprecated)   | N            |
| Get rows from result                   | N            |
| Get Server Status                      | Y            |
| Get subfolder names                    | Y            |
| Get system info                        | Y            |
| Get table names                        | Y            |
| Get variables                          | Y            |
| Google Analytics 4                     | Y            |
| Google Sheets Input                    | Y            |
| Google Sheets Output                   | Y            |
| Group by                               | Y            |
| HTTP client                            | N            |
| HTTP post                              | Y            |
| Identify last row in a stream          | Y            |
| If Null                                | Y            |
| Injector                               | Y            |
| Insert / update                        | Y            |
| Java filter                            | Y            |
| JavaScript                             | Y            |
| Join rows (cartesian product)          | Y            |
| JSON input                             | Y            |
| JSON output                            | Y            |
| Kafka Consumer                         | Y            |
| Kafka Producer                         | Y            |
| LDAP input                             | N            |
| LDAP output                            | N            |
| Load file content in memory            | N            |
| Mail                                   | N            |
| Mapping Input                          | Y            |
| Mapping Output                         | N            |
| Memory group by                        | Y            |
| Merge join                             | Y            |
| Merge rows (diff)                      | Y            |
| Metadata Input                         | Y            |
| Metadata structure of stream           | Y            |
| Microsoft Access output                | Y            |
| Microsoft Excel input                  | Y            |
| Microsoft Excel writer                 | Y            |
| MonetDB bulk loader                    | Y            |
| MongoDB Delete                         | Y            |
| MongoDB input                          | Y            |
| MongoDB output                         | Y            |
| Multiway merge join                    | Y            |
| Neo4j Cypher                           | Y            |
| Neo4j Cypher Builder                   | Y            |
| Neo4j Generate CSVs                    | N            |
| Neo4j Graph Output                     | Y            |
| Neo4j Import                           | Y            |
| Neo4J Output                           | Y            |
| Neo4j Split Graph                      | N            |
| Null if                                | Y            |
| Number range                           | Y            |
| Oracle bulk loader                     | Y            |
| Parquet File Input                     | Y            |
| Parquet File Output                    | Y            |
| PGP decrypt stream                     | N            |
| PGP encrypt stream                     | N            |
| Pipeline executor                      | Y            |
| Pipeline Logging                       | Y            |
| Pipeline Probe                         | Y            |
| PostgreSQL Bulk Loader                 | Y            |
| Process files                          | Y            |
| Properties input                       | Y            |
| Properties output                      | N            |
| Redshift bulk loader                   | Y            |
| Regex evaluation                       | N            |
| Replace in string                      | Y            |
| Reservoir sampling                     | Y            |
| REST client                            | N            |
| Row denormaliser                       | Y            |
| Row flattener                          | Y            |
| Row normaliser                         | Y            |
| Rules accumulator                      | Y            |
| Rules executor                         | Y            |
| Run SSH commands                       | Y            |
| Salesforce delete                      | N            |
| Salesforce input                       | Y            |
| Salesforce insert                      | N            |
| Salesforce update                      | N            |
| Salesforce upsert                      | N            |
| Sample rows                            | Y            |
| SAS Input                              | N            |
| Schema Mapping                         | Y            |
| Script                                 | Y            |
| Select values                          | Y            |
| Serialize to file                      | Y            |
| Set field value                        | Y            |
| Set field value to a constant          | Y            |
| Set files in result                    | Y            |
| Set variables                          | Y            |
| Simple Mapping (sub-pipeline)          | Y            |
| Snowflake Bulk Loader                  | Y            |
| Sort rows                              | Y            |
| Sorted merge                           | Y            |
| Split field to rows                    | Y            |
| Split fields                           | Y            |
| Splunk Input                           | Y            |
| SQL file output                        | N            |
| SSTable output                         | Y            |
| Standardize phone number               | Y            |
| Stream lookup                          | Y            |
| Stream Schema Merge                    | N            |
| String operations                      | Y            |
| Strings cut                            | Y            |
| Switch / case                          | Y            |
| Synchronize after merge                | Y            |
| Table compare                          | Y            |
| Table exists                           | Y            |
| Table input                            | Y            |
| Table output                           | Y            |
| Teradata Fastload bulk loader          | N            |
| Text file input                        | Y            |
| Text file input (deprecated)           | N            |
| Text file output                       | Y            |
| Token Replacement                      | Y            |
| Unique rows                            | Y            |
| Unique rows (HashSet)                  | N            |
| Update                                 | Y            |
| User defined Java class                | Y            |
| User defined Java expression           | Y            |
| Value mapper                           | Y            |
| Vertica bulk loader                    | Y            |
| Web services lookup                    | N            |
| Workflow executor                      | N            |
| Workflow Logging                       | Y            |
| Write to log                           | Y            |
| XML input stream (StAX)                | N            |
| XML join                               | Y            |
| XML output                             | Y            |
| XSD validator                          | N            |
| XSL Transformation                     | N            |
| YAML input                             | N            |
| Zip file                               | Y            |

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:29 +0200

</div>

</div>
