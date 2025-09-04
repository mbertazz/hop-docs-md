<div id="header">

# Pipeline Log

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

<div class="paragraph">

After your project has gone through the initial development and testing, knowing what is going on in runtime becomes important.

</div>

<div class="paragraph">

The Apache Hop Pipeline Log allows the logging of the activity of a pipeline with another pipeline. A Pipeline Log streams logging information from a running pipeline to another pipeline. The Pipeline Log will be created in JSON format.

</div>

<div class="paragraph">

Hop will pass the logging information for each pipeline you run to the pipeline(s) you specify as pipeline log metadata objects. In this post, we’ll look at an example of how to configure and use the pipeline log metadata to write pipeline logging information to a relational database.

</div>

<div class="paragraph">

The examples here are provided we use variables to separate code and configuration according to best practices in your Apache Hop projects.

</div>

</div>

</div>

<div class="sect1">

## Step 1: Create a Pipeline Log metadata object

<div class="sectionbody">

<div class="paragraph">

To create a **Pipeline Log** click on the **New → Pipeline Log** option or click on the **Metadata → Pipeline Log** option.

</div>

<div class="paragraph">

<span class="image">![new pipeline log](../assets/images/how-to-guides/logging-pipeline-log/new-pipeline-log.jpg)</span>

</div>

<div class="paragraph">

The system displays the **New Pipeline Log** view with the following fields to be configured.

</div>

<div class="paragraph">

<span class="image">![create new pipeline log](../assets/images/how-to-guides/logging-pipeline-log/new-pipeline-log.jpg)</span>

</div>

<div class="paragraph">

The Pipeline Log can be configured as in the following example:

</div>

<div class="ulist">

  - Name: the name of the metadata object (pipelines-logging).

  - Enabled: (checked).

  - Pipeline executed to capture logging: select or create the pipeline to process the logging information for this Pipeline Log `(${PROJECT_HOME}/hop/logging/pipelines-logging.hpl)`.

</div>

<div class="paragraph">

Next, select or create the pipeline to be used for logging the activity. We’ll create a pipeline soon, important to note is that you can use all the functionality in Apache Hop pipeline to work with the logging data. The only prerequisite is that the first transform in this pipeline needs to start with a [pipeline logging transform](pipeline/transforms/pipeline-logging.3kbqP69jhc).

</div>

<div class="ulist">

  - Execute at the start of the pipeline?: (checked).

  - Execute at the end of the pipeline?: (checked).

  - Execute periodically during execution?: (unchecked)

</div>

<div class="paragraph">

Finally, save the Pipeline Log configuration.

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
<td>pipeline logging will apply to any pipeline you run in the current project. That may not be necessary or even not desired. If you want to only work with logging information for a selected number of pipelines, you can add a selection of pipelines to the table below the configuration options (&quot;Capture output of the following pipelines&quot;). The screenshot below shows the single &quot;generate-fake-books.hpl&quot; pipeline that logging will be captured for in the default Apache Hop samples project.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

<span class="image">![Pipeline log selection](../assets/images/how-to-guides/logging-pipeline-log/pipeline-log-selection.png)</span>

</div>

</div>

</div>

<div class="sect1">

## Step 2: Create a new pipeline with the Pipeline Logging transform

<div class="sectionbody">

<div class="paragraph">

To create the pipeline you can go to the perspective area or by clicking on the New button in the New Pipeline Log dialog. Then, choose a folder and a name for the pipeline.

</div>

<div class="paragraph">

A new pipeline is automatically created with a Pipeline Logging transform connected to a [Dummy transform](pipeline/transforms/dummy.3kbqP69jhc) (Save logging here).

</div>

<div class="paragraph">

<span class="image">![pipeline log](../assets/images/how-to-guides/logging-pipeline-log/pipeline-log.jpg)</span>

</div>

<div class="paragraph">

Now it’s time to configure the Pipeline Logging transform. This configuration is very simple, open the transform and set your values as in the following example:

</div>

<div class="paragraph">

<span class="image">![Pipeline logging transform](../assets/images/how-to-guides/logging-pipeline-log/pipeline-logging-transform.jpg)</span>

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

The [Table Output](pipeline/transforms/tableoutput.3kbqP69jhc) transform allows you to load data into a database table. Table Output is equivalent to the DML operator INSERT. This transform provides configuration options for the target table and a lot of housekeeping and/or performance-related options such as Commit Size and Use batch update for inserts.

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

<span class="image">![Pipeline log to table](../assets/images/how-to-guides/logging-pipeline-log/pipeline-log2.jpg)</span>

</div>

<div class="paragraph">

Now it’s time to configure the Table Output transform. Open the transform and set your values as in the following example:

</div>

<div class="paragraph">

<span class="image">![Table output properties](../assets/images/how-to-guides/logging-pipeline-log/table-output-properties.png)</span>

</div>

<div class="paragraph">

Transform name: choose a name for your transform, just remember that the name of the transform should be unique in your pipeline (pipelines logging).

</div>

<div class="ulist">

  - Connection: The database connection to which data will be written (logging-connection). The connection was configured by using the logging-connection.json environment file that contains the variables: <span class="image">![database connection](../assets/images/how-to-guides/logging-pipeline-log/rdbms-connection.png)</span>

  - Target table: The name of the table to which data will be written (pipelines-logging).

  - Click on the SQL option to generate the SQL to create the output table automatically:

</div>

<div class="paragraph">

<span class="image">![create table DDL statement](../assets/images/how-to-guides/logging-pipeline-log/sql-statements.jpg)</span>

</div>

<div class="ulist">

  - Execute the SQL statements:

</div>

<div class="paragraph">

<span class="image">![execute DDL statement](../assets/images/how-to-guides/logging-pipeline-log/sql-statements-execution.jpg)</span>

</div>

<div class="ulist">

  - Open the created table in your favorite database explorer (e.g DBeaver) to see all the logging fields:

</div>

<div class="paragraph">

<span class="image">![pipeline log table](../assets/images/how-to-guides/logging-pipeline-log/pipeline-log-table.jpg)</span>

</div>

<div class="ulist">

  - Close and save the pipeline.

</div>

</div>

</div>

<div class="sect1">

## Step 4: Run a pipeline and check the logs

<div class="sectionbody">

<div class="paragraph">

Finally, run a pipeline by clicking on the **Run → Launch** option. In this case, we use a basic pipeline (generate-rows.hpl) that generates a constant and writes the 1000 rows to a CSV file:

</div>

<div class="paragraph">

<span class="image">![run pipeline logging](../assets/images/how-to-guides/logging-pipeline-log/run-pipeline-logging.jpg)</span>

</div>

<div class="paragraph">

The data of the pipeline execution will be recorded in the pipelines-logging table.

</div>

<div class="paragraph">

<span class="image">![pipeline transform metrics](../assets/images/how-to-guides/logging-pipeline-log/run-pipeline-transform-metrics.jpg)</span>

</div>

<div class="paragraph">

Check the data in the pipelines-logging table.

</div>

<div class="paragraph">

<span class="image">![pipeline logging in table](../assets/images/how-to-guides/logging-pipeline-log/run-pipeline-table.jpg)</span>

</div>

</div>

</div>

<div class="sect1">

## Next steps

<div class="sectionbody">

<div class="paragraph">

You now know how to use the pipeline log metadata type to work with everything Apache Hop has to offer to process your pipeline logging information.

</div>

<div class="paragraph">

Check the related page on [workflow log](how-to-guides/logging-workflow-log.3kbqP69jhc) to learn how to set up a similar process to work with workflow logging.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:02 +0200

</div>

</div>
