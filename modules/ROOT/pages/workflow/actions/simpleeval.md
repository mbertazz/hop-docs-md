<div id="header">

# Simple evaluation

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Simple evaluation` action evaluates contents or value of a variable or a field in the result stream.

</div>

<div class="paragraph">

Connect two actions with the output of the Simple Evaluation.

</div>

<div class="paragraph">

The green (success) hop will be called if the condition was evaluated successfully, the red (failure) one will be called if the condition wasn’t evaluated successfully.

</div>

</div>

</div>

<div class="sect1">

## Usage

<div class="sectionbody">

<div class="ulist">

  - A Null value is the same as an empty string. For example, to detect a null for any data type, set the Type to String, and the Success condition to "If value is equal to", and have the Value textbox empty.

  - The Simple evaluation Action is limited. For more complex conditions see: <https://hop.apache.org/manual/latest/workflow/actions/eval.html>

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

Option

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Source

Evaluate

Evaluation type: field or variable.

Field name

The field to evaluate

Type

Data type.

Success On

Success condition

<div class="content">

<div class="ulist">

  - If value equal to

  - If value different from

  - If value contains

  - If value not contains

  - If value starts with

  - If value not starts with

  - If value ends with

  - If value not ends with

  - If value valid regex

  - If value in list

  - If value not in list

</div>

</div>

Value

The value to compare.

<div class="sect1">

## Tips

<div class="sectionbody">

<div class="paragraph">

**Evaluating a variable**

</div>

| Field                                 | Value                | Explanation                                                                                                                                                                                                                                                                                                                                                                                                                             |
| ------------------------------------- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Source: Evaluate                      | Variable             | Select this to evaluate a variable set before                                                                                                                                                                                                                                                                                                                                                                                           |
| Source: Variable name                 | e. g. ${VAR1}        | Enter the variable name using the usual syntax                                                                                                                                                                                                                                                                                                                                                                                          |
| Source: Type                          | String, Number etc.  | The type of your variable                                                                                                                                                                                                                                                                                                                                                                                                               |
| Success on: Success when variable set |                      | When this option is selected, the true path is followed when the variable is set. Note: The workflow action checks if the variable is defined, so an empty or null value is also true. When testing this within Hop you need to delete the line with the variable in the variables section of the Execute a workflow window. And remember: Once this variable is set, the variable keeps existing, even when deleting it from the list. |
| Success On: Success condition         | Equal/Non equal/etc. | Select the condition to be met for a successful result                                                                                                                                                                                                                                                                                                                                                                                  |
| Success On: Value                     |                      | Value to compare the variable to                                                                                                                                                                                                                                                                                                                                                                                                        |

<div class="paragraph">

**Evaluating a field**

</div>

| Field                         | Value                      | Explanation                                                                               |
| ----------------------------- | -------------------------- | ----------------------------------------------------------------------------------------- |
| Source: Evaluate              | Field from previous result | Select this to evaluate a field value (generated by a pipeline using Copy rows to result) |
| Source: Field name            |                            | Enter the field name from the result row                                                  |
| Source: Type                  | String, Number etc.        | The type of your field                                                                    |
| Success On: Success condition | Equal/Non equal/etc.       | Select the condition to be met for a successful result                                    |
| Success On: Value             |                            | Value to compare the field to                                                             |

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:27 +0200

</div>

</div>
