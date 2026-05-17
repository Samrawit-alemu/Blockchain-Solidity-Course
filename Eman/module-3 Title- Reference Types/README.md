# Eman - Module 3: Reference Types

## Summary
This module focuses on Solidity reference types such as arrays, mappings, and structs. You will learn how to store, access, and manage structured data on-chain.

## Key topics
- Fixed and dynamic arrays
- Storage vs memory semantics
- Filtering array contents and returning results
- Mapping values for efficient lookups
- Struct usage for grouped data
- Nested mappings and complex state models
- Voting-style contract state management

## Content organization
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

## How to learn from this module
1. Compare how arrays behave in `storage` vs `memory`.
2. Build mapping-based solutions for fast lookup.
3. Use structs to make state easier to manage.

## Tips
- Mappings are great for key-value state, but not iterable.
- Structs help organize related fields and reduce complexity.
- Choose the right reference type for your specific contract logic.
