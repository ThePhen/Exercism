# Rational Numbers

Welcome to Rational Numbers on Exercism's WebAssembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

A rational number is defined as the quotient of two integers `a` and `b`, called the numerator and denominator, respectively, where `b != 0`.

~~~~exercism/note
Note that mathematically, the denominator can't be zero.
However in many implementations of rational numbers, you will find that the denominator is allowed to be zero with behaviour similar to positive or negative infinity in floating point numbers.
In those cases, the denominator and numerator generally still can't both be zero at once.
~~~~

The absolute value `|r|` of the rational number `r = a/b` is equal to `|a|/|b|`.

The sum of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is `r₁ + r₂ = a₁/b₁ + a₂/b₂ = (a₁ * b₂ + a₂ * b₁) / (b₁ * b₂)`.

The difference of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is `r₁ - r₂ = a₁/b₁ - a₂/b₂ = (a₁ * b₂ - a₂ * b₁) / (b₁ * b₂)`.

The product (multiplication) of two rational numbers `r₁ = a₁/b₁` and `r₂ = a₂/b₂` is `r₁ * r₂ = (a₁ * a₂) / (b₁ * b₂)`.

Dividing a rational number `r₁ = a₁/b₁` by another `r₂ = a₂/b₂` is `r₁ / r₂ = (a₁ * b₂) / (a₂ * b₁)` if `a₂` is not zero.

Exponentiation of a rational number `r = a/b` to a non-negative integer power `n` is `r^n = (a^n)/(b^n)`.

Exponentiation of a rational number `r = a/b` to a negative integer power `n` is `r^n = (b^m)/(a^m)`, where `m = |n|`.

Exponentiation of a rational number `r = a/b` to a real (floating-point) number `x` is the quotient `(a^x)/(b^x)`, which is a real number.

Exponentiation of a real number `x` to a rational number `r = a/b` is `x^(a/b) = root(x^a, b)`, where `root(p, q)` is the `q`th root of `p`.

Implement the following operations:

- addition, subtraction, multiplication and division of two rational numbers,
- absolute value, exponentiation of a given rational number to an integer power, exponentiation of a given rational number to a real (floating-point) power, exponentiation of a real number to a rational number.

Your implementation of rational numbers should always be reduced to lowest terms.
For example, `4/4` should reduce to `1/1`, `30/60` should reduce to `1/2`, `12/8` should reduce to `3/2`, etc.
To reduce a rational number `r = a/b`, divide `a` and `b` by the greatest common divisor (gcd) of `a` and `b`.
So, for example, `gcd(12, 8) = 4`, so `r = 12/8` can be reduced to `(12/4)/(8/4) = 3/2`.
The reduced form of a rational number should be in "standard form" (the denominator should always be a positive integer).
If a denominator with a negative integer is present, multiply both numerator and denominator by `-1` to ensure standard form is reached.
For example, `3/-4` should be reduced to `-3/4`

Assume that the programming language you are using does not have an implementation of rational numbers.

The exponentiation of rational numbers with a real number requires calculating number to the power of a non-integer, a functionality that is not natively available in WebAssembly.

However, you can also express `x ^ y` as `x ^ y = exp(y * ln(x))`.

And fortunately, one can use different series to calculate the exponential and the natural logarithm.

## Exponential function

The best solution for the exponential is a [Taylor Series](https://en.wikipedia.org/wiki/Taylor_series):

```
exp(x) ≃ 1 + x + x ^ 2 / 2! + x ^ 3 / 3! + x ^ 4 / 4! + ... + x ^ n / n!
```

## Logarithm function (for positive x)

There are multiple ways to efficiently calculate a natural logarithm. One of them is a series based on an [Inverse Hyperbolic Tangent](https://en.wikipedia.org/wiki/Logarithm#Inverse_hyperbolic_tangent):

```
ln(x) / 2 ≃ y + y ^ 3 / 3 + y ^ 5 / 5 + ... + y ^ n / n where y = (x - 1) / (x + 1)
```

There is also another Taylor Series to calculate the natural logarithm:

```
ln(x) = (x - 1) - (x - 1) ^ 2 / 2 + (x  - 1) ^ 3 / 3 - (x - 1) ^ 4 / 4 ... + (x - 1) ^ n / n
```

It is only accurate for `x` between 0 and 2. However we can also use `ln(x) = - ln(1 / x)`

## Integer exponentiation

For integer exponentiation, better use multiplication and either a loop or recursion, both for performance and precision reasons. For extra performance, one can use [Horner's method](https://en.wikipedia.org/wiki/Horner%27s_method) to reduce the number of multiplications.

## Source

### Created by

- @atk

### Based on

Wikipedia - https://en.wikipedia.org/wiki/Rational_number