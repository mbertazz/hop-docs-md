<div id="header">

# <span class="image image-doc-icon">![Get filenames transform Icon](../assets/images/transforms/icons/getfilenames.svg)</span> Get filenames

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
<p>The Get File Names transform allows you to get information associated with file names on the file system.</p>
</div>
<div class="paragraph">
<p>The information about the retrieved files is added as rows onto the stream.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

The output fields for this transform are:

</div>

<div class="ulist">

  - filename - the complete filename, including the path (/tmp/hop/somefile.txt)

  - short\_filename - only the filename, without the path (somefile.txt)

  - path - only the path (/tmp/hop/)

  - type

  - exists

  - ishidden

  - isreadable

  - iswriteable

  - lastmodifiedtime

  - size

  - extension

  - uri

  - rooturi

</div>

</div>

</div>

<div class="sect1">

## File tab

<div class="sectionbody">

<div class="paragraph">

This tab defines the location of the files you want to retrieve filenames for. For more information about specifying file locations, see section "Selecting file using Regular Expressions" on the Text File Input transform.

</div>

<div class="paragraph">

Example: You have a static directory of c:\\temp where you expect files with an extension of .dat to be placed. Under file/directory you would specify c:\\temp and under Wildcard you would have a RegEx with something like .\*\\.dat$

</div>

| Option                            | Description                                                                                                |
| --------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| Is filename defined in a field?   | Indicates whether the file you want to load is in a field that you can specify.                            |
| Get filename from field           | The field to load the file name from.                                                                      |
| Inclusion wildcard field (RegExp) | If you are loading multiple files, define a regular expression that matches the file names to load.        |
| Exclusion wildcard field (RegExp) | Define a regular expression that matches files you want to exclude from the transform.                     |
| Include subfolders?               | Indicates whether files in subfolders are considered by the expressions.                                   |
| File or directory                 | If the file is not defined by a field, specify the file name or the directory to load multiple files from. |
| Add                               | Click to add the specified file, directory, and regular expressions to the selected file list.             |
| Browse                            | Click to select a file.                                                                                    |
| Inclusion wildcard (RegExp)       | If you are loading multiple files, a regular expression that matches the file names you want to load.      |
| Exclusion wildcard (RegExp)       | Define a regular expression that matches files you want to exclude from the transform.                     |
| Selected files                    | Lists the selected files and the inclusion/exclusion expressions defined for them.                         |
| Delete                            | Click to remove a file from the Selected files list.                                                       |
| Edit                              | Click to modify a file in the Selected file list.                                                          |

</div>

</div>

<div class="sect1">

## Filters

<div class="sectionbody">

<div class="paragraph">

The filters tab allows you to filter the retrieved file names based on:

</div>

<div class="ulist">

  - All files and folders

  - Files only

  - Folders only

</div>

<div class="paragraph">

It also gives you:

</div>

<div class="ulist">

  - The ability to include a row number in the output

  - The ability to limit the number of rows returned. The limit parameter will act on the total number of rows returned and not only on the number of files returned.

  - The ability to add the filename(s) to the result list

  - The ability to print an error message in case no files/folders are found without stop processing

  - The ability to raise an exception and stop processing in case no files/folders are found.

</div>

| Option                                 | Description                                                                                                                                                                                    |
| -------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Filter type                            | Select what the filtering applies to. Select either all files and folders, only files, or only folders.                                                                                        |
| Include rownum in output?              | Whether the row number is included as a field in the output.                                                                                                                                   |
| Rownum fieldname                       | The name of the field the row number is reported in.                                                                                                                                           |
| Do not report error                    | Indicates whether the pipeline fails quietly if no files or folders match the filtering. If not selected, an error is reported if no file sor folders are available.                           |
| Raise an exception and stop processing | Indicates whether an exception is thrown if no files of folders match the filtering, which also stops the pipeline from continuing. If not selected, the pipeline continues without the files. |
| Limit                                  | The number of files and folders inluded in the output.                                                                                                                                         |
| Add filename to result?                | Indicates whether the file name is added as a field in the output.                                                                                                                             |

<div class="sect2">

### Details on how exceptions are raised when no files are found

<div class="paragraph">

As described above, if you enable the switch in the *Filter* tab, Hop will raise an exception in case no files are found and will stop the process.

</div>

<div class="paragraph">

In this case, we need to be aware about two different ways the exceptions are raised depending on the way you choose to identify the set of files you are looking for.

</div>

<div class="ulist">

  - If you specified the files (or the inclusion/exclusion expressions) as a set in the *Selected files* table, the files retrieval is performed by considering the entire set specified (all at once) and the exception is raised in no files are found.

  - If you specified the files by going through the *Filenames from field* option, the details about the files that we are going to retrieve comes in the incoming rows. That means that the retrieval is done row by row and as soon as one of the details used to specify the searched files fails the exception is raised. Therefore, in this case, the evaluation to fire the exception is done after the evaluation of each single incoming row and not evaluating the overall dataset returned and generated by the details found in the incoming rows.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:19 +0200

</div>

</div>
