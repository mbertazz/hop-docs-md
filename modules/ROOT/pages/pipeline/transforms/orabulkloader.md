<div id="header">

# <span class="image image-doc-icon">![Oracle Bulk Loader transform Icon](../assets/images/transforms/icons/orabulkloader.svg)</span> Oracle Bulk Loader

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
<p>This transform allows you to bulk load data to an Oracle database. It will write the data it receives to a proper load format and will then invoke Oracle SQL*Loader to transfer it to the specified table.</p>
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
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Connection</p></td>
<td><p>Name of the database connection on which the target table resides.</p></td>
</tr>
<tr class="odd">
<td><p>Target schema</p></td>
<td><p>The name of the Schema for the table to write data to.</p></td>
</tr>
<tr class="even">
<td><p>Target table</p></td>
<td><p>Name of the target table.</p></td>
</tr>
<tr class="odd">
<td><p>Sqldr path</p></td>
<td><p>Full path to the sqlldr utility (including sqlldr).</p></td>
</tr>
<tr class="even">
<td><p>Load method</p></td>
<td><p>The SQL*Loader method to use when loading data: * Automatic load (at the end) will start up sqlldr after receiving all input with the specified arguments in this transform. * Manual load will only create a control and data file, this can be used as a back-door: you can have Hop generate the data and create e.g. your own control file to load the data (outside of this transform). * Automatic load (on the fly) will start up sqlldr and pipe data to sqlldr as input is received by this transform.</p></td>
</tr>
<tr class="odd">
<td><p>Load action</p></td>
<td><p>Append, Insert, Replace, Truncate. These map to the sqlldr action to be performed.</p></td>
</tr>
<tr class="even">
<td><p>Maximum errors</p></td>
<td><p>The number of rows in error after which sqlldr will abort. This corresponds to the &quot;ERROR&quot; attribute of sqlldr.</p></td>
</tr>
<tr class="odd">
<td><p>Commit</p></td>
<td><p>The number of rows after which to commit, this corresponds to the &quot;ROWS&quot; attribute of sqlldr which differs between using a conventional and a direct path load.</p></td>
</tr>
<tr class="even">
<td><p>Bind Size</p></td>
<td><p>Corresponds to the &quot;BINDSIZE&quot; attribute of sqlldr.</p></td>
</tr>
<tr class="odd">
<td><p>Read Size</p></td>
<td><p>Corresponds to the &quot;READSIZE&quot; attribute of sqlldr.</p></td>
</tr>
<tr class="even">
<td><p>Control file</p></td>
<td><p>The name of the file used as control file for sqlldr.</p></td>
</tr>
<tr class="odd">
<td><p>Data file</p></td>
<td><p>The name of the data file in which the data will be written.</p></td>
</tr>
<tr class="even">
<td><p>Log file</p></td>
<td><p>The name of the log file (optional).</p></td>
</tr>
<tr class="odd">
<td><p>Bad file</p></td>
<td><p>The name of the bad file that will contain the rejected records (optional).</p></td>
</tr>
<tr class="even">
<td><p>Discard file</p></td>
<td><p>The name of the discard file that will contain filtered records that did not match any record-selection criteria specified in the control file (optional).</p></td>
</tr>
<tr class="odd">
<td><p>Encoding</p></td>
<td><p>Encodes data in a specific encoding, any valid encoding can be chosen besides the one in the drop down list.</p></td>
</tr>
<tr class="even">
<td><p>Oracle Character Set</p></td>
<td><p>The Oracle character set to use.</p></td>
</tr>
<tr class="odd">
<td><p>Alternate Record Terminator</p></td>
<td><p>Specify this value to override SQL*Loader''s default record terminator.</p></td>
</tr>
<tr class="even">
<td><p>Direct path</p></td>
<td><p>Switch on direct path loading (corresponds to DIRECT=TRUE in sqlldr).</p></td>
</tr>
<tr class="odd">
<td><p>Erase cfg/dat files after use</p></td>
<td><p>This option causes the control and data files to be erased after use.</p></td>
</tr>
<tr class="even">
<td><p>Fail on warning</p></td>
<td><p>This option causes the transform to fail on load warnings.</p></td>
</tr>
<tr class="odd">
<td><p>Fail on error</p></td>
<td><p>This option causes the transform to fail on load errors.</p></td>
</tr>
<tr class="even">
<td><p>Load data in parallel</p></td>
<td><p>This option causes data to be loaded in parallel. Parallel loading is only possible with a direct path option.</p></td>
</tr>
<tr class="odd">
<td><p>Fields to load</p></td>
<td><div class="content">
<div class="paragraph">
<p>This table contains a list of fields to load data from, properties include: * Table field: Table field to be loaded in the PostgreSQL table; * Stream field: Field to be taken from the incoming rows; * Date mask: Either &quot;Pass through, &quot;Date&quot; or &quot;DateTime&quot;, determines how date/timestamps will be loaded in Oracle.</p>
</div>
</div></td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:46 +0200

</div>

</div>
