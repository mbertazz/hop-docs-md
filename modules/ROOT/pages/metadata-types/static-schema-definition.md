<div id="header">

# Static Schema Definition

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![folder](/images/icons/folder.svg)</span>

</div>

<div class="paragraph">

A Static Schema Definition describes a stream layout that can be applied to a selected set of input/output transforms. The Schema Definition is a way to define a recurrent stream layout, that can be reused in multiple pipelines.

</div>

<div class="paragraph">

Being able to use the same schema definition in multiple pipelines simplifies development and reduces the risk of errors in manual field or layout specification.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="paragraph">

Transforms:

</div>

<div class="ulist">

  - [Text File Input](pipeline/transforms/textfileinput.L1Bun4ueHJ)

  - [Text File Output](pipeline/transforms/textfileoutput.L1Bun4ueHJ)

  - [CSV Input](pipeline/transforms/csvinput.L1Bun4ueHJ)

  - [Excel Input](pipeline/transforms/excelinput.L1Bun4ueHJ)

  - [Excel Writer](pipeline/transforms/excelwriter.L1Bun4ueHJ)

  - [Schema Mapping](pipeline/transforms/schemamapping.L1Bun4ueHJ)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option            | Description                                                                             |
| ----------------- | --------------------------------------------------------------------------------------- |
| Name              | The name to be used for this schema definition                                          |
| Description       | The description to be used for this schema definition                                   |
| Field Separator   | separator used between fields in the schema definition                                  |
| Enclosure         | field enclosure used for fields in the schema definition                                |
| Field Definitions | List of fields and attributes that describe the file layout for this schema definition. |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:19 +0200

</div>

</div>
