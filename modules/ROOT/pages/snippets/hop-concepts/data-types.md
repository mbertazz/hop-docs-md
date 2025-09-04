<div id="header">

</div>

<div id="content">

<div class="sect1">

## Data types

<div class="sectionbody">

<div class="paragraph">

As a best practice for producing consistent, predictable outcomes when working with your data in Apache Hop, you must consider how the Apache Hop engine processes different data types and field metadata in transformations and jobs.

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
<td>As a rule, data is never modified by metadata inside of Apache Hop. Data is only modified when Apache Hop writes to files or similar objects, but not to databases.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Apache Hop data types map internally to Java data types, so the Java behavior of these data types applies to the associated fields, parameters, and variables used in your workflows and pipelines. The following table describes these mappings.

</div>

| Apache Hop | Java data type | Description                                                                   |
| ---------- | -------------- | ----------------------------------------------------------------------------- |
| BigNumber  | BigDecimal     | An arbitrary unlimited precision number.                                      |
| Binary     | Byte\[\]       | An array of bytes that contain any type of binary data.                       |
| Boolean    | Boolean        | A boolean value true or false.                                                |
| Date       | Date           | A date-time value with millisecond precision.                                 |
| Integer    | Long           | A signed long 64-bit integer.                                                 |
| Internet   | Address        | InetAddress An Internet Protocol (IP) address.                                |
| Number     | Double         | A double precision floating point value.                                      |
| String     | String         | A variable unlimited length text encoded in UTF-8 (Unicode).                  |
| Timestamp  | Timestamp      | Allows the specification of fractional seconds to a precision of nanoseconds. |

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
<td>Apache Hop also comes with a number of additional complex data types (e.g. Avro, JSON, Graph) that have no one-on-one mapping to Java data types. These data types only work with specific transforms and can’t be used in general-purpose transforms.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:37 +0200

</div>

</div>
