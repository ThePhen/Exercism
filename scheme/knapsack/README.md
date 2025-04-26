# Knapsack

Welcome to Knapsack on Exercism's Scheme Track.
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

## Track Specific Notes

In the scheme version the aruguments are the `capacity` of the knapsack and a list of the `weights` and a list of the `values`.
It won't be necessary to validate the input -- the test inputs have valid values and same length lists.

## Source

### Created by

- @jitwit

### Contributed to by

- @guygastineau

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Knapsack_problem