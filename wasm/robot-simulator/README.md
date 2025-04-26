# Robot Simulator

Welcome to Robot Simulator on Exercism's WebAssembly Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Write a robot simulator.

A robot factory's test facility needs a program to verify robot movements.

The robots have three possible movements:

- turn right
- turn left
- advance

Robots are placed on a hypothetical infinite grid, facing a particular direction (north, east, south, or west) at a set of {x,y} coordinates,
e.g., {3,8}, with coordinates increasing to the north and east.

The robot then receives a number of instructions, at which point the testing facility verifies the robot's new position, and in which direction it is pointing.

- The letter-string "RAALAL" means:
  - Turn right
  - Advance twice
  - Turn left
  - Advance once
  - Turn left yet again
- Say a robot starts at {7, 3} facing north.
  Then running this stream of instructions should leave it at {9, 4} facing west.

The direction the robot is facing will be expressed as one of the following numbers:

- North = 0
- East = 1
- South = 2
- West = 3

When the input is invalid, return a direction of -1 (the other values will be ignored).

## Reserved Memory

The buffer for the input string uses bytes 64-319 of linear memory.

The input string can be modified if desired.

## Source

### Created by

- @atk

### Based on

Inspired by an interview question at a famous company.