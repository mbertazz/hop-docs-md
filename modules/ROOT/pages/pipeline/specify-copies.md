<div id="header">

# Specify Copies

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

The `Specify copies` option in the [Hop Gui pop-up dialog](hop-gui/hop-gui-popup-dialog.mtnxBKCSUf) is a powerful option that allows pipeline developers to run transforms in multiple copies.

</div>

<div class="paragraph">

Having multiple copies of a transform results in multiple threads for this transform, and can improve a pipeline’s performance if used correctly.

</div>

<div class="admonitionblock warning">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Warning
</div></td>
<td>increasing the number of copies for your transforms is not a silver bullet or a <code>performance=fast</code> option. Excessive use of the <code>specify copies</code> option can easily make your pipelines performance worse instead of better.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Changing the number of copies for a transform

<div class="sectionbody">

<div class="paragraph">

Click on a transform’s icon and click on the `Specify copies` icon in the pop-up dialog.

</div>

<div class="imageblock text-left">

<div class="content">

![Specify copies](/images/hop-gui/pipeline/specify-copies.png)

</div>

</div>

<div class="paragraph">

Change the number of copies for the selected transform in the dialog that will pop up:

</div>

<div class="imageblock text-left">

<div class="content">

![Specify copies dialog](/images/hop-gui/pipeline/specify-copies-dialog.png)

</div>

</div>

<div class="paragraph">

Your transform will now show the number of copies you specified in the upper left corner of the transform’s icon.

</div>

<div class="imageblock text-left">

<div class="content">

![Specify 4 copies](/images/hop-gui/pipeline/specify-copies-four.png)

</div>

</div>

<div class="paragraph">

When your pipeline starts, Apache Hop will create the specified number of copies for this transform in the background. The pipeline in the example above will look like the image below when executed.

</div>

<div class="imageblock text-left">

<div class="content">

![Specify copies expanded](/images/hop-gui/pipeline/specify-copies-expanded.png)

</div>

</div>

</div>

</div>

<div class="sect1">

## Use cases

<div class="sectionbody">

<div class="paragraph">

Increasing the number of copies for a limited number of transforms in your pipelines can help to improve your pipeline’s performance, but the option should be used with great care.

</div>

<div class="paragraph">

the number of threads your CPUs or cores can handle is finite. Increasing the number of copies (and thus threads) can easily exceed what your system can handle, resulting in the opposite effect of what you want to achieve.

</div>

<div class="paragraph">

There are no hard rules, use common sense to decided when (not) to increase the number of copies for your transforms.

</div>

<div class="paragraph">

A number of guidelines to decide if using multiple copies for your transforms makes sense:

</div>

<div class="ulist">

  - is there a performance problem? If your pipeline is fast enough, there’s no need for multiple copies on any of your transforms.

  - Identify the slowest transforms in your pipeline. Transforms that are a bottleneck get a dotted border during execution in Hop Gui. Are these bottleneck transforms CPU bound?  
    If the CPU is not the bottleneck, increasing the number of copies won’t help.

  - Increasing the number of copies for e.g. relational databases transforms like [Table output](pipeline/transforms/tableoutput.mtnxBKCSUf) depends on the technology you use. Some databases can handle multiple threads (transactions). Check the documentation for the technology in your data architecture.

  - Some of the following transforms can be CPU heavy and may perform better with multiple copies. Once again: there’s no need to increase the number of copies if there are no performance problems or if these transforms are not the bottleneck in your pipeline.
    
    <div class="ulist">
    
      - [Calculator](pipeline/transforms/calculator.mtnxBKCSUf)
    
      - [Formula](pipeline/transforms/formula.mtnxBKCSUf)
    
      - [Javascript](pipeline/transforms/javascript.mtnxBKCSUf)
    
      - [Script](pipeline/transforms/script.mtnxBKCSUf)
    
      - [Sort rows](pipeline/transforms/sort.mtnxBKCSUf)
    
      - [User defined Java class](pipeline/transforms/userdefinedjavaclass.mtnxBKCSUf)
    
      - [User defined java expression](pipeline/transforms/userdefinedjavaexpression.mtnxBKCSUf)
    
    </div>

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
<td>As with any performance optimization exercises, make tiny changes and measure performance before and after applying any changes.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

A special word of caution: when using multiple copies on a [Sort rows](pipeline/transforms/sort.mtnxBKCSUf) transform, you **need** to add a [Sorted merge](pipeline/transforms/sortedmerge.mtnxBKCSUf) transform, like in the screenshot below. The multiple copies of your `Sort rows` transform will each sort a subset of your stream. The `Sorted merge` transform will merge the (sorted) outputs of each of the `Sort rows` copies into a fully sorted output stream.

</div>

<div class="imageblock text-left">

<div class="content">

![Specify copies with sort rows](/images/hop-gui/pipeline/specify-copies-sort-rows.png)

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:35 +0200

</div>

</div>
