<div id="header">

# <span class="image image-doc-icon">![Execute Unit Tests transform Icon](../assets/images/transforms/icons/executetests.svg)</span> Execute Unit Tests

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
<p>The Execute Unit Tests transform fetches and executes the available <a href="pipeline/pipeline-unit-testing.zAubmasTRN">unit tests</a> for the current project.</p>
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

| Option                      | Description                                                                                                                                               |
| --------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name              | name for this transform                                                                                                                                   |
| Test name input field       | name of a field to get the unit test name from to determine which transforms to execute. This option is only available when the transform receives input. |
| Type of tests to run        | Development or Unit Test                                                                                                                                  |
| Pipeline output field name  | the pipeline that is tested                                                                                                                               |
| Unit test output field name | the unit test that is executed                                                                                                                            |
| Data set output field name  | the (golden) data set used for this test                                                                                                                  |
| transform output field name | the transform that is used in this test                                                                                                                   |
| Error output field name     | error status (Y or N)                                                                                                                                     |
| Comment output field name   | the comment or error message returned by the test                                                                                                         |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:12 +0200

</div>

</div>
