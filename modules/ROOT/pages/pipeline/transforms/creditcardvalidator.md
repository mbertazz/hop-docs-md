<div id="header">

# <span class="image image-doc-icon">![Credit card validator transform Icon](../assets/images/transforms/icons/creditcardvalidator.svg)</span> Credit card validator

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
<p>The Credit Card Validator transform will help you check the following:</p>
</div>
<div class="ulist">
<ul>
<li><p>The validity of a credit card number. This uses a LUHN10 (MOD-10) algorithm.</p></li>
<li><p>The credit card vendor that handles the number: VISA, MasterCard, Diners Club, EnRoute, American Express (AMEX),…​</p></li>
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

<div class="ulist">

  - transform name: the transform name, unique in a pipeline

  - Credit card field: the name of the input field that will contain the credit card number during execution

  - Get only digits? : Enable this option if you want to strip all non-numeric characters from the (String) input field

  - Output Fields
    
    <div class="ulist">
    
      - Result fieldname: the name of the (Boolean) output field indicating the validity of the number
    
      - Credit card type field: the name of the output field that will hold the credit card type (vendor)
    
      - Not valid message: the name of the output field that will hold the error message.
    
    </div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:01 +0200

</div>

</div>
