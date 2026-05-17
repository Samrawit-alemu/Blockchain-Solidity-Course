# Module 2 - Address Interactions

## Overview
This module covers how contracts interact with addresses, other contracts, and ETH transfers. You will learn contract-to-contract calls, fallback behavior, escrow logic, transaction reverts, and secure Ether handling.

## Whati learn
- How to call external contracts using `call`
- How to build and use function signatures
- Fallback function behavior and receiving data
- How to implement a simple escrow contract
- Constructor and owner-based access control patterns
- How to revert transactions safely
- Transferring Ether and using `receive`/`fallback`
- `selfdestruct` and Ether cleanup patterns

## Folder structure
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

## How to use
1. Study the contract examples and complete the tasks.
2. Deploy locally and verify calls and transfers.
3. Use tests to confirm behavior for reverts and fallback execution.

## Notes
- Always validate inputs before transferring ETH.
- Use owner checks and modifiers for restricted actions.
- `call` returns a success flag and should be handled carefully.
