<div id="header">

# <span class="image image-doc-icon">![User Defined Java Class transform Icon](../assets/images/transforms/icons/userdefinedjavaclass.svg)</span> User Defined Java Class

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
<p>The User Defined Java Class transform allows you to enter User Defined Java Class to drive the functionality of a complete transform.</p>
</div>
<div class="paragraph">
<p>In essence, this transform allows you to program your own plugin in a transform.</p>
</div>
<div class="paragraph">
<p>The goal of this transform is not to allow a user to do full-scale Java development inside a transform.</p>
</div>
<div class="paragraph">
<p>Obviously we have a whole plugin system available to help with that part.</p>
</div>
<div class="paragraph">
<p>The goal is to allow users to define methods and logic with as little as code as possible, executed as fast as possible.</p>
</div>
<div class="paragraph">
<p>For this we use the <a href="https://janino-compiler.github.io/janino/">Janino</a> project libraries that compile Java code in the form of classes at runtime.</p>
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
<td><div class="content">
<div class="paragraph">
<p>Transform name</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Name of the transform.</p>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Class code</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>The Java code.</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Fields</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>List of output fields.</p>
</div>
<div class="ulist">
<ul>
<li><p>Fieldname: Output field name.</p></li>
<li><p>Type: Type of field.</p></li>
<li><p>Length: Length of the field.</p></li>
<li><p>Precision: Precision of the field.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Parameters</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>You can use the Parameters table to avoid using hard-coded string values, such as field names (customer for example).</p>
</div>
<div class="ulist">
<ul>
<li><p>Tag: The parameter tag.</p></li>
<li><p>Value: The parameter value.</p></li>
<li><p>Description: Description of the parameter.</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Info transforms</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Additional transforms to read data from</p>
</div>
<div class="ulist">
<ul>
<li><p>Tag</p></li>
<li><p>Transform: Which transform to read from.</p></li>
<li><p>Description</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="even">
<td><div class="content">
<div class="paragraph">
<p>Target transforms</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Destination Transform</p>
</div>
<div class="ulist">
<ul>
<li><p>Tag</p></li>
<li><p>Transform: Which transform to output to.</p></li>
<li><p>Description</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><div class="content">
<div class="paragraph">
<p>Test class</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Tests the class.</p>
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

<div class="sect2">

### Process rows

<div class="paragraph">

The Processor code defines the processRow() method, which is the heart of the transform. This method is called by the pipeline in a tight loop and will continue until false is returned.

</div>

<div class="listingblock">

<div class="content">

``` highlight
String firstnameField;
String lastnameField;
String nameField;

public boolean processRow() throws HopException
{
    // Let's look up parameters only once for performance reason.
    //
    if (first) {
      firstnameField = getParameter("FIRSTNAME_FIELD");
      lastnameField = getParameter("LASTNAME_FIELD");
      nameField = getParameter("NAME_FIELD");
      first=false;
    }

    // First, get a row from the default input hop
    //
    Object[] r = getRow();

    // If the row object is null, we are done processing.
    //
    if (r == null) {
      setOutputDone();
      return false;
    }

    // It is always safest to call createOutputRow() to ensure that your output row's Object[] is large
    // enough to handle any new fields you are creating in this transform.
    //
    Object[] outputRow = createOutputRow(r, data.outputRowMeta.size());

    String firstname = get(Fields.In, firstnameField).getString(r);
    String lastname = get(Fields.In, lastnameField).getString(r);

    // Set the value in the output field
    //
    String name = firstname+" "+lastname;
    get(Fields.Out, nameField).setValue(outputRow, name);

    // putRow will send the row on to the default output hop.
    //
    putRow(data.outputRowMeta, outputRow);

    return true;
```

</div>

</div>

</div>

<div class="sect2">

### Error handling

<div class="paragraph">

If you want Hop to handle errors that may occur while running your class in a pipeline, you must implement for your own error handling code. Before adding any error handling code, right-click on the User Defined Java Class transform in the Hop client canvas and select Error Handling in the menu that appears. The resulting transform error handling settings dialog box contains options for specifying an error target transform and associated field names that you will use to implement error handling in your defined code.

</div>

<div class="listingblock">

<div class="content">

``` highlight
try {

Object     numList = strsList.stream()
                        .map( new ToInteger() )
                     .sorted( new ReverseCase() )
                     .collect( Collectors.toList() );

    get( Fields.Out, "reverseOrder" ).setValue( row, numList.toString() );

} catch (NumberFormatException ex) {
    // Number List contains a value that cannot be converteds to an Integer.
    rowInError = true;
    errMsg = ex.getMessage();
    errCnt = errCnt + 1;
}

if ( !rowInError ) {
    putRow( data.outputRowMeta, row );
} else {
    // Output errors to the error hop. Right click on transform and choose "Error Handling..."
    putError(data.outputRowMeta, row, errCnt, errMsg, "Not allowed", "DEC_0");
}
```

</div>

</div>

<div class="paragraph">

The try in the code sample above tests to see if numList contains valid numbers. If the list contains a number that is not valid, putError is used to handle the error and direct it to the wlog: ErrorPath transform in the sample pipeline. The ErrorPath transform is also specified in the Target transforms tab of the User Define Java Class transform.

</div>

</div>

<div class="sect2">

### Logging

<div class="paragraph">

You need to implement logging in your defined transform if you want Hop to log data actions from your class, such as read, write, output, or update data. The following code is an example of how to implement logging:

</div>

<div class="listingblock">

<div class="content">

``` highlight
putRow( data.outputMeta, r );

if ( checkFeedback( getLinesOutput() ) ) {
  if ( log.isBasic() ) {
    logBasic( "Have I got rows for you! " + getLinesOutput() );
  }
}
```

</div>

</div>

</div>

<div class="sect2">

### Class and code fragments

<div class="paragraph">

You can navigate through your defined classes along with related code snippets and fields through the Classes and Code Fragments panel. You can right-click on any item in this tree to either Delete, Rename, or Show Sample.

</div>

<div class="paragraph">

**Classes**

</div>

<div class="paragraph">

The Classes folder indicates what classes have corresponding code block tabs in the Class Code panel.

</div>

<div class="paragraph">

**Code Snippits**

</div>

<div class="paragraph">

The Code Snippits folder shows the internal Hop code related to the User Defined Java Class transform. These snippits are shown as reference for the code of your class.

</div>

<div class="paragraph">

**Input Fields**

</div>

<div class="paragraph">

The Input fields folder contains any input fields you define in your code. While working with your defined code, you will be handling input and output fields. Many ways exist for handling input fields. For example, to start, examine the following description of an input row.

</div>

<div class="listingblock">

<div class="content">

``` highlight
IRowMeta inputRowMeta = getInputRowMeta();
```

</div>

</div>

<div class="paragraph">

The inputRowMeta object contains the metadata of the input row. It includes all the fields, their data types, lengths, names, format masks, and more. You can use this object to look up input fields. For example, if you want to look for a field called customer, you would use the following code.

</div>

<div class="listingblock">

<div class="content">

``` highlight
IValueMeta customer = inputRowMeta.searchValueMeta("year");
```

</div>

</div>

<div class="paragraph">

Because looking up field names can be slow if you need to do it for every row that passes through a pipeline, you could look up field names in advance in a first block of code, as shown in the following example:

</div>

<div class="listingblock">

<div class="content">

``` highlight
if (first) {
 yearIndex = getInputRowMeta().indexOfValue(getParameter("YEAR"));
 if (yearIndex<0) {
   throw new HopException("Year field not found in the input row, check parameter 'YEAR'\!");
 }
}
```

</div>

</div>

<div class="paragraph">

To get the Integer value contained in the year field, you can then use the following construct.

</div>

<div class="listingblock">

<div class="content">

``` highlight
Object[] r = getRow();
...
Long year = inputRowMeta().getInteger(r, yearIndex);
```

</div>

</div>

<div class="paragraph">

To make this process easier, you can use a shortcut in the following form.

</div>

<div class="listingblock">

<div class="content">

``` highlight
Long year = get(Fields.In, "year").getInteger(r);
```

</div>

</div>

<div class="paragraph">

This method also takes into account the index-based optimization mentioned above.

</div>

</div>

</div>

</div>

<div class="sect1">

## Blocking specific code

<div class="sectionbody">

<div class="paragraph">

As a simple security measure you can block the execution of code containing specific strings. This can be done by adding exclusions to the `codeExclusions.xml` file located at \<Hop Installation\>/plugins/transforms/janino

</div>

<div class="paragraph">

Example:

</div>

<div class="listingblock">

<div class="content">

``` highlight
    <exclusions>
        <exclusion>System.</exclusion>
        <exclusion>HopVfs.</exclusion>
    </exclusions>
```

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:21 +0200

</div>

</div>
