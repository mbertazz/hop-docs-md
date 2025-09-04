<div id="header">

# Parallel execution in Apache Hop workflows

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

One of the first [concepts](installation-configuration.ebTgimgEGW) new Apache Hop users learn is that pipelines are executed in parallel and workflows are executed sequentially.

</div>

<div class="paragraph">

However, there are cases where you want to overrule these defaults and execute pipelines sequentially and workflows in parallel. We’ll take a closer look at the latter use case in more detail and show how you can run actions in a workflow in parallel.

</div>

</div>

</div>

<div class="sect1">

## Multiple workflow action hops

<div class="sectionbody">

<div class="paragraph">

As you already know, actions in a workflow are executed sequentially. Each action in a workflow has an exit code (success or failure) that determines the path the workflow will follow. This exit code can be ignored in the case of an unconditional hop.

</div>

<div class="paragraph">

A workflow action can have multiple outgoing hops. However, this doesn’t mean the workflow will follow all hops in parallel. If an action has multiple outgoing hops, the default workflow behavior is to execute all actions sequentially in the order they were added to the workflow.

</div>

<div class="paragraph">

In the example below, the workflow will execute "sample-pipeline.hpl 1" first. Once that action is completed, the workflow will continue to "sample-pipeline.hpl 2".

</div>

<div class="paragraph">

<span class="image">![Sequential actions in Apache Hop workflows](../assets/images/how-to-guides/parallel-workflows/sequential-actions.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Parallel execution

<div class="sectionbody">

<div class="paragraph">

Parallel execution in a workflow is possible, but this needs to be specified explicitly. To do so, click on an action’s icon and click the "parallel execution" option. Once the parallel option has been activated, the hop line will be dotted and double-crossed, as shown in the screenshot below.

</div>

<div class="paragraph">

Keep in mind that parallel execution means that all actions that run in parallel will have to share the resources in the Java Virtual Machine (JVM). Small pipelines and workflow actions that run in parallel may be faster, but larger items that require a lot of memory or CPU power may be faster when executed sequentially.

</div>

<div class="paragraph">

<span class="image">![parallel option in Apache Hop workflows](../assets/images/how-to-guides/parallel-workflows/parallel-option.png)</span>

</div>

<div class="paragraph">

<span class="image">![parallel actions in Apache Hop workflows](../assets/images/how-to-guides/parallel-workflows/parallel-actions.png)</span>

</div>

<div class="paragraph">

When you run this workflow, the log message will tell you both actions have started in parallel:

</div>

<div class="listingblock">

<div class="content">

``` highlight
2023/05/01 10:14:42 - parallel-workflow - Start of workflow execution
2023/05/01 10:14:42 - parallel-workflow - Starting action [sample-pipeline.hpl 1]
2023/05/01 10:14:42 - parallel-workflow - Launched action [sample-pipeline.hpl 1] in parallel.
2023/05/01 10:14:42 - parallel-workflow - Starting action [sample-pipeline.hpl 2]
2023/05/01 10:14:42 - parallel-workflow - Launched action [sample-pipeline.hpl 2] in parallel.
```

</div>

</div>

</div>

</div>

<div class="sect1">

## Combining sequential and parallel execution

<div class="sectionbody">

<div class="paragraph">

Once you tell a workflow to run in parallel from a given action, it will continue to run the subsequent actions in parallel.

</div>

<div class="paragraph">

Consider the extremely simple workflow below. This workflow starts both "sample pipeline actions in parallel. After the sample pipelines, the workflow will execute the respective "Write to log" actions, and both workflows will execute the "Dummy" action.

</div>

<div class="paragraph">

The effective result will be what is shown in the second screenshot below:

</div>

<div class="paragraph">

<span class="image">![continue workflow execution in parallel](../assets/images/how-to-guides/parallel-workflows/continue-in-parallel.png)</span>

</div>

<div class="paragraph">

<span class="image">![continue workflow execution in parallel is similar two running in two separate streams](../assets/images/how-to-guides/parallel-workflows/continue-in-parallel-two-streams.png)</span>

</div>

<div class="paragraph">

In a lot of cases, you’ll only want to execute parts of a workflow in parallel. Example use cases could be that you want to load data to a number of relatively small database tables or generate a number of relatively small files before continuing with the more heavy lifting.

</div>

<div class="paragraph">

In those scenarios, you’ll want to isolate the parallel processing in a separate child workflow.

</div>

<div class="paragraph">

In the screenshot below, we’ve isolated the part of the workflow we want to execute in parallel into a child workflow. When this workflow runs, the child workflow ("parallel workflow") will run both actions in parallel. The child workflow will run both sample pipelines in parallel. When the last of these two pipelines finishes, the parent workflow will continue its (sequential) execution.

</div>

<div class="paragraph">

<span class="image">![parallel execution - parent workflow](../assets/images/how-to-guides/parallel-workflows/parallel-workflow-parent.png)</span>

</div>

<div class="paragraph">

<span class="image">![parallel actions - child workflow](../assets/images/how-to-guides/parallel-workflows/parallel-actions.png)</span>

</div>

<div class="sect2">

### Using the Join Action Instead of a Child Workflow

<div class="paragraph">

As of recent versions of Apache Hop, you can achieve the same effect **without a child workflow** by using the new `Join` action.

</div>

<div class="paragraph">

The `Join` action allows you to **synchronize multiple parallel branches directly within the same workflow**. It waits until all incoming branches have completed before allowing the workflow to continue. This makes it ideal when you want to combine parallel and sequential execution in a single workflow, without the added complexity of nesting child workflows.

</div>

<div class="paragraph">

To use the Join action:

</div>

<div class="olist arabic">

1.  From your starting action, create multiple outgoing hops.

2.  Enable **parallel execution** on the hops you want to run simultaneously.

3.  Add a `Join` action where those branches should merge.

4.  Connect the `Join` action to the next sequential action(s).

</div>

<div class="paragraph">

<span class="image">![Using the join action instead of a child workflow](../assets/images/how-to-guides/parallel-workflows/continue-in-parallel-join.png)</span>

</div>

<div class="paragraph">

This approach simplifies workflow design, improves readability, and reduces the number of components to manage.

</div>

<div class="paragraph">

**Use the `Join` action when:**

</div>

<div class="ulist">

  - You want to synchronize parallel execution within a single workflow.

  - You want to avoid external child workflows for basic parallel branching.

  - You need to continue processing **only after all parallel branches are finished**.

</div>

</div>

</div>

</div>

<div class="sect1">

## Summary

<div class="sectionbody">

<div class="paragraph">

In this post, we walked through the various options to run workflow actions in parallel in Apache Hop. You also learned how to combine parallel and sequential execution through child workflows.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:04 +0200

</div>

</div>
