<div id="header">

</div>

<div id="content">

<div class="sect2">

### Rounding Types

<div class="paragraph">

Rounding on Number and BigNumber data type fields is based on [Java Rounding Mode](https://docs.oracle.com/javase/8/docs/api/java/math/RoundingMode.html)

</div>

<div class="paragraph">

By default, rounding mode `Half Even` is used this Rounding mode will round towards the "nearest neighbor" unless both neighbors are equidistant, in which case, round towards the even neighbor.

</div>

<div class="paragraph">

Example: Rounding from 1 to 0 digits  
5.5 → 6  
2.5 → 2  
\-2.5 → -2  
\-5.5 → -6

</div>

<div class="sect3">

#### Unnecessary

<div class="paragraph">

Rounding mode to assert that the requested operation has an exact result, hence no rounding is necessary. This mode will throw an error when you try to reduce the precision of a number

</div>

</div>

<div class="sect3">

#### Ceiling

<div class="paragraph">

Rounding mode to round towards positive infinity.

</div>

</div>

<div class="sect3">

#### Down

<div class="paragraph">

Rounding mode to round towards zero.

</div>

</div>

<div class="sect3">

#### Floor

<div class="paragraph">

Rounding mode to round towards negative infinity.

</div>

</div>

<div class="sect3">

#### Half Down

<div class="paragraph">

Rounding mode to round towards "nearest neighbor" unless both neighbors are equidistant, in which case round down.

</div>

</div>

<div class="sect3">

#### Half Even

<div class="paragraph">

Rounding mode to round towards the "nearest neighbor" unless both neighbors are equidistant, in which case, round towards the even neighbor.

</div>

</div>

<div class="sect3">

#### Half Up

<div class="paragraph">

Rounding mode to round towards "nearest neighbor" unless both neighbors are equidistant, in which case round up.

</div>

</div>

<div class="sect3">

#### Up

<div class="paragraph">

Rounding mode to round away from zero.

</div>

</div>

<div class="sect3">

#### Examples

| Input Number | Up  | Down | Ceiling | Floor | Half Up | Half Down | Half Even | Unnecessary               |
| ------------ | --- | ---- | ------- | ----- | ------- | --------- | --------- | ------------------------- |
| 5.5          | 6   | 5    | 6       | 5     | 6       | 5         | 6         | throw ArithmeticException |
| 2.5          | 3   | 2    | 3       | 2     | 3       | 2         | 2         | throw ArithmeticException |
| 1.6          | 2   | 1    | 2       | 1     | 2       | 2         | 2         | throw ArithmeticException |
| 1.1          | 2   | 1    | 2       | 1     | 1       | 1         | 1         | throw ArithmeticException |
| 1.0          | 1   | 1    | 1       | 1     | 1       | 1         | 1         | 1                         |
| \-1.0        | \-1 | \-1  | \-1     | \-1   | \-1     | \-1       | \-1       | \-1                       |
| \-1.1        | \-2 | \-1  | \-1     | \-2   | \-1     | \-1       | \-1       | throw ArithmeticException |
| \-1.6        | \-2 | \-1  | \-1     | \-2   | \-2     | \-2       | \-2       | throw ArithmeticException |
| \-2.5        | \-3 | \-2  | \-3     | \-3   | \-3     | \-2       | \-2       | throw ArithmeticException |
| \-5.5        | \-6 | \-5  | \-6     | \-6   | \-6     | \-5       | \-6       | throw ArithmeticException |

</div>

</div>

</div>

<div id="footer">

<div id="footer-text">

Last updated 2025-09-04 18:23:47 +0200

</div>

</div>
