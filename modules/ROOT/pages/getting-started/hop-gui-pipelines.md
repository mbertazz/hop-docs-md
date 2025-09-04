<div id="header">

# Pipelines

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

In [Concepts](getting-started/hop-concepts.pOm9rCXtsJ), we walked through pipelines, transforms and hops. Let’s remember:

</div>

<div class="ulist">

  - A pipeline consists of a chain of transforms that read, process or write data. Transforms are connected by hops. Hops have a direction but can’t create loops, which effectively makes Pipelines DAGs (Directed Acyclic Graphs).

  - A transform is each basic operation in your pipeline. Each transform performs an operation on the data: reads from a source, operates on data in the pipeline or writes to to a target.

  - A hop in a pipeline passes data between transforms.

</div>

</div>

</div>

<div class="sect1">

## Create a Pipeline

<div class="sectionbody">

<div class="paragraph">

There are two ways to create a pipeline.

</div>

<div class="ulist">

  - click on the **New** option on the Horizontal toolbar and select the Pipeline option.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create pipeline 1](../assets/images/getting-started/gs-hop-gui-create-pipeline-1.png)</span>

</div>

<div class="ulist">

  - File → New → Pipeline ￼ <span class="image">![gs hop gui create pipeline 2](../assets/images/getting-started/gs-hop-gui-create-pipeline-2.png)</span>  
    <span class="image">![gs hop gui create pipeline 3](../assets/images/getting-started/gs-hop-gui-create-pipeline-3.png)</span>

</div>

<div class="paragraph">

Your new pipeline is created. You’ll see the dialog below.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create pipeline 4](../assets/images/getting-started/gs-hop-gui-create-pipeline-4.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Add and connect Transforms

<div class="sectionbody">

<div class="sect2">

### Add Transforms

<div class="paragraph">

Now you are ready to add the first transform. Click anywhere in the pipeline canvas, the area where you’ll see the image below.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create pipeline 5](../assets/images/getting-started/gs-hop-gui-create-pipeline-5.png)</span>

</div>

<div class="paragraph">

After clicking you will see the context dialog. This is the dialog you’ll use every time you need to select transforms to add to your pipeline.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create pipeline 6](../assets/images/getting-started/gs-hop-gui-create-pipeline-6.png)</span>

</div>

<div class="paragraph">

Use the search box in this dialog to find the transforms you need. Click or use the arrow keys and hit enter to add a transform to your pipeline.

</div>

<div class="paragraph">

For now, add a [Generate Rows](pipeline/transforms/rowgenerator.pOm9rCXtsJ) and a [Add Sequence](pipeline/transforms/addsequence.pOm9rCXtsJ) transform to your pipeline.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create pipeline add two transforms](../assets/images/getting-started/gs-hop-gui-create-pipeline-add-two-transforms.png)</span>

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
<td>check the <a href="pipeline/transforms.pOm9rCXtsJ">full list of transforms</a>. There are 186 transforms available in Hop 0.99, but you’ll soon get to know the most commonly used ones.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect2">

### Create a Hop

<div class="paragraph">

There are a number of ways to create a hop:

</div>

<div class="ulist">

  - **shift-drag**: while holding down the shift key on your keyboard. Click on a transform, while holding down your primary mouse button, drag to the second transform. Release the primary mouse button and the shift key.

  - **scroll-drag**: scroll-click on a transform , while holding down your mouse’s scroll button, drag to the second transform. Release the scroll button.

  - click on a transform in your pipeline to open the context dialog (the dialog you opened in the '**click anywhere**' step). Click the 'Create hop' <span class="image">![Create hop](../assets/images/getting-started/icons/HOP.svg)</span> button and select the transform you want to create the hop to.

</div>

<div class="paragraph">

<span class="image">![gs hop gui create pipeline create hop](../assets/images/getting-started/gs-hop-gui-create-pipeline-create-hop.png)</span>

</div>

</div>

</div>

</div>

<div class="sect1">

## Run your pipeline

<div class="sectionbody">

<div class="paragraph">

Running a pipeline to see how it performs can be done in one of the following tasks:

</div>

<div class="ulist">

  - Using the Run icon.

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 1](../assets/images/getting-started/gs-hop-gui-run-pipeline-1.png)</span>

</div>

<div class="ulist">

  - Select Run and click on Start Execution from the toolbar.

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 2](../assets/images/getting-started/gs-hop-gui-run-pipeline-2.png)</span>

</div>

<div class="ulist">

  - Press F8

</div>

<div class="paragraph">

You will see the Run Options dialog.

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 3](../assets/images/getting-started/gs-hop-gui-run-pipeline-3.png)</span>  

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 4](../assets/images/getting-started/gs-hop-gui-run-pipeline-4.png)</span>

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
<td>a 'local' runtime configuration is created when you first start Hop Gui. Check the available <a href="pipeline/pipeline-run-configurations/pipeline-run-configurations.pOm9rCXtsJ">runtime configurations</a> for other engines to run your pipelines on.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Make sure your configuration is selected and hit Launch.

</div>

<div class="paragraph">

You’ll see green check marks in the upper right corner of the transforms when a pipeline ran successfully.

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 5](../assets/images/getting-started/gs-hop-gui-run-pipeline-5.png)</span>

</div>

<div class="paragraph">

After each run, the execution results are displayed in the panel on the bottom of your window. The Execution Results contains two tabs:

</div>

<div class="ulist">

  - transform metrics

  - logging

</div>

<div class="paragraph">

The Transform Metrics tab displays metrics per transform.

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 6](../assets/images/getting-started/gs-hop-gui-run-pipeline-6.png)</span>

</div>

<div class="paragraph">

The logging tab displays the log of the pipeline according to the log level chosen on execution.

</div>

<div class="paragraph">

<span class="image">![gs hop gui run pipeline 7](../assets/images/getting-started/gs-hop-gui-run-pipeline-7.png)</span>

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
<td>for more detailed information, check out the <a href="pipeline/run-preview-debug-pipeline.pOm9rCXtsJ">Run, Preview and Debug a Pipeline</a> page.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:20:39 +0200

</div>

</div>
