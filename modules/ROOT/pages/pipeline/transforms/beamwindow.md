<div id="header">

# <span class="image image-doc-icon">![Beam Window Icon](../assets/images/transforms/icons/beam-window.svg)</span> Beam Window

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
<p>The Beam Window transform adds event-time-based window functions using the Beam execution engine.</p>
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
<td><p>Window type</p></td>
<td><div class="content">
<div class="ulist">
<ul>
<li><p>Fixed</p></li>
<li><p>Sliding</p></li>
<li><p>Session</p></li>
<li><p>Global</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Window size (duration in seconds)</p></td>
<td><p>Sets the window duration size in seconds, default 60.</p></td>
</tr>
<tr class="even">
<td><p>Every x seconds (Sliding windows)</p></td>
<td><p>Sets the slide window duration in seconds.</p></td>
</tr>
<tr class="odd">
<td><p>Window start field</p></td>
<td><p>The field containing the window start time.</p></td>
</tr>
<tr class="even">
<td><p>Window end field</p></td>
<td><p>The field containing the window end time.</p></td>
</tr>
<tr class="odd">
<td><p>Window max field</p></td>
<td><p>The field containing the max duration between events.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Window Types

<div class="sectionbody">

<div class="sect2">

### Fixed

<div class="paragraph">

Fixed or tumbling windows are used to repeatedly segment data into distinct time segments and do not overlap. Events cannot belong to more than one window.

</div>

</div>

<div class="sect2">

### Sliding

<div class="paragraph">

Sliding windows produce an output only when an event occurs and continuously move forward. Every window will have at least one event and can overlap. Events can belong to more than one window.

</div>

</div>

<div class="sect2">

### Session

<div class="paragraph">

Session windows group events which arrive at similar times and filter out periods of time when there is no data.

</div>

<div class="paragraph">

The window begins when the first event occurs and extends to include new events within a specified timeout. If events keep occurring the window will keep extending until maximum duration is reached.

</div>

</div>

<div class="sect2">

### Global

<div class="paragraph">

Global windowing is the default in Beam and ignores event time (spanning all of event time) and uses triggers to provide snapshots of that window.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:51 +0200

</div>

</div>
