<div id="header">

# <span class="image image-doc-icon">![Add a Checksum Icon](../assets/images/transforms/icons/checksum.svg)</span> Add a checksum

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
<p>The Add a Checksum transform calculates checksums for one or more fields in the input stream and adds this to the output as a new field.</p>
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
<td><p>Name of the transform. Note: This name has to be unique in a single pipeline.</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><div class="content">
<div class="paragraph">
<p>The type of checksum that needs to be calculated. These are the types that are available:</p>
</div>
<div class="ulist">
<ul>
<li><p>CRC32 : 32-bit Cyclic Redundancy Check : <a href="http://en.wikipedia.org/wiki/Cyclic_redundancy_check" class="uri bare">http://en.wikipedia.org/wiki/Cyclic_redundancy_check</a></p></li>
<li><p>ADLER 32 : Checksum algorithm by Mark Adler: <a href="http://en.wikipedia.org/wiki/Adler-32" class="uri bare">http://en.wikipedia.org/wiki/Adler-32</a></p></li>
<li><p>MD5 : Message Digest algorithm 5 : <a href="http://en.wikipedia.org/wiki/MD5" class="uri bare">http://en.wikipedia.org/wiki/MD5</a></p></li>
<li><p>SHA-1 : Secure Hash Algorithm 1 : <a href="http://en.wikipedia.org/wiki/SHA-1" class="uri bare">http://en.wikipedia.org/wiki/SHA-1</a></p></li>
<li><p>SHA-256 : Secure Hash Algorithm 2 : <a href="http://en.wikipedia.org/wiki/SHA-256" class="uri bare">http://en.wikipedia.org/wiki/SHA-256</a></p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Result Type</p></td>
<td><p>Some checksum types allow to set different result types: String, Hexadecimal and Binary</p></td>
</tr>
<tr class="even">
<td><p>Result field</p></td>
<td><p>The name of the result field containing the checksum</p></td>
</tr>
<tr class="odd">
<td><p>Fields used in the checksum</p></td>
<td><p>The names of the fields to include in the checksum calculation. Note: You can use the &quot;Get Fields&quot; button to insert all input fields from previous transforms.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:37 +0200

</div>

</div>
