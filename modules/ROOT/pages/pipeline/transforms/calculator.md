<div id="header">

# <span class="image image-doc-icon">![Calculator transform Icon](../assets/images/transforms/icons/calculator.svg)</span> Calculator

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
<p>The Calculator transform provides you with predefined functions that can be executed on input field values.</p>
</div>
<div class="paragraph">
<p>In addition to the arguments (Field A, Field B and Field C) you must also specify the return type of the function.</p>
</div>
<div class="paragraph">
<p>You can choose to remove fields (with the <code>Remove</code> option) from the result (output) after all values are calculated. This is useful in cases where you use temporary values that don’t need to end up in your pipeline fields.</p>
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
<td>The execution speed of the Calculator is far better than the speed provided by custom scripts (JavaScript).</td>
</tr>
</tbody>
</table>
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

## Options

<div class="sectionbody">

| Column          | Description                                                                                                                                                                |
| --------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| New field       | The output field for the calculation result. Set `Remove` to `Y` for temporary fields that are required to calculate later fields, but are not needed in the final result. |
| Calculation     | The calculation required for this new field.                                                                                                                               |
| Field A         | The first field to use in the calculation.                                                                                                                                 |
| Field B         | The second field to use in the calculation.                                                                                                                                |
| Field C         | The third field to use in the calculation.                                                                                                                                 |
| Value Type      | The data type to use for the result of this calculation.                                                                                                                   |
| Length          | The length to set for the result of this calculation.                                                                                                                      |
| Precision       | The precision to set for the result of this calculation.                                                                                                                   |
| Remove          | A boolean flag to set. Set to `Y` for temporary fields that are only required for intermediate calculations and don’t need to be included in the output.                   |
| Conversion mask | Conversion mask to apply to date or numeric fields.                                                                                                                        |
| Decimal symbol  | The decimal symbol to set in the output field.                                                                                                                             |
| Grouping symbol | The grouping symbol to set in the output field.                                                                                                                            |
| Currency symbol | The currency symbol to set in the output field.                                                                                                                            |

<div class="paragraph">

The table below lists the supported calculations in the `Calculator` transform:

</div>

<table>
<thead>
<tr class="header">
<th>Function (Hop GUI view)</th>
<th>Function (Metadata Injection view)</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Set field to constant A</p></td>
<td><p>CONSTANT</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>Create a copy of field A</p></td>
<td><p>COPY_OF_FIELD</p></td>
<td></td>
</tr>
<tr class="odd">
<td><p>A + B</p></td>
<td><p>ADD</p></td>
<td><p>A plus B.</p></td>
</tr>
<tr class="even">
<td><p>A - B</p></td>
<td><p>SUBTRACT</p></td>
<td><p>A minus B.</p></td>
</tr>
<tr class="odd">
<td><p>A * B</p></td>
<td><p>MULTIPLY</p></td>
<td><p>A multiplied by B.</p></td>
</tr>
<tr class="even">
<td><p>A / B</p></td>
<td><p>DIVIDE</p></td>
<td><p>A divided by B.</p></td>
</tr>
<tr class="odd">
<td><p>A * A</p></td>
<td><p>SQUARE</p></td>
<td><p>The square of A.</p></td>
</tr>
<tr class="even">
<td><p>SQRT( A )</p></td>
<td><p>SQUARE_ROOT</p></td>
<td><p>The square root of A.</p></td>
</tr>
<tr class="odd">
<td><p>100 * A / B</p></td>
<td><p>PERCENT_1</p></td>
<td><p>Percentage of A in B.</p></td>
</tr>
<tr class="even">
<td><p>A - ( A * B / 100 )</p></td>
<td><p>PERCENT_2</p></td>
<td><p>Subtract B% of A.</p></td>
</tr>
<tr class="odd">
<td><p>A + ( A * B / 100 )</p></td>
<td><p>PERCENT_3</p></td>
<td><p>Add B% to A.</p></td>
</tr>
<tr class="even">
<td><p>A + B *C</p></td>
<td><p>COMBINATION_1</p></td>
<td><p>Add A and B times C.</p></td>
</tr>
<tr class="odd">
<td><p>SQRT( A*A + B*B )</p></td>
<td><p>COMBINATION_2</p></td>
<td><p>Calculate ?(A2+B2).</p></td>
</tr>
<tr class="even">
<td><p>ROUND( A )</p></td>
<td><p>ROUND_1</p></td>
<td><p>Returns the closest Integer to the argument. The result is rounded to an Integer by adding 1/2, taking the floor of the result, and casting the result to type int. In other words, the result is equal to the value of the expression: floor (a + 0.5). In case you need the rounding method &quot;Round half to even&quot;, use the following method ROUND( A, B ) with no decimals (B=0).</p></td>
</tr>
<tr class="odd">
<td><p>ROUND( A, B )</p></td>
<td><p>ROUND_2</p></td>
<td><p>Round A to the nearest even number with B decimals. The used rounding method is &quot;Round half to even&quot;, it is also called unbiased rounding, convergent rounding, statistician’s rounding, Dutch rounding, Gaussian rounding, odd-even rounding, bankers' rounding or broken rounding, and is widely used in bookkeeping. This is the default rounding mode used in IEEE 754 computing functions and operators. In Germany it is often called &quot;Mathematisches Runden&quot;.</p></td>
</tr>
<tr class="even">
<td><p>STDROUND( A )</p></td>
<td><p>ROUND_STD_1</p></td>
<td><p>Round A to the nearest integer. The used rounding method is &quot;Round half away from zero&quot;, it is also called standard or common rounding. In Germany it is known as &quot;kaufmännische Rundung&quot; (and defined in DIN 1333).</p></td>
</tr>
<tr class="odd">
<td><p>STDROUND( A, B )</p></td>
<td><p>ROUND_STD_2</p></td>
<td><p>Same rounding method used as in STDROUND (A) but with B decimals.</p></td>
</tr>
<tr class="even">
<td><p>CEIL( A )</p></td>
<td><p>CEIL</p></td>
<td><p>The ceiling function map a number to the smallest following integer.</p></td>
</tr>
<tr class="odd">
<td><p>FLOOR( A )</p></td>
<td><p>FLOOR</p></td>
<td><p>The floor function map a number to the largest previous integer.</p></td>
</tr>
<tr class="even">
<td><p>NVL( A, B )</p></td>
<td><p>NVL</p></td>
<td><p>If A is not NULL, return A, else B. Note that sometimes your variable won’t be null but an empty string.</p></td>
</tr>
<tr class="odd">
<td><p>Date A + B days</p></td>
<td><p>ADD_DAYS</p></td>
<td><p>Add B days to Date field A. Note: Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with hours.</p></td>
</tr>
<tr class="even">
<td><p>Year of date A</p></td>
<td><p>YEAR_OF_DATE</p></td>
<td><p>Calculate the year of date A.</p></td>
</tr>
<tr class="odd">
<td><p>Month of date A</p></td>
<td><p>MONTH_OF_DATE</p></td>
<td><p>Calculate number the month of date A.</p></td>
</tr>
<tr class="even">
<td><p>Day of year of date A</p></td>
<td><p>DAY_OF_YEAR</p></td>
<td><p>Calculate the day of year (1-365).</p></td>
</tr>
<tr class="odd">
<td><p>Day of month of date A</p></td>
<td><p>DAY_OF_MONTH</p></td>
<td><p>Calculate the day of month (1-31).</p></td>
</tr>
<tr class="even">
<td><p>Day of week of date A</p></td>
<td><p>DAY_OF_WEEK</p></td>
<td><p>Calculate the day of week (1-7). 1 is Sunday, 2 is Monday, etc.</p></td>
</tr>
<tr class="odd">
<td><p>Week of year of date A</p></td>
<td><p>WEEK_OF_YEAR</p></td>
<td><p>Calculate the week of year (1-54).</p></td>
</tr>
<tr class="even">
<td><p>ISO8601 Week of year of date A</p></td>
<td><p>WEEK_OF_YEAR_ISO8601</p></td>
<td><p>Calculate the week of the year ISO8601 style (1-53).</p></td>
</tr>
<tr class="odd">
<td><p>ISO8601 Year of date A</p></td>
<td><p>YEAR_OF_DATE_ISO8601</p></td>
<td><p>Calculate the year ISO8601 style.</p></td>
</tr>
<tr class="even">
<td><p>Byte to hex encode of string A</p></td>
<td><p>BYTE_TO_HEX_ENCODE</p></td>
<td><p>Encode bytes in a string to a hexadecimal representation.</p></td>
</tr>
<tr class="odd">
<td><p>Hex to byte encode of string A</p></td>
<td><p>HEX_TO_BYTE_DECODE</p></td>
<td><p>Encode a string in its own hexadecimal representation.</p></td>
</tr>
<tr class="even">
<td><p>Char to hex encode of string A</p></td>
<td><p>CHAR_TO_HEX_ENCODE</p></td>
<td><p>Encode characters in a string to a hexadecimal representation.</p></td>
</tr>
<tr class="odd">
<td><p>Hex to char decode of string A</p></td>
<td><p>HEX_TO_CHAR_DECODE</p></td>
<td><p>Decode a string from its hexadecimal representation (add a leading 0 when A is of odd length).</p></td>
</tr>
<tr class="even">
<td><p>Checksum of a file A using CRC-32</p></td>
<td><p>CRC32</p></td>
<td><p>Calculate the checksum of a file using CRC-32.</p></td>
</tr>
<tr class="odd">
<td><p>Checksum of a file A using Adler-32</p></td>
<td><p>ADLER32</p></td>
<td><p>Calculate the checksum of a file using Adler-32.</p></td>
</tr>
<tr class="even">
<td><p>Checksum of a file A using MD5</p></td>
<td><p>MD5</p></td>
<td><p>Calculate the checksum of a file using MD5.</p></td>
</tr>
<tr class="odd">
<td><p>Checksum of a file A using SHA-1</p></td>
<td><p>SHA1</p></td>
<td><p>Calculate the checksum of a file using SHA-1.</p></td>
</tr>
<tr class="even">
<td><p>Levenshtein Distance (Source A and Target B)</p></td>
<td><p>LEVENSHTEIN_DISTANCE</p></td>
<td><p>Calculates the Levenshtein Distance: <a href="http://en.wikipedia.org/wiki/Levenshtein_distance" class="uri bare">http://en.wikipedia.org/wiki/Levenshtein_distance</a></p></td>
</tr>
<tr class="odd">
<td><p>Metaphone of A (Phonetics)</p></td>
<td><p>METAPHONE</p></td>
<td><p>Calculates the metaphone of A: <a href="http://en.wikipedia.org/wiki/Metaphone" class="uri bare">http://en.wikipedia.org/wiki/Metaphone</a></p></td>
</tr>
<tr class="even">
<td><p>Double metaphone of A</p></td>
<td><p>DOUBLE_METAPHONE</p></td>
<td><p>Calculates the double metaphone of A: <a href="http://en.wikipedia.org/wiki/Double_Metaphone" class="uri bare">http://en.wikipedia.org/wiki/Double_Metaphone</a></p></td>
</tr>
<tr class="odd">
<td><p>Absolute value ABS(A)</p></td>
<td><p>ABS</p></td>
<td><p>Calculates the Absolute value of A.</p></td>
</tr>
<tr class="even">
<td><p>Remove time from a date A</p></td>
<td><p>REMOVE_TIME_FROM_DATE</p></td>
<td><p>Removes time value of A. Note: Daylight Savings Time (DST) changes in Sao Paulo and some other parts of Brazil at midnight 0:00. This makes it impossible to set the time to 0:00 at the specific date, when the DST changes from 0:00 to 1:00 am. So, there is one date in one year in these regions where this function will fail with an &quot;IllegalArgumentException: HOUR_OF_DAY: 0 → 1&quot;. It is not an issue for Europe, the US and other regions where the time changes at 1:00 or 2:00 or 3:00 am.</p></td>
</tr>
<tr class="odd">
<td><p>Date A - Date B (in days)</p></td>
<td><p>DATE_DIFF</p></td>
<td><p>Calculates difference, in days, between A date field and B date field.</p></td>
</tr>
<tr class="even">
<td><p>A + B + C</p></td>
<td><p>ADD3</p></td>
<td><p>A plus B plus C.</p></td>
</tr>
<tr class="odd">
<td><p>First letter of each word of a string A in capital</p></td>
<td><p>INITCAP</p></td>
<td><p>Transforms the first letter of each word within a string.</p></td>
</tr>
<tr class="even">
<td><p>UpperCase of a string A</p></td>
<td><p>UPPER_CASE</p></td>
<td><p>Transforms a string to uppercase.</p></td>
</tr>
<tr class="odd">
<td><p>LowerCase of a string A</p></td>
<td><p>LOWER_CASE</p></td>
<td><p>Transforms a string to lowercase.</p></td>
</tr>
<tr class="even">
<td><p>Mask XML content from string A</p></td>
<td><p>MASK_XML</p></td>
<td><p>Escape XML content; replace characters with &amp;values.</p></td>
</tr>
<tr class="odd">
<td><p>Protect (CDATA) XML content from string A</p></td>
<td><p>USE_CDATA</p></td>
<td><p>Indicates an XML string is general character data, rather than non-character data or character data with a more specific, limited structure. The given string will be enclosed into &lt;![CDATA[String]]&gt;.</p></td>
</tr>
<tr class="even">
<td><p>Remove CR from a string A</p></td>
<td><p>REMOVE_CR</p></td>
<td><p>Removes carriage returns from a string.</p></td>
</tr>
<tr class="odd">
<td><p>Remove LF from a string A</p></td>
<td><p>REMOVE_LF</p></td>
<td><p>Removes linefeeds from a string.</p></td>
</tr>
<tr class="even">
<td><p>Remove CRLF from a string A</p></td>
<td><p>REMOVE_CRLF</p></td>
<td><p>Removes carriage returns/linefeeds from a string.</p></td>
</tr>
<tr class="odd">
<td><p>Remove TAB from a string A</p></td>
<td><p>REMOVE_TAB</p></td>
<td><p>Removes tab characters from a string.</p></td>
</tr>
<tr class="even">
<td><p>Return only digits from string A</p></td>
<td><p>GET_ONLY_DIGITS</p></td>
<td><p>Outputs only digits (0-9) from a string.</p></td>
</tr>
<tr class="odd">
<td><p>Remove digits from string A</p></td>
<td><p>REMOVE_DIGITS</p></td>
<td><p>Removes all digits (0-9) from a string.</p></td>
</tr>
<tr class="even">
<td><p>Return the length of a string A</p></td>
<td><p>STRING_LEN</p></td>
<td><p>Returns the length of the string.</p></td>
</tr>
<tr class="odd">
<td><p>Load file content in binary</p></td>
<td><p>LOAD_FILE_CONTENT_BINARY</p></td>
<td><p>Loads the content of the given file (in field A) to a binary data type (e.g. pictures).</p></td>
</tr>
<tr class="even">
<td><p>Add time B to date A</p></td>
<td><p>ADD_TIME_TO_DATE</p></td>
<td><p>Add the time to a date, returns date and time as one value.</p></td>
</tr>
<tr class="odd">
<td><p>Quarter of date A</p></td>
<td><p>QUARTER_OF_DATE</p></td>
<td><p>Returns the quarter (1 to 4) of the date.</p></td>
</tr>
<tr class="even">
<td><p>variable substitution in string A</p></td>
<td><p>SUBSTITUTE_VARIABLE</p></td>
<td><p>Substitute variables within a string.</p></td>
</tr>
<tr class="odd">
<td><p>Unescape XML content</p></td>
<td><p>UNESCAPE_XML</p></td>
<td><p>Unescape XML content from the string.</p></td>
</tr>
<tr class="even">
<td><p>Escape HTML content</p></td>
<td><p>ESCAPE_HTML</p></td>
<td><p>Escape HTML within the string.</p></td>
</tr>
<tr class="odd">
<td><p>Unescape HTML content</p></td>
<td><p>UNESCAPE_HTML</p></td>
<td><p>Unescape HTML within the string.</p></td>
</tr>
<tr class="even">
<td><p>Escape SQL content</p></td>
<td><p>ESCAPE_SQL</p></td>
<td><p>Escapes the characters in a String to be suitable to pass to an SQL query.</p></td>
</tr>
<tr class="odd">
<td><p>Date A - Date B (working days)</p></td>
<td><p>DATE_WORKING_DIFF</p></td>
<td><p>Calculates the difference between Date field A and Date field B (only working days Mon-Fri).</p></td>
</tr>
<tr class="even">
<td><p>Date A + B Months</p></td>
<td><p>ADD_MONTHS</p></td>
<td><div class="content">
<div class="paragraph">
<p>Add B months to Date field A. INFO: Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with days.</p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Check if an XML file A is well-formed</p></td>
<td><p>CHECK_XML_FILE_WELL_FORMED</p></td>
<td><p>Validates XML file input.</p></td>
</tr>
<tr class="even">
<td><p>Check if an XML string A is well-formed</p></td>
<td><p>CHECK_XML_WELL_FORMED</p></td>
<td><p>Validates XML string input.</p></td>
</tr>
<tr class="odd">
<td><p>Get encoding of file A</p></td>
<td><p>GET_FILE_ENCODING</p></td>
<td><p>Guess the best encoding (UTF-8) for the given file.</p></td>
</tr>
<tr class="even">
<td><p>Dameraulevenshtein distance between String A and String B</p></td>
<td><p>DAMERAU_LEVENSHTEIN</p></td>
<td><p>Calculates Dameraulevenshtein distance between strings: <a href="http://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance" class="bare">http://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance</a></p></td>
</tr>
<tr class="odd">
<td><p>NeedlemanWunsch distance between String A and String B</p></td>
<td><p>NEEDLEMAN_WUNSH</p></td>
<td><p>Calculates NeedlemanWunsch distance between strings: <a href="http://en.wikipedia.org/wiki/Needleman%E2%80%93Wunsch_algorithm" class="bare">http://en.wikipedia.org/wiki/Needleman%E2%80%93Wunsch_algorithm</a></p></td>
</tr>
<tr class="even">
<td><p>Jaro similitude between String A and String B</p></td>
<td><p>JARO</p></td>
<td><p>Returns the Jaro similarity coefficient between two strings.</p></td>
</tr>
<tr class="odd">
<td><p>JaroWinkler similitude between String A and String B</p></td>
<td><p>JARO_WINKLER</p></td>
<td><p>Returns the Jaro similarity coefficient between two string: <a href="http://en.wikipedia.org/wiki/Jaro%E2%80%93Winkler_distance" class="bare">http://en.wikipedia.org/wiki/Jaro%E2%80%93Winkler_distance</a></p></td>
</tr>
<tr class="even">
<td><p>SoundEx of String A</p></td>
<td><p>SOUNDEX</p></td>
<td><p>Encodes a string into a Soundex value.</p></td>
</tr>
<tr class="odd">
<td><p>RefinedSoundEx of String A</p></td>
<td><p>REFINED_SOUNDEX</p></td>
<td><p>Retrieves the Refined Soundex code for a given string object</p></td>
</tr>
<tr class="even">
<td><p>Date A + B Hours</p></td>
<td><p>ADD_HOURS</p></td>
<td><div class="content">
<div class="paragraph">
<p>Add B hours to Date field<br />
</p>
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
<td>Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with minutes.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Date A + B Minutes</p></td>
<td><p>ADD_MINUTES</p></td>
<td><div class="content">
<div class="paragraph">
<p>Add B minutes to Date field.<br />
</p>
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
<td>Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with seconds.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Date A - Date B (milliseconds)</p></td>
<td><p>DATE_DIFF_MSEC</p></td>
<td><p>Subtract B milliseconds from Date field A</p></td>
</tr>
<tr class="odd">
<td><p>Date A - Date B (seconds)</p></td>
<td><div class="content">
<div class="paragraph">
<p>DATE_DIFF_SEC</p>
</div>
</div></td>
<td><div class="content">
<div class="paragraph">
<p>Subtract B seconds from Date field A.<br />
</p>
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
<td>Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with milliseconds.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Date A - Date B (minutes)</p></td>
<td><p>DATE_DIFF_MN</p></td>
<td><div class="content">
<div class="paragraph">
<p>Subtract B minutes from Date field A.<br />
</p>
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
<td>Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with seconds.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Date A - Date B (hours)</p></td>
<td><p>DATE_DIFF_HR</p></td>
<td><div class="content">
<div class="paragraph">
<p>Subtract B hours from Date field A.<br />
</p>
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
<td>Only integer values for B are supported. If you need non-integer calculations, please add a second calculation with minutes.</td>
</tr>
</tbody>
</table>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Hour of Day of Date A</p></td>
<td><p>HOUR_OF_DAY</p></td>
<td><p>Extract the hour part of the given date</p></td>
</tr>
<tr class="odd">
<td><p>Minute of Hour of Date A</p></td>
<td><p>MINUTE_OF_HOUR</p></td>
<td><p>Extract the minute part of the given date</p></td>
</tr>
<tr class="even">
<td><p>Second of Hour of Date A</p></td>
<td><p>SECOND_OF_MINUTE</p></td>
<td><p>Extract the second part of a given date</p></td>
</tr>
<tr class="odd">
<td><p>ROUND_CUSTOM( A , B )</p></td>
<td><p>ROUND_CUSTOM_1</p></td>
<td><p>(…​ not implemented…​?)</p></td>
</tr>
<tr class="even">
<td><p>ROUND_CUSTOM( A , B , C )</p></td>
<td><p>ROUND_CUSTOM_2</p></td>
<td><p>(…​ not implemented…​?)</p></td>
</tr>
<tr class="odd">
<td><p>Date A + B seconds</p></td>
<td><p>ADD_SECONDS</p></td>
<td><p>Add B seconds to date field A</p></td>
</tr>
<tr class="even">
<td><p>Remainder of A / B</p></td>
<td><p>REMAINDER</p></td>
<td><p>Remainder of integer division between A and B (A modulo B)</p></td>
</tr>
<tr class="odd">
<td><p>Base64 Encode</p></td>
<td><p>BASE64_ENCODE</p></td>
<td><p>Encode a string in Base64 encoding without padding at the end</p></td>
</tr>
<tr class="even">
<td><p>Base64 Encode (padded)</p></td>
<td><p>BASE64_ENCODE_PADDED</p></td>
<td><p>Encode a string in Base64 encoding with padding at the end, cf. <a href="https://doi.org/10.17487/RFC4648">section 3.2 of RFC 4648</a></p></td>
</tr>
<tr class="odd">
<td><p>Base64 Decode</p></td>
<td><p>BASE64_DECODE</p></td>
<td><p>Decode a Base64 encoded string. Supports both padded or non-padded input.</p></td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect1">

## Metadata Injection support

<div class="sectionbody">

<div class="paragraph">

All fields of this transform support metadata injection. You can use this transform with ETL Metadata Injection to pass metadata to your pipeline at runtime.

</div>

<div class="paragraph">

Use the values in the column "Function (Metadata Injection view)" from the table above to specify the operation (Calculation type) applied to the fields.

</div>

</div>

</div>

<div class="sect1">

## FAQ on length and precision and data types affecting the results

<div class="sectionbody">

<div class="paragraph">

**Q**: I made a pipeline using A/B in a calculator transform and it rounded wrong: the 2 input fields are integer but my result type was Number(6, 4) so I would expect the integers to be cast to Number before executing the division.

</div>

<div class="paragraph">

If I wanted to execute e.g. 28/222, I got 0.0 instead of 0.1261 which I expected. So it seems the result type is ignored. If I change the input types both to Number(6, 4) I get as result 0.12612612612612611 which still ignores the result type (4 places after the comma).

</div>

<div class="paragraph">

Why is this?

</div>

<div class="paragraph">

**A**: Length & Precision are just metadata pieces.

</div>

<div class="paragraph">

If you want to round to the specified precision, you should do this in another transform. However: please keep in mind that rounding double point precision values is futile anyway. A floating point number is stored as an approximation (it floats) so 0.1261 (your desired output) could (would probably) end up being stored as 0.126099999999 or 0.1261000000001 (Note: this is not the case for BigNumbers)

</div>

<div class="paragraph">

So in the end we round using BigDecimals once we store the numbers in the output table, but NOT during the pipeline. The same is true for the Text File Output transform. If you would have specified Integer as result type, the internal number format would have been retained, you would press "Get Fields" and it the required Integer type would be filled in. The required conversion would take place there and then.

</div>

<div class="paragraph">

In short: we convert to the required metadata type when we land the data somewhere, NOT BEFORE.

</div>

<div class="paragraph">

**Q**: How do the data types work internally?  
**A**: You might notice that if you multiply an Integer and Number, the result is always rounded. That is because Calculator takes data type of the left hand size of the multiplication (A) as the driver for the calculation. As such, if you want more precision, you should put field B on the left hand side or change the data type to Number and all will be well.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:53 +0200

</div>

</div>
