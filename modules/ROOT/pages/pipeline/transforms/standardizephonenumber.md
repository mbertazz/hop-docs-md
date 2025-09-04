<div id="header">

# <span class="image image-doc-icon">![Standardize Phone Number transform Icon](../assets/images/transforms/icons/standardizephonenumber.svg)</span> Standardize Phone Number

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
<p>The Standardize Phone Number transform normalizes phone numbers in a standardized and consistent manner.</p>
</div>
<div class="paragraph">
<p>The transform uses <a href="https://github.com/google/libphonenumber">Google libphonenumber</a> library.</p>
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

| Option         | Description                                                                                                                                  |
| -------------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name | Name of the transform.                                                                                                                       |
| Input field    | The field holding the phone numbers from the input data.                                                                                     |
| Output field   | Leave this field empty if you want to update the input field in stream. Otherwise a new field (string) will be added to the output data.     |
| Country field  | The field holding the country code from the input data. The country code is required to be in the ISO alpha-2.                               |
| DefaultCountry | The default country code to use if input data from country field is empty or invalid                                                         |
| Format         | The format to be used to standardize the phone numbers. The available options are: \* E164 (default) \* INTERNATIONAL \* NATIONAL \* RFC3966 |
| Number type    | The result field indicates the type of a processed phone number, such as fixed line, mobile…​                                                |
| Is valid       | The result field indicates whether a phone number is supposed to be valid                                                                    |

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
<td>If the original phone number already has an international area code, this transform will not normalize it to another country even if the international area code is different from the country input’s international area code.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:12 +0200

</div>

</div>
