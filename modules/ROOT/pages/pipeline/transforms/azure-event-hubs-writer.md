<div id="header">

# <span class="image image-doc-icon">![Azure Event Hubs Writer Icon](../assets/images/transforms/icons/azure.svg)</span> Azure Event Hubs Writer

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
<p>The Azure Event Hubs Writer transform allows you to write messages (events) to a streaming service bus called Event Hubs on the Microsoft Azure cloud platform.</p>
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

## Options

<div class="sectionbody">

<div class="paragraph">

Here are the important options to fill in to get the transform to work:

</div>

<div class="ulist">

  - Event Hubs namespace: the name of your Event Hubs namespace

  - Event Hubs instance name: the name of the Event Hub, the instance itself.

  - SAS Policy key name: the name of the policy in the "Shared Access Policies" section of the Event Hubs Namespace in the Azure dashboard. This needs to be a policy with the "Send" claim enabled.

  - SAS Key connection string: You can use the value in the policy labeled "Connection string–primary key"

  - Batch size: the number of messages (events) to send in one batch with each call to Azure.

  - Message field: the field containing the message to use as the events. Please note you can use a transform like JSON Output or "Java Script" to assemble the message.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:44 +0200

</div>

</div>
