# Module 3 - Reference Types

## Overview
This module teaches Solidity reference types, including arrays, mappings, and structs. You will learn how storage and memory work, how to build collections, and how to model more complex on-chain data.

## What i learn 
- Working with fixed-size and dynamic arrays
- Reading and writing arrays in storage vs memory
- Filtering and returning array values
- Using mappings for fast lookup
- Mapping structs and nested mappings
- Modeling complex state with structs
- Voting patterns using arrays and structs

## Folder structure
- `Arrays/`
  - `1: Fixed Sum/`
  - `2: Dynamic Sum/`
  - `3: Filter to Storage/`
  - `4: Filter to Memory/`
  - `5: Stack Club 1/`
  - `5: Stack Club 2/`
- `Mappings/`
  - `1: Add Member/`
  - `2: Is Member/`
  - `3: Remove Member/`
  - `4: Map Structs/`
  - `5: Map Structs 2/`
  - `6:Nestes Maps/`
- `Structs/`
  - `1: Vote Storage/`
  - `2: Vote Memory/`
  - `3: Vote Array/`
  - `4: Choice Lookup/`
  - `5: Single Vote/`
  - `6: Change Vote/`

## How to use
1. Open each lesson and identify how the contract stores data.
2. Implement the required functions and verify them with tests.
3. Compare storage and memory behavior in array and struct examples.

## Notes
- Mappings are not iterable, but they are efficient for lookups.
- Structs let you model related fields together in a single type.
- Always choose the appropriate reference type for your application needs.
