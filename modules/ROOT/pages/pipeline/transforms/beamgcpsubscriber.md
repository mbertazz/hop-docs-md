<div id="header">

# <span class="image image-doc-icon">![Beam Pub/Sub Subscribe Icon](../assets/images/transforms/icons/beam-gcp-pubsub-subscribe.svg)</span> Beam GCP Pub/Sub : Subscribe

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
<p>The Beam GCP Pub/Sub : Subscribe transform gets messages from a <a href="https://cloud.google.com/pubsub">Google Cloud Pub/Sub</a> topic using a subscription with the Beam execution engine.</p>
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

## Options

<div class="sectionbody">

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
<td><p>Name of the transform, this name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Subscription name</p></td>
<td><p>Name of the Google Cloud Pub/Sub subscription.</p></td>
</tr>
<tr class="odd">
<td><p>Topic to subscribe to</p></td>
<td><p>The Google Cloud Pub/Sub topic.</p></td>
</tr>
<tr class="even">
<td><p>The type of message to read</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>String</p></li>
<li><p>PubsubMessage</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>The output field name</p></td>
<td><p>The field containing the result message.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:48 +0200

</div>

</div>
