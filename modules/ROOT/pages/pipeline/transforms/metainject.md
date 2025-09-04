<div id="header">

# <span class="image image-doc-icon">![Metadata Injection transform Icon](../assets/images/transforms/icons/GenericTransform.svg)</span> Metadata Injection

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
<p>Metadata injection allows Apache Hop users to provide the required metadata for a pipeline at runtime. This can significantly reduce the need to develop slightly different versions of what is basically the same pipeline.</p>
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

## Usage

<div class="sectionbody">

<div class="paragraph">

The Metadata Injection transform (MDI transform) inserts data and transform properties into a pipeline that is dynamically configured at runtime. This is typically used to enhance reusability of a pipeline.

</div>

<div class="paragraph">

E.g. Use Case: If you have 10 different CSV file definitions and don’t want to create 10 pipelines for each separate file, you can use ETL metadata injection. After the MDI transform is configured (mapping data and properties to the template/target pipeline), at run-time it will dynamically populate any non configured transform properties in the target pipeline. For example, in the template file, if you leave the Table input Database fields empty, and if configured in the MDI transform, it will populate the Table field and Stream fields dynamically.

</div>

<div class="paragraph">

Basically, the ETL Metadata Injection transform overrules the default behavior for the named pipeline. Not all incoming streams need to have the same layout. It is perfectly OK to provide input to the metadata injection transform from different streams with different layouts.

</div>

<div class="paragraph">

**Sample files:**

</div>

<div class="ulist">

  - **Configure MDI:** read-and-inject-metadata.hpl

  - **Read and fill in Template:** read-file-template.hpl

</div>

<div class="paragraph">

[Read more on metadata injection](pipeline/metadata-injection.QZZuDZYMuE)

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Transform name</p></td>
<td><p>Name of the transform.</p></td>
</tr>
<tr class="even">
<td><p>Pipeline</p></td>
<td><p>Specify your template pipeline by entering in its path. Click Browse to display and enter the path details using the Virtual File System Browser.</p>
<p>If you select a pipeline that has the same root path as the current pipeline, the variable ${Internal.Transform.Current.Directory} will automatically be inserted in place of the common root path. For example, if the current pipeline’s path is /home/admin/pipeline.hpl and you select a pipeline in the folder /home/admin/path/sub.hpl then the path will automatically be converted to ${Internal.Transform.Current.Directory}/path/sub.hpl.</p></td>
</tr>
</tbody>
</table>

<div class="paragraph">

The ETL Metadata Injection transform features the two tabs with fields. Each tab is described below.

</div>

</div>

<div class="sect2">

### Inject Metadata Tab

<div class="paragraph">

This tab shows transforms and properties on the target/template file that will be modified at run-time. Map each property to a source that you would like to be populated dynamically.

</div>

| Option                         | Description                                                                                               |
| ------------------------------ | --------------------------------------------------------------------------------------------------------- |
| Target injection transform key | Lists the available fields in each transform of the template pipeline that can be injected with metadata. |
| Target description             | Describes how the target fields relate to their target transforms.                                        |
| Source transform               | Lists the transform associated with the fields to be injected into the target fields as metadata.         |
| Source field                   | Lists the fields to be injected into the target fields as metadata.                                       |

<div class="paragraph">

To specify the source field as metadata to be injected, perform the following transforms:

</div>

<div class="olist arabic">

1.  In the Target injection transform key column, double-click the field for which you want to specify a source field. The Source field dialog box opens.

2.  Select a source field and click OK.

3.  Optionally, select Use constant value to specify a constant value for the injected metadata through one of the following actions:
    
    <div class="ulist">
    
      - Manually entering a value.
    
      - Using an internal variable to set the value (${Internal.transform.Unique.Count} for example).
    
      - Using a combination of manually specified values and parameter values (${FILE\_PREFIX}\_${FILE\_DATE}.txt for example).
    
    </div>

</div>

<div class="paragraph">

When specifying constant values for grouped lists of values like fields or filenames please note that there isn’t a good solution for that. Best practice is to use a [Data Grid](pipeline/transforms/datagrid.QZZuDZYMuE) transform to inject a complete set of constant values. You can map those in this metadata injection transform. It will do its best to accommodate you by allowing you to inject a single row in the group with the specified constant value.

</div>

<div class="sect3">

#### Injecting Metadata into the ETL Metadata Injection transform

<div class="paragraph">

For injecting metadata into the ETL Metadata Injection transform itself, the following exceptions apply:

</div>

<div class="ulist">

  - To inject a method for how to specify a field (such as by FILENAME), set a PIPELINE\_SPECIFICATION\_METHOD constant to the field of an input transform. You can then map the field as a source to the PIPELINE\_SPECIFICATION\_METHOD constant in the ETL Metadata Injection transform.

  - The target field for the ETL Metadata Injection transform inserting the metadata into the original injection is defined by \[GROUP NAME\].\[FIELD NAME\]. For example, if the GROUP NAME is 'OUTPUT\_FIELDS' and the FIELD NAME is 'OUTPUT\_FIELDNAME', you would set the target field to 'OUTPUT\_FIELDS.OUTPUT\_FIELDNAME'.

</div>

</div>

</div>

<div class="sect2">

### Options Tab

| Option                                     | Description                                                                                                                                                                                                                                                               |
| ------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| transform to read from (optional)          | Optionally, select a transform in your template pipeline to pass data directly to a transform following the ETL Metadata Injection transform in your current pipeline.                                                                                                    |
| Field name                                 | If transform to read from is selected, enter the name of the field passed directly from the transform in the template pipeline.                                                                                                                                           |
| Type                                       | If transform to read from is selected, select the type of the field passed directly from the transform in the template pipeline.                                                                                                                                          |
| Length                                     | If transform to read from is selected, enter the length of the field passed directly from the transform in the template pipeline.                                                                                                                                         |
| Precision                                  | If transform to read from is selected, enter the precision of the field passed directly from the transform in the template pipeline.                                                                                                                                      |
| Optional target file (hpl after injection) | For initial pipeline development or debugging, specify an optional file for creating and saving a pipeline of your template after metadata injection occurs. The resulting pipeline will be your template pipeline with the metadata already injected as constant values. |
| Streaming source transform                 | Select a source transform in your current pipeline to directly pass data to the Streaming target transform in the template pipeline.                                                                                                                                      |
| Streaming target transform                 | Select the target transform in your template pipeline to receive data directly from the Streaming source transform.                                                                                                                                                       |
| Run resulting pipeline                     | Select to inject metadata and run the template pipeline. If this option is not selected, metadata injection occurs, but the template pipeline does not run.                                                                                                               |

<div class="paragraph">

**Troubleshooting**

</div>

<div class="ulist">

  - Enter a pipeline filename in "Optional target file (hpl after injection)" so that a file will be generated after injection. This pipeline will contain all the properties after injection and can be viewed and executed for testing.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:38 +0200

</div>

</div>
