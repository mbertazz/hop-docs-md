<div id="header">

</div>

<div id="content">

<div class="paragraph">

If enabled, all data conversions (character decoding, data conversion, trimming, …​) for the data being read will be postponed as long as possible, effectively reading the data as binary fields. Enabling lazy conversion can significantly decrease the CPU cost of reading data.  
When to avoid: if the data conversion needs to be performed later in the stream anyway, postponing the conversion may slow things down instead of speeding up.  
When to use: use cases where Lazy Conversion may speed things up when 1) data is read and written to another file without conversion, 2) data needs to be sorted and doesn’t fit in memory. In this case, serialization to disk is faster with lazy conversion because encoding and type conversions are postponed, or 3) bulk-loading to database without the need for data conversion. Bulk loading utilities typically read text directly and the generation of this text is faster (this does not apply to Table Output).

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:40 +0200

</div>

</div>
