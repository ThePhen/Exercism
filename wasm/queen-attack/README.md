# Queen Attack

Welcome to Queen Attack on Exercism's WebAssembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Given the position of two queens on a chess board, indicate whether or not they are positioned so that they can attack each other.

In the game of chess, a queen can attack pieces which are on the same row, column, or diagonal.

A chessboard can be represented by an 8 by 8 array.

So if you are told the white queen is at `c5` (zero-indexed at column 2, row 3) and the black queen at `f2` (zero-indexed at column 5, row 6), then you know that the set-up is like so:

![A chess board with two queens. Arrows emanating from the queen at c5 indicate possible directions of capture along file, rank and diagonal.](https://assets.exercism.org/images/exercises/queen-attack/queen-capture.svg)

You are also able to answer whether the queens can attack each other.
In this case, that answer would be yes, they can, because both pieces share a diagonal.

## Credit

The chessboard image was made by [habere-et-dispertire][habere-et-dispertire] using LaTeX and the [chessboard package][chessboard-package] by Ulrike Fischer.

[habere-et-dispertire]: https://exercism.org/profiles/habere-et-dispertire
[chessboard-package]: https://github.com/u-fischer/chessboard

A queen must be placed on a valid position on the board.
Two queens cannot share the same position.

The queens shown below are at their [default starting positions](https://en.wikipedia.org/wiki/Rules_of_chess#Initial_setup). That's the 1st rank (row 7) for the white queen and the 8th rank (row 0) for the black queen. Both queens start in the d file (column 3).

```text
  a b c d e f g h
8 _ _ _ B _ _ _ _ 8
7 _ _ _ _ _ _ _ _ 7
6 _ _ _ _ _ _ _ _ 6
5 _ _ _ _ _ _ _ _ 5
4 _ _ _ _ _ _ _ _ 4
3 _ _ _ _ _ _ _ _ 3
2 _ _ _ _ _ _ _ _ 2
1 _ _ _ W _ _ _ _ 1
  a b c d e f g h
```

The function will receive only a single unsigned 32bit number as argument. Both rows and columns are encoded into it:

- The chess notation files a..h become zero-indexed columns 0..7
- The chess notation ranks 8..1 become zero-indexed rows 0..7

```
[            32bit             ]
[ 8bit ][ 8bit ][ 8bit ][ 8bit ]
   ^       ^       ^       ^
   |       |       |       +---- black row
   |       |       +------------ black column
   |       +-------------------- white row
   +---------------------------- white column
```

So the aforementioned positions white D1 and black D8 would result in the numbers white column 3, white row 7, black column 3, black row 0; as binary number, this would be expressed as

`00000011 00000111 00000011 00000000`

So the `$positions` argument would be 50791168.

You can use integer division or bit shifting and division remainder or bitwise and to get at every one value.

## Source

### Created by

- @atk

### Based on

J Dalbey's Programming Practice problems - https://users.csc.calpoly.edu/~jdalbey/103/Projects/ProgrammingPractice.html