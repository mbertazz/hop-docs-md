<div id="header">

</div>

<div id="content">

<div class="admonitionblock tip">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Tip
</div></td>
<td>the metrics in this table can be captured and processed in a standard pipeline (e.g to write to a database table or Apache Kafka topic) with a <a href="metadata-types/pipeline-log.MpFDfrGaoy">Pipeline Log</a></td>
</tr>
</tbody>
</table>

</div>

<div class="admonitionblock warning">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>the metrics available in this table depend on your Pipeline run configuration.<br />
The <a href="pipeline/pipeline-run-configurations/native-local-pipeline-engine.MpFDfrGaoy">Local pipeline engine</a> always shows these metrics in real-time.</td>
</tr>
</tbody>
</table>

</div>

| Metric         | Description                                                                                                                                                                                                            |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Copy           | The transform copy these metrics apply to. See [Specify Copies](pipeline/specify-copies.MpFDfrGaoy) for more details                                                                                                   |
| Input          | Number of rows read from an input source like files, relational or NoSql databases etc                                                                                                                                 |
| Read           | Number of rows coming from previous transform                                                                                                                                                                          |
| Written        | Number of rows leaving this transform toward next transform                                                                                                                                                            |
| Output         | Number of rows written to an output target like files, relational or NoSql databases etc                                                                                                                               |
| Updated        | Number of rows updated by the transform in an output target like files, relational or NoSql databases etc                                                                                                              |
| Rejected       | Number of rows that were rejected by the transform and diverted to an error handling transform                                                                                                                         |
| Errors         | Number of errors in the execution of this transform that were not diverted to an error handling transform (marked by a red error triangle on the transform)                                                            |
| Buffers Input  | Number of rows in the input buffer for this transform (can only higher than 0 during execution)                                                                                                                        |
| Buffers Output | Number of rows in the output buffer for this transform (can only higher than 0 during execution)                                                                                                                       |
| Duration       | The execution duration for this transform                                                                                                                                                                              |
| Speed          | The execution speed in rows per second for this transform. This is close to the number of rows processed (written or output) by this transform divided by the duration (not exact because of rounding in the duration) |
| Status         | The transform status; Running, Stopped, Finished,                                                                                                                                                                      |

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:46 +0200

</div>

</div>
