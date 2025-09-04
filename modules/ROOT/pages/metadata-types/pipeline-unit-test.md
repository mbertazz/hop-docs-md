<div id="header">

# Pipeline Unit Test

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

<span class="image">![Test tube icon](/images/icons/Test_tube_icon.svg)</span>

</div>

<div class="paragraph">

Describes a test for a pipeline. During the test, alternative data sets are used as input from a given transform and testing output against a golden data set.

</div>

<div class="paragraph">

When the result set produced by the pipeline execution matches the expected result (golden data set), the test succeeds. If the generated results do not match what was expected, the test fails.

</div>

<div class="paragraph">

Specific transforms in a pipeline can be bypassed or removed for testing for addtional flexibility.

</div>

<div class="paragraph">

Additionally, unit tests can be executed in bulk.

</div>

<div class="paragraph">

Check [Pipeline Unit Testing^](/pipeline/pipeline-unit-testing.2ZhE9kojM3) for more details.

</div>

</div>

</div>

<div class="sect1">

## Related Plugins

<div class="sectionbody">

<div class="paragraph">

None/All

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

| Option                                           | Default     | Description                                                                                                                              |
| ------------------------------------------------ | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Name                                             |             | the name to use for this unit test                                                                                                       |
| Description                                      |             | the description to use for this unit test                                                                                                |
| Type of test                                     | Development | 'Development' or 'unit test'                                                                                                             |
| The pipeline to test                             |             | the pipeline that will be tested by this unit test                                                                                       |
| Test pipeline filename (Optional)                |             |                                                                                                                                          |
| Base test path (or use HOP\_UNIT\_TESTS\_FOLDER) |             |                                                                                                                                          |
| Select this test automatically                   | false       |                                                                                                                                          |
| Replace a database connection with another       |             | List of database connections in the pipeline to test (Original DB) to replace by database connections in this unit test (Replacement DB) |
| Variables                                        |             | list of variable names and values to use for this test                                                                                   |

</div>

</div>

<div class="sect1">

## Samples

<div class="sectionbody">

<div class="literalblock">

<div class="content">

    None

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:21:17 +0200

</div>

</div>
