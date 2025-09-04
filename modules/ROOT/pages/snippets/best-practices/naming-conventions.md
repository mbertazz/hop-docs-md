<div id="header">

</div>

<div id="content">

<div class="sect2">

### Naming conventions

<div class="paragraph">

As your project grows, the importance of keeping things organized grows. A clearly organized project makes it easier to find the workflows, pipelines and other project artefacts, and makes your project easier to maintain overall.

</div>

<div class="paragraph">

Your naming convention should not only cover all aspects of your projects. For Apache Hop, that means conventions for your workflows, pipelines, transforms, actions and metadata items. There’s more to your project than just Apache Hop, and other areas of your project are no exception. Input and output files, database tables etc will be a lot easier to manage if named clearly, cleanly and consistently.

</div>

<div class="paragraph">

For larger projects, a formal naming conventions document helps to centrally manage the naming conventions, and helps to avoid confusion when different team members use their own naming conventions interchangeably.

</div>

<div class="paragraph">

A naming convention should be maintained, updated, enforced and verified periodically. Automated naming convention checks (e.g. through scripts in commit hooks) could be considered to automate the validation of your naming conventions.

</div>

</div>

<div class="sect2">

### Transform and action names

<div class="paragraph">

Clearly named transforms and actions make your pipelines and workflows a lot easier to understand.

</div>

<div class="paragraph">

The default action and transform names use the action or transform name. This makes it easy to understand what the transform does, but tell you nothing about the purpose it has in your workflow or pipeline.

</div>

<div class="paragraph">

`Filter rows` (or god forbid, `Filter rows 2 2` or similar names you get after copy/pasting transforms) doesn’t tell you anything. A short but concise transform name like `start_date < today` tells you exactly what is going on in a filter transform.

</div>

<div class="imageblock">

<div class="content">

![Showing the differences when giving transforms a descriptive name](../assets/images/best-practices-naming.png)

</div>

</div>

<div class="paragraph">

For example, for input and output files, you could use the filename you’re reading from or writing to.

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
<td>You can use (copy/paste) any unicode character in the name of a transform or action and even newlines are allowed.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect2">

### Metadata

<div class="paragraph">

Metadata item names like relational database connections should immediately tell you what data they contain or what their purpose is.

</div>

<div class="paragraph">

Metadata item names shouldn’t contain technical or environment details.

</div>

<div class="paragraph">

For example, if your CRM system runs in a Postgresql database, `CRM` is fine as a name. Your connection is configured for an Oracle database, so that doesn’t need to be repeated in the name. Environment information should be configured in your project lifecycle environments, so there’s no need to include `dev`, `test` or `prod` in your connection names.

</div>

</div>

<div class="sect2">

### Project folders and subfolders

<div class="paragraph">

Organizing your project in clearly named folders and subfolders makes everything easier to find, to organize and to maintain. Avoid keeping tens or hundreds of workflow files in a single folder.

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:35 +0200

</div>

</div>
