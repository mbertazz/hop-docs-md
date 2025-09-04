<div id="header">

# <span class="image image-doc-icon">![Fuzzy match transform Icon](../assets/images/transforms/icons/fuzzymatch.svg)</span> Fuzzy match

</div>

<div id="content">

<div id="preamble">

<div class="sectionbody">

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
<p>The Fuzzy Match transform finds strings that potentially match using duplicate-detecting algorithms that calculate the similarity of two streams of data.</p>
</div>
<div class="paragraph">
<p>This transform returns matching values as a separated list as specified by user-defined minimal or maximal values.</p>
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

</div>

</div>

<div class="sect1">

## Options

<div class="sectionbody">

<div class="sect2">

### General tab

| Option            | Description                                                                                                                                                                                                                   |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Transform name    | Name of this transform as it appears in the pipeline workspace                                                                                                                                                                |
| Lookup transform  | Identifies the transform that contains the fields to match                                                                                                                                                                    |
| Lookup field      | Identifies the field to match                                                                                                                                                                                                 |
| Main stream field | Identifies the primary stream to match the Lookup field with                                                                                                                                                                  |
| Algorithm         | Identifies which string-matching algorithm to use---options include Levenshtein, Damerau-Levenshtein, Needleman Wunsch, Jaro, Jaro Winkler, Pair letters similarity, Metaphone, Double Metaphone, SoundEx, or Refined SoundEx |
| Case sensitive    | Identifies if streams can or cannot differ based on the use of uppercase and lowercase letters---only for use with the Levenshtein algorithms                                                                                 |
| Get closer value  | When checked, returns a single result with the highest similarity score---when unchecked, returns all matches that satisfy the minimal and maximal value setting as a separated list, separated by the values separator       |
| Minimum value     | Identifies the lowest possible similarity score                                                                                                                                                                               |
| Maximal value     | Identifies the highest possible similarity score                                                                                                                                                                              |
| Values separator  | Identifies the string that separate the matches. Only available for specific algorithms and when the Get closer value option is unchecked.                                                                                    |

<div class="paragraph">

**Algorithm Definitions**

</div>

<div class="paragraph">

Within the Algorithm field, there are several options available to compare and match strings.

</div>

<div class="ulist">

  - [Levenshtein](https://en.wikipedia.org/wiki/Levenshtein_distance) and [Damerau-Levenshtein](https://en.wikipedia.org/wiki/Damerau%E2%80%93Levenshtein_distance): calculate the distance between two strings by looking at how many edit transforms are needed to get from one string to another. The former only looks at inserts, deletes, and replacements. The latter adds transposition. The score indicates the minimum number of changes needed. For instance, the difference between John and Jan would be two; to turn the name John into Jan you need one transform to replace the O with an A, and another transform to delete the H.

  - [Needleman Wunsch](https://en.wikipedia.org/wiki/Needleman%E2%80%93Wunsch_algorithm): calculates the similarity of two sequences and is mainly used in bioinformatics. The algorithm calculates a gap penalty. The aforementioned example would have a score of negative two.

  - [Jaro and Jaro Winkler](https://en.wikipedia.org/wiki/Jaro%E2%80%93Winkler_distance): calculate a similarity index between two strings. The result is a fraction between zero, indicating no similarity, and one, indicating an identical match.

  - Pair letters similarity: dissects the two strings in pairs and calculates the similarity of the two strings by dividing the number of common pairs by the sum of the pairs from both strings.

  - Metaphone, Double Metaphone, SoundEx, and Refined SoundEx: are <https://en.wikipedia.org/wiki/Phonetic_algorithm#:~:text=A%20phonetic%20algorithm%20is%20an,indexing%20words%20in%20other%20languages>.\[phonetic algorithms\], which try to match strings based on how they would sound. Each is based on the English language and would not be useful to compare other languages.
    
    <div class="ulist">
    
      - The [Metaphone algorithm](https://en.wikipedia.org/wiki/Metaphone) returns an encoded value based on the English pronunciation of a given word. The encoded value of the names John and Jan would return the value JN for both names.
    
      - The [Double Metaphone](https://en.wikipedia.org/wiki/Metaphone#Double_Metaphone) algorithm has fundamental design improvements over its predecessor and uses a more complex ruleset for coding. It can return a primary and a secondary encoded value for a string. The names John and Jan each return metaphone key values of JN and AN.
    
      - The [Soundex algorithm](https://en.wikipedia.org/wiki/Soundex) returns a single encoded value for a name that consists of a letter followed by three numerical digits. The letter is the first letter of the name, and the digits encode the remaining consonants.
    
      - The Refined SoundEx algorithm is an improvement over its predecessor. Encoded values for this algorithm are six digits long, the initial character is encoded, and multiple possible encodings can be returned for a single name. Using this algorithm, the name John returns the values 160000 and 460000, as does the name Jan.
    
    </div>

</div>

</div>

<div class="sect2">

### Fields tab

<div class="paragraph">

The Fields tab enables you to define how to return the results of a comparison.

</div>

| Option      | Description                                                       |
| ----------- | ----------------------------------------------------------------- |
| Match field | Defines the name of the column that contains the comparison value |
| Value field | Defines the similarity score for which to return a value          |

<div class="paragraph">

You can also specify the list of additional fields to retrieve from the lookup stream.

</div>

</div>

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:22:17 +0200

</div>

</div>
