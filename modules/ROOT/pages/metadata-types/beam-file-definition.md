<div id="header">

# Beam File Definition

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![folder](/images/icons/folder.svg)</span>

</div>

<div class="paragraph">

A Beam File Definition describes a file layout in a Beam pipeline and specifies the file layout (name, field definitions, enclosure and separator) to be used in Beam Pipelines.

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

  - [Beam Input](pipeline/transforms/beamfileinput.4yNY1syaHc)

  - [Beam Output](pipeline/transforms/beamfileoutput.4yNY1syaHc)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option            | Description                                                                                                  |
| ----------------- | ------------------------------------------------------------------------------------------------------------ |
| Name              | The name to be used for this Beam file definition                                                            |
| Description       | The description to be used for this Beam file definition                                                     |
| Field Separator   | separator used between fields in the file definition                                                         |
| Enclosure         | field enclosure used for fields in the file definition                                                       |
| Field Definitions | List of field name, type, format, length and precision. Describes the file layout for this field definition. |

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="ulist">

  - beam/pipelines/complex.hpl

  - beam/pipelines/generate-synthetic-data.hpl

  - beam/pipelines/input-process-output.hpl

  - beam/pipelines/switch-case.hpl

  - beam/pipelines/unbounded-synthetic-data.hpl

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:09 +0200

</div>

</div>
