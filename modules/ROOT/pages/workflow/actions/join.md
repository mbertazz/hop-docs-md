<div id="header">

</div>

<div id="content">

<div class="sect1">

## Join Action

<div class="sectionbody">

<div class="sect2">

### Description

<div class="paragraph">

The **Join** action is used to synchronize parallel branches in a workflow. It acts as a control point that **waits for all preceding parallel branches at the same level** to complete before continuing with the next action(s).

</div>

<div class="paragraph">

This eliminates the need to create separate child workflows solely for the purpose of joining and continuing execution after parallel tasks have completed.

</div>

</div>

<div class="sect2">

### Usage

<div class="paragraph">

Traditionally in Apache Hop, if you wanted to run parts of a workflow in parallel and then continue with a sequential flow, you would isolate those parallel sections in a child workflow. This was necessary to prevent downstream actions from being executed prematurely.

</div>

<div class="paragraph">

With the new **Join** action, this workaround is no longer needed.

</div>

<div class="paragraph">

To use the Join action:

</div>

<div class="olist arabic">

1.  Configure your workflow with multiple outgoing hops from a single action.

2.  Enable **parallel execution** on the outgoing hops you want to run in parallel.

3.  Add the **Join** action at the point where all parallel branches converge.

4.  Connect all parallel branches to the **Join** action with regular (non-parallel) hops.

5.  Connect the **Join** action to the next action you want to execute **after all parallel tasks have finished**.

</div>

</div>

<div class="sect2">

### Example Workflow Structure

<div class="paragraph">

When executed:

</div>

<div class="paragraph">

<span class="image">![Using the join action instead of a child workflow](../assets/images/how-to-guides/parallel-workflows/continue-in-parallel-join.png)</span>

</div>

<div class="ulist">

  - The actions `pipeline-1`, `pipeline-2` and `pipeline-3` run in parallel.

  - The `join` action waits until `pipeline-1`, `pipeline-2` and `pipeline-3` are finished.

  - Once they complete, the workflow continues with final action `check-datasets`.

</div>

</div>

<div class="sect2">

### Benefits

<div class="ulist">

  - **Simplifies parallel execution:** No need for a separate child workflow just to coordinate branches.

  - **Improves readability:** Your parallel and sequential logic can be maintained in a single workflow.

  - **Increases maintainability:** Fewer components and external dependencies (child workflows) to manage.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:15 +0200

</div>

</div>
