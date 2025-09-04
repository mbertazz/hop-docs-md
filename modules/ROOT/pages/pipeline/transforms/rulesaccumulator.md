<div id="header">

# <span class="image image-doc-icon">![Rules accumulator transform Icon](../assets/images/transforms/icons/rules_acc.svg)</span> Rules accumulator

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
<p>The Rules Accumulator collects incoming rows and executes them against a rule set. This may be useful to determine the answer to a question or otherwise analyze a dataset.</p>
</div>
<div class="paragraph">
<p><a href="https://www.drools.org/">Drools</a> is the present rule engine implementation and its <a href="https://docs.drools.org/7.68.0.Final/drools-docs/html_single/index.html#_droolslanguagereferencechapter">rule language</a> can be referenced for use by this transform. <a href="https://docs.drools.org/7.68.0.Final/drools-docs/html_single/index.html#_welcome">Drools documentation</a></p>
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
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
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

## Details

<div class="sectionbody">

<div class="paragraph">

Once all incoming rows have been collected by the Rules Accumulator transform (e.g. - the previous transform shuts down) the rows are transformed into Rules.Row objects and passed into the rules engine to be executed against the given rule set.

</div>

<div class="paragraph">

Rules.Row is defined as a key / value Map of fields where key is the name of the field and value is the value of the field; as well as the externalSource boolean property to indicate whether the Rules.Row object was created in the rule set or injected from an external source.

</div>

<div class="paragraph">

Fields of a row are accessed as "Row (column\["\<fieldname\>"\])".

</div>

<div class="sect2">

### Rules Tab

<div class="paragraph">

The *Rules* tab is where you enter your rule definition or a reference to the rule file..

</div>

| Option                  | Description |
| ----------------------- | ----------- |
| Rules filename          |             |
| Rules script to execute |             |

</div>

<div class="sect2">

### Rules result Tab

<div class="paragraph">

Rules result tab defines the layout of the Rules output fields.

</div>

| Option             | Description |
| ------------------ | ----------- |
| Result column name |             |
| Result column type |             |

</div>

</div>

</div>

<div class="sect1">

## Example

<div class="sectionbody">

<div class="paragraph">

All Rule Definitions should contain "import org.apache.hop.pipeline.transforms.drools.Rules.Row;" to give access to the Rules.Row class.

</div>

<div class="paragraph">

For the input with a row meta: name (String), position (Integer), color (String); a Rules.Row object will be created for each row with a Map containing those fields.

</div>

| Rules.Row→row (Map) | Name | Position | Color |
| ------------------- | ---- | -------- | ----- |
|                     | Fred | 1        | Blue  |
|                     | Fred | 2        | Red   |
|                     | Bob  | 1        | Blue  |
|                     | Bob  | 1        | Red   |

<div class="paragraph">

Rules can be defined and applied:

</div>

<div class="listingblock">

<div class="content">

``` highlight
rule "Golfers problem"
    dialect "mvel"
    when

    # Define Fred
    $fred : Row ( externalSource == true,
        column["name"] == "Fred"
    )

    # Define Bob
    $bob : Row ( externalSource == true,
        column["name"] == "Bob",
        column["position"] != $fred.column["position"],
        column["color"] == "blue",
        column["color"] != $fred.column["color"],
    )

    then

      Row fredRow = new Row();
      Row bobRow = new Row();

      fredRow.addColumn("name", "Fred");
      fredRow.addColumn("position", $fred.column["position"]);
      fredRow.addColumn("color", $fred.column["color"]);

      bobRow.addColumn("name", "Bob");
      bobRow.addColumn("position", $bob.column["position"]);
      bobRow.addColumn("color", $bob.column["color"]);


      insert(fredRow);
      insert(bobRow);

end
```

</div>

</div>

<div class="paragraph">

Rules.Row objects can be checked as in the above’s left hand side.

</div>

<div class="paragraph">

Rules.Row objects can be created for the data stream as in the above’s right hand side.

</div>

<div class="paragraph">

The transform can be told what fields to pickup from the generated row objects by defining the field Map’s name in the transform’s Results tab. Type conversions can be applied by setting the Result column type as well.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:57 +0200

</div>

</div>
