<div id="header">

</div>

<div id="content">

<div id="SizeMetters" class="paragraph">

Keep the number of actions in your workflows and transforms in your pipelines within reason.

</div>

<div class="ulist">

  - Larger pipelines or workflows become harder to debug and develop against.

  - For every transform you add to a pipeline you start at least one new thread at runtime. You could be slowing down significantly simply by having hundreds of threads for hundreds of transforms.

</div>

<div class="paragraph">

If you find that you need to split up a pipeline you can write intermediate data to a temporary file using the [Serialize to file](pipeline/transforms/serialize-to-file.s3fnpGxuk5) transform. The next pipeline in a workflow can then pick up the data again with the [De-serialize from file](pipeline/transforms/serialize-de-from-file.s3fnpGxuk5) transform. While obviously you can also use a database or use another file type to do the same, these transforms will perform the fastest.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:35 +0200

</div>

</div>
