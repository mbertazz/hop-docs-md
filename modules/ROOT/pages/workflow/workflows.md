<div id="header">

# Workflows

</div>

<div id="content">

<div class="sect1">

## Workflow overview

<div class="sectionbody">

<div class="paragraph">

Workflows are one of the core building blocks in Apache Hop. Where pipelines do the heavy data lifting, workflows take care of the orchestration work: prepare the environment, fetch remote files, perform error handling and executing child workflows and pipelines.

</div>

<div class="paragraph">

Workflows consist of a series of [actions](workflow/actions.ZsmPvsT3Pf), connected by hops. Just like a [transform](pipeline/transforms.ZsmPvsT3Pf) in a [pipeline](pipeline/pipelines.ZsmPvsT3Pf), each action is a small piece of functionality. The combination of a number of actions allows Hop developers to build powerful data orchestration solutions.

</div>

<div class="paragraph">

Even though there is some visual resemblance, workflows and pipelines operate very differently.

</div>

<div class="ulist">

  - Workflows perform orchestration tasks. Actions in a workflow usually do not operate on the data directly (even though you *can* change data e.g. through [SQL](workflow/actions/sql.ZsmPvsT3Pf)).

  - Workflows have one (and only one) mandatory starting point (a [Start](workflow/actions/start.ZsmPvsT3Pf) action), but can have multiple end actions.

  - Workflows can

  - Workflows work sequentially by default. Each action in a workflow has a position in the workflow sequence, and needs to wait before the previous actions have completed before it starts.

  - Workflow actions do not pass data over hops. Each workflow action has a `success` or `failure` exit status. This exit status is used to choose the routing through the workflow.

  - Hops between actions in a workflow have a status: depending on the exit status of the previous action, a workflow hop can follow the success (green), failure (orange) or unconditional (black) hop. An unconditional hop ignores the exit status of the previous action and is followed whether the previous action failed or succeeded.

</div>

</div>

</div>

<div class="sect1">

## Example workflow walk-through

<div class="sectionbody">

<div class="paragraph">

Like all workflows, the example workflow shown below starts with the `start` action.

</div>

<div class="paragraph">

The Start action is just a placeholder that can’t really fail, so the hop out of a start action is unconditional.

</div>

<div class="paragraph">

The workflow then continues with a [pipeline](workflow/actions/pipeline.ZsmPvsT3Pf) action, "first-pipeline". As the name implies, this action executes a pipeline.

</div>

<div class="paragraph">

If "first-pipeline" runs successfully, the workflow continues to "second-pipeline". If "first-pipeline" fails, the failure hop to "handle-errors" is followed.

</div>

<div class="paragraph">

In this hypothetical example, we don’t care about the result of "Second pipeline", and want to continue to "delete-tmp-files", where any temporary files are removed.

</div>

<div class="paragraph">

If the temporary files are removed successfully, we move on to the "success" action. Similar to the Start action, success is a visual indicator of successful completion of this part of the workflow. It’s not mandatory and doesn’t add any functionality, but it often is a good visual indicator of an end point of your workflow’s main stream.

</div>

<div class="paragraph">

<span class="image">![Workflows - basic workflows](/images/hop-gui/workflow/basic-workflow.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Next steps

<div class="sectionbody">

<div class="paragraph">

The following pages take you deeper into the process of building and running workflows:

</div>

<div class="ulist">

  - [Create a Workflow](workflow/create-workflow.ZsmPvsT3Pf)

  - [Run and Debug a Workflow](workflow/run-debug-workflow.ZsmPvsT3Pf)

  - [Workflow Run Configurations](workflow/workflow-run-configurations/workflow-run-configurations.ZsmPvsT3Pf)

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:40 +0200

</div>

</div>
