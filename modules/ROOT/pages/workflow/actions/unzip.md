<div id="header">

# Unzip file

</div>

<div id="content">

<div class="sect1">

## Description

<div class="sectionbody">

<div class="paragraph">

The `Unzip file` action unzips one or more files to a specified target location.

</div>

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

Option

</div>

</div>

</div>

</div>

Description

Action name

The name of the workflow action.

Source files

Get args from previous

check this option if you want to use the list of result files (from a previous workflow action) as the list of files to unzip.

Zip file name

the name of the zip file or a folder if you want to use a wildcard.

Source wildcard

<div class="content">

<div class="paragraph">

If the previous option is a folder, you can enter a regular expression. wildcard here.

</div>

<div class="paragraph">

For example: to match `/folder/test.zip` a regex of `te.\.zip` will come up empty.

</div>

<div class="paragraph">

Use `.*te.\.zip` instead to account for the folders ahead of it.

</div>

<div class="paragraph">

For Windows file paths, the direction of the slashes will be reversed in the match, so use `\/` instead of `\\`.

</div>

</div>

Unzipped files

Use zipfile name as root directory

check this if you want to create a separate directory for each zip filename (same name as file)

Target directory

The target directory to unzip in

Create folder

Check this if you want to create the target folder

Include wildcard

Use this regular expression to select the files in the zip archives to extract

Exclude wildcard

Use this regular expression to select the files in the zip archives to extract

Include date in filename

Include the current date in the unzipped filenames (format yyyyMMdd)

Include time in filename

Include the time (format HHmmss)

Specify the date time format yourself

Allows you to specify the date time format yourself (default is: yyyyMMdd'\_'HHmmss)

If files exists

Select the action to take if the target (unzipped) file exists: skip, overwrite, etc.

After extraction

<div class="content">

<div class="paragraph">

select the action to take after zip file extraction:

</div>

<div class="ulist">

  - Do nothing,

  - Delete files

  - Move files

</div>

</div>

Move files to

If the previous option is "Move files", you can select the target directory here.

<div class="sect2">

### Advanced tab

Option

</div>

Description

Result file name

Add extracted file to result

Add the extracted file names to the list of result files of this workflow action for use in the next workflow actions.

Success condition

Success on

<div class="content">

<div class="paragraph">

Allows you to specify the success factor of this workflow action:

</div>

<div class="ulist">

  - All works fine (default)

  - At least we successfully unzipped x files

  - Nr errors less than

</div>

</div>

Limit files

The number of files unzipped or number of errors, depending on the option chosen for `Success on` above.

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:24:31 +0200

</div>

</div>
