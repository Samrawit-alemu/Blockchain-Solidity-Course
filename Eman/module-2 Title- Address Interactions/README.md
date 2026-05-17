# Eman - Module 2: Address Interactions

## Summary
This module teaches how Solidity contracts interact with addresses, send and receive Ether, and call other contracts. It also covers common security checks and how to manage revert conditions.

## Key topics
- Making low-level contract calls with `call`
- Building and using function signatures
- Fallback behavior and direct Ether reception
- Escrow contract flows and approval patterns
- Constructor-based ownership
- Safely reverting transactions
- Sending Ether and using `receive` / `fallback`
- `selfdestruct` in contract cleanup

## Content organization
- `Calling Contracts/`
  - `1: Call Function/`
  - `2: Signature/`
  - `3: With Signature/`
  - `4: Arbitrary Alert/`
  - `5: Fallback/`
- `Escrow/`
  - `1: Setup/`
  - `2: Constructor/`
  - `3:Funding/`
  - `4: Approval/`
  - `5: Security/`
  - `6:Events/`
- `Practice Revert Transaction/`
  - `1: Constructor Revert/`
  - `2: Only Owner/`
  - `3: Owner Modifier/`
- `Sending-Ether/`
  - `1: Storing Owner/`
  - `2: Receive Ether/`
  - `3: Tip Owner/`
  - `4: Charity/`
  - `5: Self Destruct/`

## How to learn from this module
1. Explore how contracts send Ether safely.
2. Complete the exercises and check fallbacks, reverts, and approvals.
3. Test each scenario to confirm expected behavior.

## Tips
- Always verify external call results before assuming success.
- Use owner checks and modifiers to protect sensitive actions.
- `fallback` and `receive` are the main entry points for raw Ether transfers.
