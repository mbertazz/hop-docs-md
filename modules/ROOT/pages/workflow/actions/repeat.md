<div id="header">

# Repeat

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Repeat` action repeats the pipeline or workflow of your choice until a certain condition is met. The condition is either:

</div>

<div class="ulist">

  - A variable in the workflow is set or set to a certain value

  - The End Repeat action is executed in the specified repeating workflow

</div>

<div class="paragraph">

In addition to the workflow and pipeline executor transforms, the Repeat and [End Repeat](workflow/actions/repeat-end.L7UfXJ1aeA) actions let you build loops from a workflow. It requires a workflow or pipeline and a run configuration to use. The action will continue to execute the specified workflow or pipeline until a condition is met: either a variable is set or a variable set to an specific optional value, or an End repeat action is triggered in a child workflow.

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
<td>If you use a variable name for the file to repeat, ensure a default parameter is set with a file extension so Hop knows if it is a pipeline or a workflow file.</td>
</tr>
</tbody>
</table>

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
<td>A variable set with a scope of 'valid in the JVM' in a pipeline will not be accessible upstream of a repeating pipeline.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

The samples project example: `/loops/repeat-action.hwf` and `child-check-set-counter-value.hpl` runs a pipeline that increments a `${COUNTER}` variable with each run. If the variable values exceeds 10, a variable `${END_LOOP}` is set. This variable is detected by the Repeat action, and the loop stops. Because the Variable scope of `COUNTER` in the workflow is set to “Valid in the current workflow”, when you set `COUNTER` in the child the new value goes upstream.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Option

</div>

</div>

</div>

Description

Workflow action name

The name of the workflow action.

File to repeat

The filename of the pipeline or workflow to execute repeatedly.

Run configuration

<div class="content">

<div class="paragraph">

The pipeline or workflow run configuration to use.

</div>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>if you set a variable on a remote server the value is currently not reported back so only local workflow engines are currently supported.</td>
</tr>
</tbody>
</table>

</div>

</div>

Stop repeating when this variable is set

Specify the variable you want to be checked before stopping the repeat loop

Optional variable value

Only stop repeating when the above variable is set and contains this exact value. If you stop the Repeat downstream with a variable value that was set via scope: valid in the Java Virtual Machine, you will have to reset the variable manually in the same way because resetting the stop variable in the Repeat’s Parameters/Variables tab will not work.

Delay in seconds

Add a delay of x seconds between repeated executions of the selected workflow or pipeline.

Keep variable values after execution

This option keeps the variable values after a (repeating) pipeline or workflow execution to inject into the next iteration.

Logging file

Log the execution to a file?

Check if you want to log the repeated executions of the selected workflow or pipeline to a log file

Base log file name

The base log filename to use to which the options below can optionally be appended.

Log file extension

The extension to use for the log file

Add date to filename?

Add the current date to the log filename

Add time to filename?

Add the current time to the log filename

Add repetition number to filename

Add the repetition number to the log file name

Append to any existing log file

Append instead of creating a new file when the current log file already exist.

Log file update interval?

The update interval (in milliseconds) to update the log file

Parameters/Variables to set

You can specify the values of any parameters or variables in this dialog. The values can contain variables themselves which will be resolved before every iteration. If the option `Keep variable values after execution` is set we evaluate the expression only once before the first execution of the file.

To send Parameters to a Repeat Action, set the parameters/variables name and Value columns. Value can be hard-coded or reference a parameter/variable name. Parameters do not automatically flow through a Repeat Action.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:24 +0200

</div>

</div>
