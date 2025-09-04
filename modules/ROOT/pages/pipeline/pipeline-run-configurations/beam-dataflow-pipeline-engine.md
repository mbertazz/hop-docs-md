<div id="header">

# Apache Beam Google DataFlow Pipeline Engine

</div>

<div id="content">

<div class="sect1">

## Beam DataFlow

<div class="sectionbody">

<div class="paragraph">

Google Cloud Dataflow is a fully managed service for executing Apache Beam pipelines within the Google Cloud Platform ecosystem. As a managed Google Cloud service, it provisions worker nodes and out of the box optimization.

</div>

<div class="paragraph">

The Cloud Dataflow Runner and service are suitable for large scale continuous jobs and provide:

</div>

<div class="ulist">

  - A fully managed service

  - Autoscaling of the number of workers throughout the lifetime of the Dataflow job

  - Dynamic work re-balancing

</div>

<div class="paragraph">

Check the [Google DataFlow docs](https://cloud.google.com/dataflow/docs/guides/specifying-exec-params) and [Apache Beam DataFlow runner docs](https://beam.apache.org/documentation/runners/dataflow/) for more information.

</div>

</div>

</div>

<div class="sect1">

## Google Dataflow Configuration

<div class="sectionbody">

<div class="paragraph">

INFO: this configuration checklist was reprinted (copied) from the [Apache Beam documentation](https://beam.apache.org/documentation/runners/dataflow/).

</div>

<div class="paragraph">

To use the Google Cloud Dataflow runtime configuration, you must complete the setup in the *Before you begin* section of the [Cloud Dataflow quickstart](https://cloud.google.com/dataflow/docs/quickstarts) for your chosen language.

</div>

<div class="ulist">

  - Select or create a Google Cloud Platform Console project.

  - Enable billing for your project.

  - Enable the required Google Cloud APIs: Cloud Dataflow, Compute Engine, Stackdriver Logging, Cloud Storage, Cloud Storage JSON, and Cloud Resource Manager. You may need to enable additional APIs (such as BigQuery, Cloud Pub/Sub, or Cloud Datastore) if you use them in your pipeline code.

  - Authenticate with Google Cloud Platform.

  - Install the Google Cloud SDK.

  - Create a Cloud Storage bucket.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Project ID</p></td>
<td><p>The project ID for your Google Cloud Project. This is required if you want to run your pipeline using the Dataflow managed service.</p></td>
</tr>
<tr class="even">
<td><p>Service Account</p></td>
<td><p>With this option you can run the pipeline dataflow job with a specific service account, instead of the default GCE robot. The default is to leave this blank.</p></td>
</tr>
<tr class="odd">
<td><p>Application name</p></td>
<td><p>The name of the Dataflow job being executed as it appears in Dataflow’s jobs list and job details. Also used when updating an existing pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Staging location</p></td>
<td><p>Cloud Storage path for staging local files. Must be a valid Cloud Storage URL, beginning with gs://.</p></td>
</tr>
<tr class="odd">
<td><p>Initial number of workers</p></td>
<td><p>The initial number of Google Compute Engine instances to use when executing your pipeline. This option determines how many workers the Dataflow service starts up when your job begins.</p></td>
</tr>
<tr class="even">
<td><p>Maximum number of workers</p></td>
<td><p>The maximum number of Compute Engine instances to be made available to your pipeline during execution. Note that this can be higher than the initial number of workers (specified by numWorkers to allow your job to scale up, automatically or otherwise.</p></td>
</tr>
<tr class="odd">
<td><p>Auto-scaling algorithm</p></td>
<td><div class="content">
<div class="paragraph">
<p>The autoscaling mode for your Dataflow job. Possible values are THROUGHPUT_BASED to enable autoscaling, or NONE to disable. See <a href="https://cloud.google.com/dataflow/service/dataflow-service-desc#Autotuning">Autotuning features</a> to learn more about how autoscaling works in the Dataflow managed service.</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Worker machine type</p></td>
<td><p>The Compute Engine machine type that Dataflow uses when starting worker VMs. You can use any of the available Compute Engine machine type families as well as custom machine types.</p>
<p>For best results, use n1 machine types. Shared core machine types, such as f1 and g1 series workers, are not supported under the Dataflow Service Level Agreement.</p>
<p>Note that Dataflow bills by the number of vCPUs and GB of memory in workers. Billing is independent of the machine type family. Check the <a href="https://cloud.google.com/compute/docs/machine-types">list</a> of machine types for reference.</p></td>
</tr>
<tr class="odd">
<td><p>Worker disk type</p></td>
<td><p>The type of persistent disk to use, specified by a full URL of the disk type resource.</p>
<p>For example, use compute.googleapis.com/projects//zones//diskTypes/pd-ssd to specify a SSD persistent disk.</p>
<p><a href="https://cloud.google.com/compute/docs/disks#pdspecs">more</a>.</p></td>
</tr>
<tr class="even">
<td><p>Disk size in GB</p></td>
<td><p>The disk size, in gigabytes, to use on each remote Compute Engine worker instance. If set, specify at least 30 GB to account for the worker boot image and local logs.</p></td>
</tr>
<tr class="odd">
<td><p>Region</p></td>
<td><p>Specifies a Compute Engine region for launching worker instances to run your pipeline. This option is used to run workers in a different location than the region used to deploy, manage, and monitor jobs. The zone for workerRegion is <a href="https://cloud.google.com/dataflow/docs/concepts/regional-endpoints#autozone">automatically assigned</a>.</p>
<p>Note: This option cannot be combined with workerZone or zone.</p>
<p>(<a href="https://cloud.google.com/dataflow/docs/concepts/regional-endpoints">regions list</a>).</p></td>
</tr>
<tr class="even">
<td><p>Zone</p></td>
<td><p>Specifies a Compute Engine zone for launching worker instances to run your pipeline. This option is used to run workers in a different location than the region used to deploy, manage, and monitor jobs.</p>
<p>Note: This option cannot be combined with workerRegion or zone.</p></td>
</tr>
<tr class="odd">
<td><p>Network</p></td>
<td><p>This is the GCE network for launching workers. For more information, see the reference documentation <a href="https://cloud.google.com/compute/docs/networking" class="uri bare">https://cloud.google.com/compute/docs/networking</a>. The default is up to the Dataflow service.</p></td>
</tr>
<tr class="even">
<td><p>Subnetwork</p></td>
<td><p>This is the GCE subnetwork for launching workers. For more information, see the reference documentation <a href="https://cloud.google.com/compute/docs/networking" class="uri bare">https://cloud.google.com/compute/docs/networking</a>. The default is up to the Dataflow service.</p></td>
</tr>
<tr class="odd">
<td><p>Use public IPs?</p></td>
<td><p>Specifies whether worker pools should be started with public IP addresses. <strong>WARNING</strong>: This feature is experimental. You must be allowlisted to use it.</p></td>
</tr>
<tr class="even">
<td><p>Dataflow Service Options</p></td>
<td><p>This is a comma separated list of options in the format <code>option=value,option2=value2,…​</code>. It serves as a catch-all option for the Dataflow service. This helps if Beam is missing some service related options and if new options are added in the future older Beam versions could still use them through these catch-all options.</p></td>
</tr>
<tr class="odd">
<td><p>User agent</p></td>
<td><p>A user agent string as per <a href="https://tools.ietf.org/html/rfc2616">RFC2616</a>, describing the pipeline to external services.</p></td>
</tr>
<tr class="even">
<td><p>Temp location</p></td>
<td><p>Cloud Storage path for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.</p></td>
</tr>
<tr class="odd">
<td><p>Plugins to stage (, delimited)</p></td>
<td><p>Comma separated list of plugins.</p></td>
</tr>
<tr class="even">
<td><p>Transform plugin classes</p></td>
<td><p>List of transform plugin classes.</p></td>
</tr>
<tr class="odd">
<td><p>XP plugin classes</p></td>
<td><p>List of extensions point plugins.</p></td>
</tr>
<tr class="even">
<td><p>Streaming Hop transforms flush interval (ms)</p></td>
<td><p>The amount of time after which the internal buffer is sent completely over the network and emptied.</p></td>
</tr>
<tr class="odd">
<td><p>Hop streaming transforms buffer size</p></td>
<td><p>The internal buffer size to use.</p></td>
</tr>
<tr class="even">
<td><p>Fat jar file location</p></td>
<td><p>Fat jar location. Generate a fat jar using <code>Tools → Generate a Hop fat jar</code>. The generated fat jar file name will be copied to the clipboard.</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

**Environment Settings**

</div>

<div class="paragraph">

This environment variable need to be set locally.

</div>

<div class="listingblock">

<div class="content">

``` highlight
GOOGLE_APPLICATION_CREDENTIALS=/path/to/google-key.json
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Security considerations

<div class="sectionbody">

<div class="paragraph">

To allow encrypted (TLS) network connections to, for example, Kafka and Neo4j Aura certain older security algorithms are [disabled on Dataflow](https://github.com/apache/hop/blob/master/plugins/engines/beam/src/main/java/org/apache/hop/beam/engines/dataflow/DataFlowJvmStart.java). This is done by setting security property `jdk.tls.disabledAlgorithms` to value: `Lv3, RC4, DES, MD5withRSA, DH keySize < 1024, EC keySize < 224, 3DES_EDE_CBC, anon, NULL`.

</div>

<div class="paragraph">

Please let us know if you have a need to make this configurable and we’ll look for a way to not hardcode this. Just create a Github Issue to let us know.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:30 +0200

</div>

</div>
