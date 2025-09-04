<div id="header">

# Delete Folders

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Delete Folders` action deletes a set of folders and their content.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<table>
<colgroup>
<col style="width: 25%" />
<col style="width: 75%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Action name</p></td>
<td><p>The name of the workflow action.</p></td>
</tr>
<tr class="even">
<td><p>Settings</p></td>
<td><p>Copy previous results to args: Enable this option if the folders you want to delete come from the result files of the previous action in the workflow.</p></td>
</tr>
<tr class="odd">
<td><p>Success on</p></td>
<td><div class="content">
<div class="paragraph">
<p>Success condition : select one of :</p>
</div>
<div class="ulist">
<ul>
<li><p>When no error reported : everything deleted just fine</p></li>
<li><p>When at least x folders processed : specify x in the Limit field below</p></li>
<li><p>When the number of errors less than : specify the max nr of errors in the limit field below</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Limit</p></td>
<td><p>the number of folders to delete or number of errors, depending on the option chosen in the <code>Success condition</code> above.</p></td>
</tr>
<tr class="odd">
<td><p>Folders</p></td>
<td><div class="content">
<div class="paragraph">
<p>This is the list of all the folders to delete.</p>
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

Last updated 2025-09-04 18:24:06 +0200

</div>

</div>
