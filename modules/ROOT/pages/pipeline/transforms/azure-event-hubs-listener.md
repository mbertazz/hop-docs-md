<div id="header">

# <span class="image image-doc-icon">![Azure Event Hubs Listener Icon](../assets/images/transforms/icons/azure.svg)</span> Azure Event Hubs Listener

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
<p>The Azure Event Hubs Listener transform listens indefinitely to an Event Hub on the Microsoft Azure cloud platform.</p>
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
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/cross.svg" alt="Not Supported" width="24" /></span></p>
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

## Connection options

<div class="sectionbody">

<div class="ulist">

  - Event Hubs namespace: the name of your Event Hubs namespace

  - Event Hubs instance name: the name of the Event Hub, the instance itself.

  - Event Hub connection string: Typically the same as the SAS Key Connection String

  - SAS Policy key name: the name of the policy in the "Shared Access Policies" section of the Event Hubs Namespace in the Azure dashboard. This needs to be a policy with the "Send" claim enabled.

  - SAS Key connection string: You can use the value in the policy labeled "Connection string–primary key"

  - Batch size: the number of messages (events) to send in one batch with each call to Azure.

  - Message field: the field containing the message to use as the events. Please note you can use a transform like JSON Output or "Java Script" to assemble the message.

  - Consumer Group name: If you didn’t create a specific group, just use $Default

  - Storage Container name: the name of your storage container

  - Storage Connection String: the key1 or key2 Connection string from the Access keys section of your storage account.

</div>

</div>

</div>

<div class="sect1">

## Tuning options

<div class="sectionbody">

<div class="ulist">

  - Batch size: The number of events to get at once from the event hub and to (optionally) pass to a batching pipeline (see below)

  - Prefetch size: (optional) the number of events to pre-fetch

</div>

</div>

</div>

<div class="sect1">

## Output fields

<div class="sectionbody">

<div class="ulist">

  - Message output field : the name of the output field containing the message (event)

  - Partition ID field : the name of the output field for the partition ID

  - Offset field name : the name of the output field for the event offset

  - Sequence number field name : the name of the output field for the event sequence number

  - Host (owner) field name : the name of the output field for the event host

  - Enqueued time field name : the name of the output field for the time the event was queued.

</div>

</div>

</div>

<div class="sect1">

## Batch processing options

<div class="sectionbody">

<div class="paragraph">

In order to make sure that all records are processed safely before we checkpoint the events stream, we need to run all logic we need to run, update everything we need to update, before we do so. To do this we pass all the rows we read in one batch to the specified batch pipeline (which will run single threaded)

</div>

<div class="ulist">

  - Batch pipeline: the batch pipeline file name

  - pipeline input transform: the name of the "Injector" or "Get records from Stream" transform to send the events to in the batch pipeline.

  - pipeline output transform: (optional) the name of the transform to read from in the batch pipeline and to use as output of this Listener transform.

  - Maximum wait time (ms): (optional but highly recommended\!) The maximum time to wait before the batch pipeline is executed despite the fact that you might not have the specified number of records in the batch. This is useful to prevent stale records from getting stuck in the batch pipeline input for longer periods of time when you might not have new events arriving from a hub.

</div>

</div>

</div>

<div class="sect1">

## Important notes

<div class="sectionbody">

<div class="paragraph">

The batch pipeline starts with an Injector transform. It receives the following fields:

</div>

<div class="ulist">

  - message (String)

  - partitionId (String)

  - offset (String)

  - sequenceNumber (Integer)

  - host (String)

  - enqueuedTime (Timestamp)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:44 +0200

</div>

</div>
