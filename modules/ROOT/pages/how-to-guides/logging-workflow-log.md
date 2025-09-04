<div id="header">

# Workflow Log

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

After your project has gone through the initial development and testing, knowing what is going on in runtime becomes important.

</div>

<div class="paragraph">

The Workflow Logs in Hop allow workflow logging information to be passed down to a pipeline for processing as JSON objects. The receiving pipeline can process this logging information with all the functionality Hop pipelines have to offer, e.g. write to a relational or NoSQL database, a Kafka topic, etc.

</div>

<div class="paragraph">

Hop will send the logging information for each workflow you run to the Workflow Log pipeline you specify.

</div>

<div class="paragraph">

In this post, we’ll look at an example of how to configure and use the Workflow Log metadata to write workflow logging information to a relational database.

</div>

</div>

</div>

<div class="sect1">

## Step 1: Create a Workflow Log metadata object

<div class="sectionbody">

<div class="paragraph">

To create a **Workflow Log** click on the **New → Workflow Log** option or click on the **Metadata → Workflow Log** option.

</div>

<div class="paragraph">

The system displays the New Workflow Log view with the following fields to be configured.

</div>

<div class="paragraph">

<span class="image">![new workflow log](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-new.jpg)</span>

</div>

<div class="paragraph">

The Workflow Log can be configured as in the following example:

</div>

<div class="paragraph">

<span class="image">![configure workflow log](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-config.jpg)</span>

</div>

<div class="ulist">

  - Name: the name of the metadata object (workflows-logging).

  - Enabled: (checked).

  - Pipeline executed to capture logging: select or create the pipeline to process the logging information for this Pipeline Log (${PROJECT\_HOME}/hop/logging/workflows-logging.hpl).

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
<td>You should select or create the pipeline to be used for logging the activity.</td>
</tr>
</tbody>
</table>

</div>

<div class="ulist">

  - Execute at the start of the pipeline?: (checked).

  - Execute at the end of the pipeline?: (checked).

  - Execute periodically during execution?: (unchecked).

</div>

<div class="paragraph">

Finally, save the workflow log configuration.

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
<td>workflow logging will apply to any workflow you run in the current project. That may not be necessary or even not desired. If you want to only work with logging information for a selected number of workflows, you can add a selection of workflows to the table below the configuration options (&quot;Capture output of the following workflows&quot;). The screenshot below shows the single &quot;generate-fake-books.hwf&quot; workflow that logging will be captured for in the default Apache Hop samples project.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

<span class="image">![workflow log selection](../assets/images/how-to-guides/logging-workflow-log/workflow-log-selection.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Step 2: Create a new pipeline with the Workflow Logging transform

<div class="sectionbody">

<div class="paragraph">

To create the pipeline you can go to the perspective area or by clicking on the New button in the New Workflow Log dialog. Then, choose a folder and a name for the pipeline.

</div>

<div class="paragraph">

A new pipeline is automatically created with a [Workflow Logging](pipeline/transforms/workflow-logging.VkIdFa4pXv) transform connected to a [Dummy](pipeline/transforms/dummy.VkIdFa4pXv) transform (Save logging here).

</div>

<div class="paragraph">

<span class="image">![workflow logging pipeline](../assets/images/how-to-guides/logging-workflow-log/workflow-logging.jpg)</span>

</div>

<div class="paragraph">

Now it’s time to configure the Workflow Logging transform. This configuration is very simple, open the transform and set your values as in the following example:

</div>

<div class="paragraph">

<span class="image">![configure workflow loggin](../assets/images/how-to-guides/logging-workflow-log/config-workflow-logging.jpg)</span>

</div>

<div class="ulist">

  - Transform name: choose a name for your transform, just remember that the name of the transform should be unique in your pipeline (log).

  - Also log transform: selected by default.

</div>

</div>

</div>

<div class="sect1">

## Step 3: Add and configure a Table output transform

<div class="sectionbody">

<div class="paragraph">

The Table Output transform allows you to load data into a database table. Table Output is equivalent to the DML operator INSERT. This transform provides configuration options for the target table and a lot of housekeeping and/or performance-related options such as Commit Size and Use batch update for inserts.

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
<td>In this example, we are going to use a relational database connection to log but you can also use output files. In case you decide to use a database connection, check the installation and availability as a pre-requirement.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

Add a Table Output transform by clicking anywhere in the pipeline canvas, then Search 'table output' → Table Output.

</div>

<div class="paragraph">

<span class="image">![workflow logging table output](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-pipeline.jpg)</span>

</div>

<div class="paragraph">

Now it’s time to configure the Table Output transform. Open the transform and set your values as in the following example:

</div>

<div class="paragraph">

<span class="image">![workflow logging table output](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-table-output.png)</span>

</div>

<div class="ulist">

  - Transform name: choose a name for your transform, just remember that the name of the transform should be unique in your pipeline (workflows logging).

  - Connection: The database connection to which data will be written (logging-connection). The connection was configured by using the logging-connection.json environment file that contains the variables:

</div>

<div class="paragraph">

<span class="image">![workflow log db connection](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-connection.png)</span>

</div>

<div class="ulist">

  - Target table: The name of the table to which data will be written (workflows-logging).

  - Click on the SQL option to generate the SQL to create the output table automatically

</div>

<div class="paragraph">

<span class="image">![create logging table DDL statement](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-sql.jpg)</span>

</div>

<div class="ulist">

  - Execute the SQL statements. In this simple scenario, we’ll execute the SQL directly. In real-life projects, consider managing your DDL in version control and through tools like [Liquibase](https://www.liquibase.org/) or [Flyway](https://flywaydb.org/).

</div>

<div class="paragraph">

<span class="image">![create table execution](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-execute-sql.jpg)</span>

</div>

<div class="ulist">

  - Open the created table to see all the logging fields:

</div>

<div class="paragraph">

<span class="image">![log table fields](../assets/images/how-to-guides/logging-workflow-log/workflow-logging-table.jpg)</span>

</div>

<div class="ulist">

  - Close and save the transform.

</div>

</div>

</div>

<div class="sect1">

## Step 4: Run a workflow and check the logs

<div class="sectionbody">

<div class="paragraph">

Finally, run a workflow by clicking on the Run → Launch option. The Workflow Log pipeline will be executed by any workflow you’ll run.

</div>

<div class="paragraph">

<span class="image">![run a workflow](../assets/images/how-to-guides/logging-workflow-log/run-workflow.png)</span>

</div>

<div class="paragraph">

The executed pipeline (generate-rows.hpl) generates a constant and writes the 1000 rows to a CSV file:

</div>

<div class="paragraph">

<span class="image">![generate rows pipeline](../assets/images/how-to-guides/logging-workflow-log/pipeline-generate-rows.jpg)</span>

</div>

<div class="paragraph">

The data of the workflow execution will be recorded in the workflows-logging table.

</div>

<div class="paragraph">

<span class="image">![run workflow logging](../assets/images/how-to-guides/logging-workflow-log/run-workflow-logging.jpg)</span>

</div>

<div class="paragraph">

<span class="image">![workflow metrics](../assets/images/how-to-guides/logging-workflow-log/run-workflow-metrics.jpg)</span>

</div>

<div class="paragraph">

Check the data in the table.

</div>

<div class="paragraph">

<span class="image">![workflow metrics in table](../assets/images/how-to-guides/logging-workflow-log/workflow-log-table.jpg)</span>

</div>

</div>

</div>

<div class="sect1">

## Next steps

<div class="sectionbody">

<div class="paragraph">

You now know how to use the workflow log metadata type to work with everything Apache Hop has to offer to process your workflow logging information.

</div>

<div class="paragraph">

Check the related page on [pipeline log](how-to-guides/logging-pipeline-log.VkIdFa4pXv) to learn how to set up a similar process to work with pipeline logging.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:03 +0200

</div>

</div>
