<div id="header">

</div>

<div id="content">

<div class="paragraph">

Some transforms share a common field information panel. That panel allows a user to modify metadata about the way information is stored or handled by the particular transform on canvas, but it will also set the expectation for how it is presented or output by other transforms.

</div>

<div class="paragraph">

New Field - What an output name should be for a field sent out from the step. Type - What type (String, Integer, Numeric, etc.) for the field being sent out from the step. Length - Usually for Strings, but if you specify a length for an integer it will have a padding effect of prepending 0s until the int is long enough. Precision - Usually for Numerics in steps that care about significant digits after a decimal point. Format - Used frequently to give dates, or numerics, even currency a format. It obeys, <https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html> and supports common number formats. (find link for that standard). Group - is used to specify which character is used for separating thousands in the output - i.e commas in the US (1,000) and periods in Germany (1.000) Decimal - is the character that should be used as a dividing marker between whole numbers on the left and fractioal parts on the right i.e. 1,000.10 in the US and 1.000,10 in Germany. Currency - Hanging around, but not used by many transforms. Need to know which one as an example. Nullif - What value should be written in for a field if it came back as \<null\> Default - What value should be given the field in case it was empty.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:37 +0200

</div>

</div>
