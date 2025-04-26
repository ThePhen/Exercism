# Series

Welcome to Series on Exercism's WebAssembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Given a string of digits, output all the contiguous substrings of length `n` in that string in the order that they appear.

For example, the string "49142" has the following 3-digit series:

- "491"
- "914"
- "142"

And the following 4-digit series:

- "4914"
- "9142"

And if you ask for a 6-digit series from a 5-digit string, you deserve whatever you get.

Note that these series are only required to occupy _adjacent positions_ in the input;
the digits need not be _numerically consecutive_.

## Reserved Memory

The buffer for the input string uses bytes 64-191 of linear memory.


## Output format

The series of numbers are expected as one continuous array of u8 numbers; it will be split by length in deserialization:

```js
slice("123456", 3) => UInt8Array[1, 2, 3,   2, 3, 4,   3, 4, 5,   4, 5, 6]
// will be split into          [[1, 2, 3], [2, 3, 4], [3, 4, 5], [4, 5, 6]]
```

## Source

### Created by

- @atk

### Based on

A subset of the Problem 8 at Project Euler - https://projecteuler.net/problem=8