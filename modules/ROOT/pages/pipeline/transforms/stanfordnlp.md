<div id="header">

# <span class="image image-doc-icon">![Stanford NLP transform Icon](../assets/images/transforms/icons/stanfordnlp.svg)</span> Stanford NLP Transform

</div>

<div id="content">

<table>
<colgroup>
<col style="width: 75%" />
<col style="width: 25%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="content">
<div class="sect1">
<h2 id="_description">Description</h2>
<div class="sectionbody">
<div class="paragraph">
<p>Stanford CoreNLP provides a set of natural language analysis tools which can take raw English language text input and give the base forms of words, their parts of speech, whether they are names of companies, people, etc., normalize dates, times, and numeric quantities, mark up the structure of sentences in terms of phrases and word dependencies, and indicate which noun phrases refer to the same entities. It provides the foundational building blocks for higher level text understanding applications.</p>
</div>
</div>
</div>
</div></td>
<td><div class="content">
<div class="sect1">
<h2 id="_supported_engines">Supported Engines</h2>
<div class="sectionbody">
<table>
<tbody>
<tr class="odd">
<td><p>Hop Engine</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/check_mark.svg" alt="Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Spark</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="odd">
<td><p>Flink</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
<tr class="even">
<td><p>Dataflow</p></td>
<td><div class="content">
<div class="paragraph">
<p><span class="image"><img src="../assets/images/question_mark.svg" alt="Maybe Supported" width="24" /></span></p>
</div>
</div></td>
</tr>
</tbody>
</table>
</div>
</div>
</div></td>
</tr>
</tbody>
</table>

<div class="admonitionblock note">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><div class="title">
Note
</div></td>
<td>The dependencies for this transform are not included in the application to make this work you need to include following files in the /plugins/transforms/stanfordnlp/lib folder<br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7.jar">stanford-corenlp 4.5.7</a><br />
Model for your language<br />
<br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-arabic.jar">Arabic Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-chinese.jar">Chinese Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-english.jar">English Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-french.jar">French Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-german.jar">German Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-hungarian.jar">Hungarian Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-italian.jar">Italian Model</a><br />
- <a href="https://repo1.maven.org/maven2/edu/stanford/nlp/stanford-corenlp/4.5.7/stanford-corenlp-4.5.7-models-spanish.jar">Spanish Model</a></td>
</tr>
</tbody>
</table>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:12 +0200

</div>

</div>
