<div id="header">

# Shell

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Shell` action executes a shell script on the host where the workflow is running.

</div>

<div class="paragraph">

For example, suppose you have a program that reads five data tables and creates a file in a specified format.

</div>

<div class="sect2">

### Scripts or executables

<div class="paragraph">

Shell allows you to do portions of your work in Apache Hop but reuse the program that reads the data tables as needed.

</div>

<div class="paragraph">

The Shell workflow action is platform agnostic; you can use a batch file, UNIX, and so on.

</div>

<div class="paragraph">

When you use a Shell workflow action, Hop makes a Java call to execute a program in a specified location.

</div>

</div>

<div class="sect2">

### Embedded scripts

<div class="paragraph">

As an alternative to calling scripts on the host machine, you can enter scripts (e.g. batch on Windows, shell script on Linux) directly in the `Shell` action.

</div>

</div>

<div class="sect2">

### Return status

<div class="paragraph">

The return status is provided by the operating system call.

</div>

<div class="paragraph">

For example, in batch scripting a return value of 1 indicates that the script was successful; a return value of 0 (zero) indicates that it was unsuccessful.

</div>

<div class="paragraph">

You can pass command line arguments and set up logging for the Shell workflow action.

</div>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

Option

</div>

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Insert script

<div class="content">

<div class="paragraph">

Check this option when you want to execute the script in the Script tab instead of executing the Script file name. This is also useful, when you want to execute operating system commands like dir, ls or ipconfig without giving a specific path. This option creates a temporary script in the working directory and executes it.

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
<td>Variables are resolved within the script when given.</td>
</tr>
</tbody>
</table>

</div>

</div>

Script file name

The filename of the shell script to start, should include full path else ${user.dir} is used as path.

Working directory

The directory that will be used as working directory for the shell script. The working directory only becomes active when the shell script starts so "Filename" should still include the full path to the script. When the field is left empty or the working directory is invalid ${user.dir} will be used as working directory.

Logging settings

Specify log file

Enable to specify a separate logging file for the execution of this workflow.

Append logfile

Enable to append to the logfile as opposed to creating a new one

Name of log file

The directory and base name of the log file (for example C:\\logs)

Extension of the log file

The filename extension (for example: log or txt)

Include date in filename?

Adds the system date to the filename. (\_20051231)

Include time in filename?

Adds the system time to the filename. (\_235959)

Loglevel

Specifies the logging level for the execution of the shell. See also the logging window in .14 Logging

Copy previous results to arguments?

The results from a previous pipeline can be sent to the shell script using the "Copy rows to result" transform. (as arguments)

Execute once for every input row

This implements looping. If the previous workflow action returns a set of result rows, you can have this shell script executed once for every row found. One row is passed to this script at every execution in combination with the copy previous result to arguments. The values of the corresponding result row can then be found on command line argument $1, $2, …​ (%1, %2, %3, …​ on Windows)

Arguments table

Specify the strings to use as arguments for the shell script.

<div class="sect2">

### Script tab

<div class="paragraph">

This tab contains your batch or shell script if the `Insert script` option is checked.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:27 +0200

</div>

</div>
