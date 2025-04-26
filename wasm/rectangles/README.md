# Rectangles

Welcome to Rectangles on Exercism's WebAssembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Count the rectangles in an ASCII diagram like the one below.

```text
   +--+
  ++  |
+-++--+
|  |  |
+--+--+
```

The above diagram contains these 6 rectangles:

```text


+-----+
|     |
+-----+
```

```text
   +--+
   |  |
   |  |
   |  |
   +--+
```

```text
   +--+
   |  |
   +--+


```

```text


   +--+
   |  |
   +--+
```

```text


+--+
|  |
+--+
```

```text

  ++
  ++


```

You may assume that the input is always a proper rectangle (i.e. the length of every line equals the length of the first line).

## Reserved Addresses

The buffer for the input string uses bytes 64-319 of linear memory.

You may modify this buffer in place if you wish to avoid additional memory allocations.

## Source

### Created by

- @atk