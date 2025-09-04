<div id="header">

# <span class="image image-doc-icon">![Vertica Bulk Loader transform Icon](../assets/images/transforms/icons/vertica.svg)</span> Vertica Bulk Loader

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
<div class="paragraph">
<p>The Vertica Bulk Loader uses <a href="https://www.vertica.com/docs/12.0.x/HTML/Content/Authoring/ConnectingToVertica/ClientJDBC/UsingVerticaCopyStream.htm">VerticaCopyStream</a> to stream to a Vertica database.</p>
</div>
<div class="paragraph">
<p>This is typically significantly faster than loading data through e.g. a Table Output transform.</p>
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

<div class="sect2">

### Global transform options

| Option                  | Description                                                                                                                               |
| ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name          | Name of the transform.                                                                                                                    |
| Connection              | Name of the database connection on which the target table resides.                                                                        |
| Target schema           | The name of the Schema for the table to write data to. This is important for data sources that allow for table names with dots '.' in it. |
| Target table            | Name of the target table.                                                                                                                 |
| Truncate table          | Truncate this table before loading data                                                                                                   |
| Truncate on first row   | Only truncate this table if there is data (when the first row is received)                                                                |
| Specify database fields | Enable this option to specify the fields in the Database fields tab. Otherwise all fields are taken into account by default.              |

</div>

<div class="sect2">

### Main options tab

| Option                 | Description                                                                                                                                  |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Insert directly to ROS | Insert directly to ROS (Read Optimized Store). A ROS (Read Optimized Store) container is a set of rows stored in a particular group of files |
| Abort on error         | Stop or continue loading data as soon as an error occurs                                                                                     |
| Exceptions log file    | Path to the exceptions log file                                                                                                              |
| Reject data log file   | Path to the rejected data log file                                                                                                           |
| Stream name            | Name for the Vertica COPY stream                                                                                                             |

</div>

<div class="sect2">

### Database fields tab

<div class="paragraph">

Map table columns to stream fields using 'Get Fields' and/or 'Enter Field Mapping'.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:23 +0200

</div>

</div>
