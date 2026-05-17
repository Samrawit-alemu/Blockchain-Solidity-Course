# Module 4 - Applied Solidity

## Overview
This module applies Solidity concepts to real contract design patterns. It includes inheritance, access control, and a voting system built with contract composition.

## What i learn
- Contract inheritance and code reuse
- Constructor arguments in derived contracts
- Virtual and override functions
- Using `super` to call parent behavior
- Implementing access control with `Ownable`
- Building a voting contract with proposals, votes, and execution
- Emitting and handling events for on-chain actions

## Folder structure
- `Inheritance/`
  - `1: Inherit/`
  - `2: Constructor Args/`
  - `3: Virtual Override/`
  - `4: Super/`
  - `5: Ownable/`
  - `6: Multiple Inheritance/`
- `Voting /`
  - `1: Proposal/`
  - `2: Cast a Vote/`
  - `3: Multiple Votes/`
  - `4: Voting Events/`
  - `5: Members/`
  - `6: Execute/`

## How to use
1. Review inheritance examples and understand parent-child relationships.
2. Complete voting contract exercises and test access restrictions.
3. Use events to track proposals and vote state changes.

## Notes
- Inheritance simplifies shared logic across contracts.
- `Ownable` is a common pattern for owner-only administration.
- A strong voting contract includes proposal validation and execution guards.
