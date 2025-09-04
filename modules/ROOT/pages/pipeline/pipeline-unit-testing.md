<div id="header">

# Pipeline Unit Testing

</div>

<div id="content">

<div class="sect1">

## The need for unit testing

<div class="sectionbody">

<div class="paragraph">

Hop pipelines manipulate data coming from a variety of data sources, reading input and producing output. Hop unit tests simulate inputs in the form of *Input data sets* and validates output against *Golden data sets*. A unit test is a combination of zero or more input sets and golden data sets along with a bunch of tweaks you can do to the pipelines prior to testing.

</div>

<div class="paragraph">

Hop pipelines allow Hop developers to work test-driven, but also allow to perform regression testing, to make sure that old issues that were once fixed remain fixed.

</div>

<div class="paragraph">

Hop unit tests can speed up development in a number of cases:

</div>

<div class="ulist">

  - pipelines without design time input: mappings, single threader, …​

  - when input data doesn’t exist yet, is in development, or where there is no direct access to the source system.

  - When it takes a long time to get to input data, long running queries, …​ Please note that you can flag a unit test to be opened and selected automatically when a pipeline is loaded in Hop Gui.

</div>

</div>

</div>

<div class="sect1">

## Main components of a unit test

<div class="sectionbody">

<div class="paragraph">

Hop uses the following concepts (metadata objects) to work with pipeline unit tests:

</div>

<div class="ulist">

  - Data set : A set of rows with a certain layout, stored in a CSV data set. When used as input we call it an input data set. When used to validate a transform’s output we call it a *golden* data set.

  - Unit test tweak: the ability to remove or bypass a transform during a test

  - Unit test: The combination of input data sets, golden data sets, tweaks and a pipeline.

</div>

<div class="paragraph">

You can have 0, 1 or more input or golden data sets defined in a unit test. You can have multiple unit tests defined per pipeline.

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
<td>a default data set folder can be specified in the project dialog. Check the 'Data Sets CSV Folder (HOP_DATASETS_FOLDER)'. By default, the value for the <code>${HOP_DATASETS_FOLDER}</code> variable is set to <code>${PROJECT_HOME}/datasets</code>.</td>
</tr>
</tbody>
</table>

</div>

</div>

</div>

<div class="sect1">

## Unit tests in runtime

<div class="sectionbody">

<div class="paragraph">

When a pipeline is executed in Hop Gui and a unit test is selected the following happens:

</div>

<div class="ulist">

  - all transforms marked with an input data set are replaced with an Injector transform

  - all transforms marked with a golden data set are replaced with a dummy transform (does nothing).

  - all transforms marked with a "Bypass" tweak are replaced with a dummy.

  - all transforms marked with a "Remove" tweak are removed

</div>

<div class="paragraph">

These operations take place on a copy of the pipeline, in memory only unless you specify a hpl file location in the unit test dialog.

</div>

<div class="paragraph">

After execution, transform output is validated against golden data and logged. In case of errors in the test, a dialog will pop up when running in Hop Gui.

</div>

</div>

</div>

<div class="sect1">

## Create unit tests

<div class="sectionbody">

<div class="sect2">

### Unit test and data set options

<div class="paragraph">

The 'Unit Testing' category in the transform context dialog (click on transform icon to open) contains the available unit testing options:

</div>

<div class="imageblock">

<div class="content">

![Pipeline Unit Testing - Data Sets](/images/pipeline-unit-testing-data-sets.png)

</div>

</div>

<div class="ulist">

  - **Set input data set**: For the active unit test, it defines which data set to use instead of the output of the transform

  - **Clear input data set**: Remove a defined input data set from this transform unit test

  - **Set golden data set**: The input to this transform is taken and compared to the golden data set you are selecting.

  - **Clear golden data set**: Remove a defined input data set for this transform unit test

  - **Create data set**: Create an empty data set with the output fields of this transform

  - **Write rows to data set**: Run the current pipeline and write the data to a data set

  - **Remove from test**: When this unit test is run, do not include this transform

  - **Include in test**: Run the current pipeline and write the data to a data set

  - **Bypass in test**: When this unit test is run, bypass this transform (replace with a dummy)

  - **Remove bypass in test**: Do not bypass this transform in the current pipeline during testing

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
<td>creating data sets is also possible from the 'New' context menu or metadata perspective.</td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="sect2">

### Create and add data sets

<div class="paragraph">

Consider the following basic pipeline below. This pipeline reads data from a csv file, extracts the years from a date of birth, counts rows by this year, sorts and writes out to a file.

</div>

<div class="paragraph">

We’ll use this example to create a test to verify the output of the pipeline is what we expected.

</div>

<div class="imageblock">

<div class="content">

![Unit Test - Pipeline](/images/pipeline-unit-testing-pipeline.png)

</div>

</div>

<div class="paragraph">

Click the '+' icon (highlighted) in the unit testing toolbar to create a new unit test. Previously created unit tests will be available from the dropdown box for editing.

</div>

<div class="imageblock">

<div class="content">

![Unit Test - create test](/images/pipeline-unit-testing-create-unit-test.png)

</div>

</div>

<div class="paragraph">

The options in this dialog are:

</div>

| Name                                             | name to use for this unit test                                                                                       |
| ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| Description                                      | a description for this unit test                                                                                     |
| Type of test                                     | 'Unit test' or 'Development'                                                                                         |
| The pipeline to test                             | the pipeline this test applies to. By default, you should see the active pipeline filename here.                     |
| Test pipeline filename (Optional)                | the filename to use for this unit test.                                                                              |
| Base test path (or use HOP\_UNIT\_TESTS\_FOLDER) | the folder to store this unit test to.                                                                               |
| Select this test automatically                   | default: false                                                                                                       |
| Replace a database connection with another       | specify a list of database connections for this pipeline that you’d like to swap out for a test-specific connection. |
| Variables                                        | a list of variables to use in testing.                                                                               |

<div class="paragraph">

You’ll get a popup dialog `Do you want to use this unit test for the active pipeline '<YOUR PIPELINE NAME>?'`. Since we’re creating a unit test for the active pipeline in this example, confirming is fine.

</div>

<div class="paragraph">

Click on the 'read customers' transform icon to open the context dialog, click 'Create data set'. The popup dialog already shows the field layout in the bottom half of the dialog. Give the data set a name and file name.

</div>

<div class="imageblock">

<div class="content">

![Unit Test - Create data set](/images/pipeline-unit-testing-create-data-set.png)

</div>

</div>

<div class="paragraph">

Do the same for the output transform you’ll want to check the data for ('customers by year out' in the example).

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
<td>check the metadata perspective. You should now have two data sets available.</td>
</tr>
</tbody>
</table>

</div>

<div class="paragraph">

To write data to the newly created data sets, click the 'read customers' transform icon again, click 'Write rows to data set'. You’ll get a popup dialog asking you to select the data set, followed by a dialog where you can map transform output fields to data set fields. For this example, just click 'guess'.

</div>

<div class="paragraph">

Repeat for the 'customer by year out' transform and data set.

</div>

<div class="paragraph">

Click the 'read customers' transform icon again, select 'set input data set'. Select the data set and accept the sort order.

</div>

<div class="paragraph">

Repeat for 'customers by year out', but use 'Set golden data set'.

</div>

<div class="paragraph">

Your pipeline now has two new indicators for ths input and output data set.

</div>

<div class="imageblock">

<div class="content">

![Unit Test - data set enabled](/images/pipeline-unit-testing-data-sets-enabled.png)

</div>

</div>

</div>

<div class="sect2">

### Run the unit test

<div class="paragraph">

If the pipeline runs with all tests passed, you’ll receive a notification in the logs:

</div>

<div class="listingblock">

<div class="content">

``` highlight
2025/04/02 21:16:43 - get year.0 - Finished processing (I=0, O=0, R=10000, W=10000, U=0, E=0)
2025/04/02 21:16:43 - count by year.0 - Finished processing (I=0, O=0, R=10000, W=22, U=0, E=0)
2025/04/02 21:16:43 - sort by year.0 - Finished processing (I=0, O=0, R=22, W=22, U=0, E=0)
2025/04/02 21:16:43 - customers by year out.0 - Finished processing (I=0, O=0, R=22, W=22, U=0, E=0)
2025/04/02 21:16:43 - read-customers - Unit test 'read-customers UNIT' passed succesfully
2025/04/02 21:16:43 - read-customers - ----------------------------------------------
2025/04/02 21:16:43 - read-customers - customers by year out - customers-by-year : Test passed succesfully against golden data set
2025/04/02 21:16:43 - read-customers - Test passed succesfully against unit test
2025/04/02 21:16:43 - read-customers - ----------------------------------------------
2025/04/02 21:16:43 - read-customers - Pipeline duration : 0.108 seconds [  0.108 ]
2025/04/02 21:16:43 - read-customers - Execution finished on a local pipeline engine with run configuration 'local'
```

</div>

</div>

<div class="paragraph">

If changes to the pipeline cause the test to fail, a popup will be shown for the failed rows.

</div>

<div class="paragraph">

In the example below, the number of rows for the year 1990 was changed from 486 to 487, causing the test to fail:

</div>

<div class="imageblock">

<div class="content">

![Unit test - failed](/images/pipeline-unit-testing-test-failed.png)

</div>

</div>

<div class="paragraph">

While successful test show 'Test passed succesfully against golden data set' and 'Test passed succesfully against unit test', failed unit tests may show one of the error messages listed below:

</div>

<div class="ulist">

  - `Incorrect number of rows received from transform, golden data set <GOLDEN_DATASET_NAME> has <GOLDEN_DATASET_ROWS> rows in it and we received <NB_ROWS_FOUND>`

  - `Validation against golden data failed for row number <ROW_NUMBER>, field <FIELD_NAME>: transform value [<FIELD_VALUE>] does not correspond to data set value [<GOLDEN_DATASET_VALUE>]`

</div>

</div>

<div class="sect2">

### Remove and bypass transforms in unit tests

<div class="paragraph">

While developing pipelines, you’ll often remove or disable transforms in a pipeline. We can do the same in unit tests.

</div>

<div class="paragraph">

In our example, we may want to remove or bypass the transform that caused the test to fail ('486 → 487').  
Click on the transform icon and select either 'Bypass in Test' or 'Remove from test'. Bypassing a transform in a test will replace the transform with a Dummy transform while executing the test. As the name implies, 'Remove from test' will remove the transform from the test pipeline, exactly like you would remove a transform from a pipeline.

</div>

<div class="paragraph">

In the case of bypassing a transform, your pipeline will look like the one below ('Remove' will add a similar icon to the transform icon, crossing it out).

</div>

<div class="imageblock">

<div class="content">

![Unit Test - Bypass transform](/images/pipeline-unit-testing-bypass-transform.png)

</div>

</div>

</div>

</div>

</div>

<div class="sect1">

## Automate unit test execution

<div class="sectionbody">

<div class="sect2">

### Run unit tests in a workflow

<div class="paragraph">

There is a workflow action called "Run Pipeline Unit Tests" which can execute all defined unit tests of a certain type. The output of the transform can be stored in any format or location with regular Hop transforms. Execute the workflow through hop-run, in a scheduler or through a CI/CD pipeline in e.g. Jenkins.

</div>

<div class="paragraph">

Use the 'Get test names' in this action to specify which of the available unit tests you want to include in your workflow.

</div>

<div class="imageblock">

<div class="content">

![Unit Test - Workflow](/images/pipeline-unit-testing-workflow.png)

</div>

</div>

<div class="paragraph">

In the workflow logging output, you’ll find information about the exit state of your unit tests:

</div>

<div class="listingblock">

<div class="content">

``` highlight
2025/04/02 10:05:23 - read-customers - Unit test 'read-customers UNIT' passed succesfully
2025/04/02 10:05:23 - read-customers - ----------------------------------------------
2025/04/02 10:05:23 - read-customers - customers by year out - customers-by-year : Test passed succesfully against golden data set
2025/04/02 10:05:23 - read-customers - Test passed succesfully against unit test
2025/04/02 10:05:23 - read-customers - ----------------------------------------------
2025/04/02 10:05:23 - read-customers - Pipeline duration : 0.227 seconds [  0.227" ]
```

</div>

</div>

</div>

<div class="sect2">

### Run unit tests in a pipeline

<div class="paragraph">

Similar to the workflow action, there’s a transform to run your unit tests:

</div>

<div class="paragraph">

<span class="image">![Unit Test - Run Unit Tests](/images/pipeline-unit-testing-run-unit-tests-pipeline.png)</span>

</div>

</div>

</div>

</div>

<div class="sect1">

## Examples

<div class="sectionbody">

<div class="paragraph">

The Apache Hop project runs hundreds of integration tests on a daily basis to test the Apache Hop functionality. A lot of these integration tests use unit tests.

</div>

<div class="paragraph">

Each of the subfolders in our GitHub’s [`integration-tests`](https://github.com/apache/hop/tree/main/integration-tests) folder is a self-contained Apache Hop project that can be added to and opened in Hop Gui (check for the `project-config.json`). A basic environment configuration file `dev-env-config.json` is available in these projects, and can be added to your project.

</div>

<div class="paragraph">

For example, you can add the [`transforms`](https://github.com/apache/hop/tree/main/integration-tests/transforms) folder as a project to your local Apache Hop installation and run the available pipelines to learn more about unit testing in Apache Hop.

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:34 +0200

</div>

</div>
