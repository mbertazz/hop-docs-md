<div id="header">

# <span class="image image-doc-icon">![Analytic Query Icon](../assets/images/transforms/icons/analyticquery.svg)</span> Analytic Query

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
<p>The Analytic Query transform allows you to peek forward and backwards across rows in a pipeline.</p>
</div>
<div class="paragraph">
<p>Examples of common use cases are:</p>
</div>
<div class="ulist">
<ul>
<li><p>Calculate the &quot;time between orders&quot; by ordering rows by order date, and LAGing 1 row back to get previous order time.</p></li>
<li><p>Calculate the &quot;duration&quot; of a web page view by LEADing 1 row ahead and determining how many seconds the user was on this page.</p></li>
</ul>
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

## Options

<div class="sectionbody">

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
<td><p>The name of this transform as it appears in the pipeline workspace.</p></td>
</tr>
<tr class="even">
<td><p>Group fields table</p></td>
<td><p>Specify the fields you want to group. Click Get Fields to add all fields from the input stream(s). The transform will do no additional sorting, so in addition to the grouping identified (for example CUSTOMER_ID) here you must also have the data sorted (for example ORDER_DATE).</p></td>
</tr>
<tr class="odd">
<td><p>Analytic Functions table</p></td>
<td><p>Specify the analytic functions to be solved.</p></td>
</tr>
<tr class="even">
<td><p>New Field Name</p></td>
<td><p>the name you want this new field to be named on the stream (for example PREV_ORDER_DATE)</p></td>
</tr>
<tr class="odd">
<td><p>Subject</p></td>
<td><p>The existing field to grab (for example ORDER_DATE)</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><div class="content">
<div class="paragraph">
<p>Set the type of analytic function:</p>
</div>
<div class="ulist">
<ul>
<li><p>Lead - Go forward N rows and get the value of Subject</p></li>
<li><p>Lag - Go backward N rows and get the value of Subject</p></li>
</ul>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>N</p></td>
<td><p>The number of rows to offset (backwards or forwards)</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Group field examples

<div class="sectionbody">

<div class="paragraph">

While it is not mandatory to specify a group, it can be useful for certain cases. If you create a group (made up of one or more fields), then the "lead forward / lag backward" operations are made only within each group. For example, suppose you have this:

</div>

<div class="exampleblock">

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
X   , Y
--------
aaa , 1
aaa , 2
aaa , 3
bbb , 4
bbb , 5
bbb , 6
```

</div>

</div>

</div>

</div>

<div class="paragraph">

And you want to create a field named Z, with the Y value in the previous row.

</div>

<div class="paragraph">

If you only care about the Y field, you don’t need to group. And you will have the following result:

</div>

<div class="exampleblock">

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
X   , Y , Z
------------
aaa , 1 , <null>
aaa , 2 , 1
aaa , 3 , 2
bbb , 4 , 3
bbb , 5 , 4
bbb , 6 , 5
```

</div>

</div>

</div>

</div>

<div class="paragraph">

But if you don’t want to mix the values for aaa and bbb, you can group by the X field, and you will have this:

</div>

<div class="exampleblock">

<div class="content">

<div class="listingblock">

<div class="content">

``` highlight
X   , Y , Z
------------
aaa , 1 , <null>
aaa , 2 , 1
aaa , 3 , 2
bbb , 4 , <null>
bbb , 5 , 4
bbb , 6 , 5
```

</div>

</div>

</div>

</div>

<div class="paragraph">

Thus, by grouping (provided the input is sorted according to your grouping), you can be assured that lead or lag operations will not return row values outside of the defined group.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:40 +0200

</div>

</div>
