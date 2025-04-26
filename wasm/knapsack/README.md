# Knapsack

Welcome to Knapsack on Exercism's WebAssembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

Lhakpa is a [Sherpa][sherpa] mountain guide and porter.
After months of careful planning, the expedition Lhakpa works for is about to leave.
She will be paid the value she carried to the base camp.

In front of her are many items, each with a value and weight.
Lhakpa would gladly take all of the items, but her knapsack can only hold so much weight.

[sherpa]: https://en.wikipedia.org/wiki/Sherpa_people#Mountaineering

## Instructions

Your task is to determine which items to take so that the total value of her selection is maximized, taking into account the knapsack's carrying capacity.

Items will be represented as a list of items.
Each item will have a weight and value.
All values given will be strictly positive.
Lhakpa can take only one of each item.

For example:

```text
Items: [
  { "weight": 5, "value": 10 },
  { "weight": 4, "value": 40 },
  { "weight": 6, "value": 30 },
  { "weight": 4, "value": 50 }
]

Knapsack Maximum Weight: 10
```

For the above, the first item has weight 5 and value 10, the second item has weight 4 and value 40, and so on.
In this example, Lhakpa should take the second and fourth item to maximize her value, which, in this case, is 90.
She cannot get more than 90 as her knapsack has a weight limit of 10.

## WebAssembly-specific Notes

The items are passed through linear memory, with the first item at offset 0.
Each item is represented as a pair of 32-bit integers.
The first number in the pair is the weight and the second is the value.

For example, consider a list of two items, where the first has `weight=1, value=2` and the second `weight=5, value=8`.
The list would thus look like this in memory:

```
| 00 | 01 | 02 | 03 | 04 | 05 | 06 | 07 | 08 | 09 | 10 | 11 | 12 | 13 | 14 | 15 |
| - item 1 weight - | -- item 1 value - | - item 2 weight - | -- item 2 value - |
|0x01,0x00,0x00,0x00|0x02,0x00,0x00,0x00|0x05,0x00,0x00,0x00|0x08,0x00,0x00,0x00|
```

If you so choose, you may overwrite the addresses of linear memory used for the input.

## Source

### Created by

- @kahgoh

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Knapsack_problem