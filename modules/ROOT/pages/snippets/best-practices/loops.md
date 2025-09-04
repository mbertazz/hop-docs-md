<div id="header">

</div>

<div id="content">

<div id="Loops" class="paragraph">

The easiest way to loop over a set of values, rows, files, …​ is to use an Executor transform.

</div>

<div class="ulist">

  - [Pipeline Executor](pipeline/transforms/pipeline-executor.hGtlngjwP4) : run a pipeline for each input row

  - [Workflow Executor](pipeline/transforms/workflow-executor.hGtlngjwP4) : run a workflow for each input row

  - [Repeat](workflow/actions/repeat.hGtlngjwP4): run a workflow or pipeline from a workflow action until a variable (value) is set.

  - [End Repeat](workflow/actions/repeat-end.hGtlngjwP4): break out of a loop that was started by a Repeat action.

</div>

<div class="paragraph">

Each of these options allows you to map field values to parameters for the child pipeline or workflow, making loops a breeze.

</div>

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
<td>Avoid the &quot;old&quot; way of looping in workflows through the <a href="pipeline/transforms/copyrowstoresult.hGtlngjwP4">Copy rows to result</a> transform. This mostly still exists for historical reasons. It makes it hard to see what is going on inside your loop, and this way of looping won’t be around in Apache Hop forever.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

The [Looping how-to guide](how-to-guides/loops-in-apache-hop.hGtlngjwP4) provides more detailed information on the topic.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:33 +0200

</div>

</div>
