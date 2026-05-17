# Eman - Module 4: Applied Solidity

## Summary
This module applies Solidity fundamentals to real-world contract patterns, including inheritance, access control, and voting logic.

## Key topics
- Contract inheritance and shared logic
- Passing constructor arguments in inherited contracts
- `virtual` and `override` functions
- Calling parent logic with `super`
- Basic `Ownable` access control
- Proposal creation, voting, and execution flows
- Emitting events to track contract activity

## Content organization
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

## How to learn from this module
1. Review the inheritance exercises and how derived contracts reuse logic.
2. Complete the voting contract challenges and verify access rules.
3. Observe how events document on-chain state changes.

## Tips
- Use inheritance to avoid duplicating code across contracts.
- `Ownable` is a simple way to guard admin functions.
- Validate proposals and votes before executing any state changes.
