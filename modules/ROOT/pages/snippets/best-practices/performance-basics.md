<div id="header">

</div>

<div id="content">

<div id="PerformanceBasics" class="paragraph">

Here are a few things to consider when looking at performance in a pipeline:

</div>

<div class="ulist">

  - Pipelines are networks: the speed of the network is limited by the slowest transform in it.

  - Slow transforms are indicated when running in Hop GUI. You’ll see a dotted line around the slow transforms.

  - Adding more copies and increasing parallelism is not always beneficial, but it can be. Definitely don’t overdo it. Running all of the transforms in your pipeline with multiple copies definitely will **not** help. Test, measure and iterate to improve performance.

  - Optimizing performance requires measuring: take note of execution times and see if you should increase or decrease parallelism to help performance.

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:35 +0200

</div>

</div>
