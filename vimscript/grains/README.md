# Grains

Welcome to Grains on Exercism's Vim script Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

There once was a wise servant who saved the life of a prince.
The king promised to pay whatever the servant could dream up.
Knowing that the king loved chess, the servant told the king he would like to have grains of wheat.
One grain on the first square of a chessboard, with the number of grains doubling on each successive square.

## Instructions

Calculate the number of grains of wheat on a chessboard.

A chessboard has 64 squares.
Square 1 has one grain, square 2 has two grains, square 3 has four grains, and so on, doubling each time.

Write code that calculates:

- the number of grains on a given square
- the total number of grains on the chessboard

## Maximum integer value

According to [the Vim docs][number]:

> Assuming 64 bit numbers are used (see v:numbersize) an unsigned number is truncated to 0x7fffffffffffffff or 9223372036854775807.

In other words, Vim script cannot express any number `2^63` or greater as an integer.

Some of the tests for this exercise require 64 bit integers which is beyond the integer size limitation of Vim script.
Because of this limitation, the results of the calculations are tested against a string which expresses the integer value, rather than expressing the answer as Integer.
Can you solve this by avoiding numbers that are larger than the language will allow directly?

[number]: https://vimhelp.org/eval.txt.html#expr-number

## Source

### Created by

- @BNAndras
- @KOTP
- @glennj

### Based on

The CodeRanch Cattle Drive, Assignment 6 - https://web.archive.org/web/20240908084142/https://coderanch.com/wiki/718824/Grains