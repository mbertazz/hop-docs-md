<div id="header">

# Avoiding Deadlocks

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

In Apache Hop certain pipeline designs can run into deadlocks (also known as blocking, stalling, or hanging). A common cause of deadlock arises when using the [Stream Lookup](pipeline/transforms/streamlookup.xUVggzdfiy) transform in pipelines with large datasets. This guide explains how to identify, understand, and resolve deadlock issues involving [Stream Lookup](pipeline/transforms/streamlookup.xUVggzdfiy).

</div>

</div>

</div>

<div class="sect1">

## Understanding Pipeline Deadlocks

<div class="sectionbody">

<div class="paragraph">

Deadlocks in Apache Hop occur when different transforms within a pipeline prevent each other from completing, causing the pipeline to stall indefinitely. The following factors often lead to deadlocks:

</div>

<div class="ulist">

  - **External locks**: When a database places locks on a table, it can prevent the pipeline from progressing.

  - **Pipeline design issues**: Transforms that block until previous transforms complete can create deadlocks, especially when processing large datasets locally.

  - **Buffer limits and rowset size**: Pipelines with splits and rejoining streams depend on appropriate rowset sizes to avoid deadlocks.

</div>

</div>

</div>

<div class="sect1">

## How the Stream Lookup Transform Can Cause Deadlocks

<div class="sectionbody">

<div class="paragraph">

Deadlocks often occur with the [Stream Lookup](pipeline/transforms/streamlookup.xUVggzdfiy) transform in pipelines processing a high volume of rows. Here’s a scenario illustrating how deadlocks occur:

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Stream lookup - sample pipeline](/images/how-to-guides/deadlocks-stream-lookup/deadlock-sample-stream-lookup-pipeline.png)</span>

</div>

<div class="olist arabic">

1.  **Pipeline configuration**: The pipeline includes a `Generate Rows` transform that splits data into two streams, one going directly to the [Stream Lookup](pipeline/transforms/streamlookup.xUVggzdfiy) transform and the other passing through an intermediate transform, like `Group By`.

2.  **Rowset limit**: Assume the Rowset size for the local Pipeline Run Configuration is set to 10,000 rows, meaning each hop can temporarily store up to 10,000 rows between transforms.

3.  **Overflow**: If the pipeline generates 10,001 rows, the rowset buffer will reach its 10,000-row capacity, causing the pipeline to halt until downstream transforms process some rows.

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Stream lookup - rowset size](/images/how-to-guides/deadlocks-stream-lookup/deadlock-sample-stream-lookup-rowset-size.png)</span>

</div>

<div class="paragraph">

When [Stream Lookup](pipeline/transforms/streamlookup.xUVggzdfiy) waits for data from both streams but encounters a full buffer in one stream, both streams are unable to proceed, causing the entire pipeline to deadlock.

</div>

</div>

</div>

<div class="sect1">

## Solutions to Avoid Deadlocks

<div class="sectionbody">

<div class="sect2">

### 1\. Adjust Rowset size(with caution)

<div class="paragraph">

Increasing the rowset size can offer a short-term fix by buffering more rows, but it should be used cautiously. Larger rowsets increase memory usage and may reduce performance for large datasets.

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Stream lookup - adjust rowset size](/images/how-to-guides/deadlocks-stream-lookup/deadlock-stream-lookup-adjust-rowset-size.png)</span>

</div>

<div class="ulist">

  - A pipeline uses a Pipeline Run Configuration, which specifies the engine type.

  - If using the `Local` engine type, you can modify the `Rowset size` option to match your dataset and pipeline design requirements.

</div>

</div>

<div class="sect2">

### 2\. Separate input streams

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Stream lookup - separate input streams](/images/how-to-guides/deadlocks-stream-lookup/deadlock-stream-lookup-separate-input-streams.png)</span>

</div>

<div class="paragraph">

A more effective solution is to split input data streams into two independent copies, allowing each stream to operate separately. This avoids the deadlock from bottlenecked transforms in a single stream and allows [Stream Lookup](pipeline/transforms/streamlookup.xUVggzdfiy) to function smoothly.

</div>

</div>

<div class="sect2">

### 3\. Divide pipeline into smaller units

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Stream lookup - divide pipelines](/images/how-to-guides/deadlocks-stream-lookup/deadlock-stream-lookup-divide-in-pipelines.png)</span>

</div>

<div class="paragraph">

Dividing the pipeline into smaller, separate pipelines allows you to process data in stages, using intermediate tables or files for data handoff. This modular approach is highly effective in avoiding buffer-related deadlocks, especially in pipelines with multiple stream joins.

</div>

</div>

<div class="sect2">

### 4\. Use the blocking transform

<div class="paragraph">

For pipelines requiring sequential processing, the "Blocking" transform can manage flow control by ensuring one stream fully completes before moving to the next.

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Stream lookup - blocking transform](/images/how-to-guides/deadlocks-stream-lookup/deadlock-stream-lookup-use-blocking-transform.png)</span>

</div>

<div class="ulist">

  - Configure the Blocking transform with the `Pass all rows` option to handle streams in a sequential manner.

  - Adjust settings like cache size within the Blocking transform for optimal performance.

</div>

</div>

<div class="sect2">

### How the Merge Join Transform Can Cause Deadlocks

<div class="paragraph">

Deadlocks can also occur with the [Merge Join](pipeline/transforms/mergejoin.xUVggzdfiy) transform, particularly when processing large datasets or running pipelines locally. Here’s an example scenario that demonstrates how deadlocks might arise with the **Merge Join** transform:

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Merge Join - sample pipeline](/images/how-to-guides/deadlocks-merge-join/deadlock-sample-merge-join-pipeline.png)</span>

</div>

<div class="olist arabic">

1.  **Pipeline Configuration**: The pipeline generates rows, splits into two streams, and merges back at the [Merge Join](pipeline/transforms/mergejoin.xUVggzdfiy) transform. One stream goes directly to **Merge Join**, while the other passes through an **Add Constants** transform and then a **Sort Rows** transform.

2.  **Rowset Limit**: Suppose the Rowset size for the local Pipeline Run Configuration is set to 10,000 rows. If this pipeline generates 20,003 rows, the two streams might exceed the combined buffer capacity of 20,000 rows (10,000 for each hop), resulting in a pipeline stall.

3.  **Deadlock Trigger**: As the rowset fills up, **Merge Join** may wait for rows from both sorted streams. However, if one stream’s buffer is full, neither stream can proceed, leading to a deadlock.

</div>

<div class="sect3">

#### Solutions to Avoid Deadlocks with Merge Join

<div class="sect4">

##### 1\. Adjust Rowset Size (with Caution)

<div class="paragraph">

As we mentioned in the previous example, increasing the rowset size can temporarily buffer more rows, which may prevent deadlocks in smaller data volumes. However, larger rowsets increase memory usage and can reduce performance, especially with larger datasets.

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Merge Join - rowset size](/images/how-to-guides/deadlocks-stream-lookup/deadlock-stream-lookup-adjust-rowset-size.png)</span>

</div>

<div class="ulist">

  - Open the pipeline’s Pipeline Run Configuration, which sets the engine type.

  - When using the `Local` engine type, adjust the `Rowset size` option to fit your data size and pipeline design.

</div>

</div>

<div class="sect4">

##### 2\. Sort Both Streams Before Merging

<div class="paragraph">

Ensure that both input streams are sorted before they reach the **Merge Join** transform. Sorting allows rows to flow smoothly and sequentially, reducing the likelihood of a buffer overflow and subsequent deadlock.

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Merge Join - sort both streams](/images/how-to-guides/deadlocks-merge-join/deadlock-merge-join-sort-both-streams.png)</span>

</div>

<div class="ulist">

  - Use the **Sort Rows** transform on each stream before joining them.

  - If the data comes from a database and uses consistent data types, sorting within the database may be sufficient.

</div>

</div>

<div class="sect4">

##### 3\. Use the Blocking Transform

<div class="paragraph">

For pipelines where sequential processing is essential, the [Blocking](pipeline/transforms/blockingtransform.xUVggzdfiy) transform can help manage flow control. Configure it to process all rows in one stream before releasing them to the next transform.

</div>

<div class="paragraph">

<span class="image">![Deadlocks in pipelines using Merge Join - blocking transform](/images/how-to-guides/deadlocks-merge-join/deadlock-merge-join-blocking-transform.png)</span>

</div>

<div class="ulist">

  - Set the Blocking transform’s **Pass all rows** option to enable sequential row processing.

  - Fine-tune the **cache size** in the Blocking transform settings as necessary for optimal performance.

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:01 +0200

</div>

</div>
