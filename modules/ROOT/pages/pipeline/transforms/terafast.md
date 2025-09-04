<div id="header">

# <span class="image image-doc-icon">![Teradata Bulk Loader transform Icon](../assets/images/transforms/icons/terafast.svg)</span> Teradata Bulk Loader

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
<p>The Teradata Bulkloader transform supports fastloading data into a Teradata database using the fastload command line tool.</p>
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

| Option                                | Description                                                            |
| ------------------------------------- | ---------------------------------------------------------------------- |
| Transform name                        | Name of the transform this name has to be unique in a single pipeline. |
| Use control file                      | Work in control file mode.                                             |
| Control file                          | The path to the control file to be used.                               |
| Variable Substitution in control file | Make use of POI Variables (eg: ${RUN\_ID}) in the control file.        |
| Path to fastload                      | The path to the fastload command line utility.                         |
| Error log                             | An optional Error log to be created by Fastload.                       |
| Connection                            | A connection to the Teradata DB.                                       |
| Target table                          | The table to be loaded.                                                |
| Truncate table                        | Truncate the target table before loading.                              |
| Data file                             | The name of the temporary data file.                                   |
| Sessions                              | Number of sessions to be used by Fastload.                             |
| Error limit                           | The error limit for Fastload.                                          |
| Field mapping                         | Definition of POI \<→ DB Field mapping.                                |

<div class="sect2">

### Fastload Control File

<div class="paragraph">

Runs as a transform within a pipeline completely independent from other transforms.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:18 +0200

</div>

</div>
