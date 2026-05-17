# Eman - Module 1: Solidity Introduction

## Summary
In this module you will start with the basics of Solidity and smart contract structure. The lessons focus on core data types, how functions work, and the difference between read-only and pure operations.

## Key topics
- Solidity contract layout and syntax
- Boolean logic and comparisons
- `uint` and `int` data types
- String literals and `enum` usage
- Declaring and calling functions with parameters
- Understanding `view` vs `pure`
- Using console logging for test debugging

## Content organization
- `Base Data Types/`
  - `1: Booleans/`
  - `2: Unsigned Integers/`
  - `3: Signed Integers/`
  - `4: String Literals/`
  - `5: Enum/`
- `Practice_Solidity_Functions/`
  - `1: Arguments/`
  - `2: Increment/`
  - `3: View Addition/`
  - `4: Console Log/`
  - `5: Pure Double/`
  - `6: Double Overload/`

## How to learn from this module
1. Read each contract example and identify the missing logic.
2. Complete the contract functions and run the tests.
3. Compare the behavior of state-reading vs pure helper functions.

## Tips
- `view` functions can read contract state but do not modify it.
- `pure` functions are isolated from state and are ideal for calculations.
- Use `console.log` only during local test execution.
