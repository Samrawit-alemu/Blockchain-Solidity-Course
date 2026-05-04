Resources
Presentations: https://github.com/alchemyplatform/learn-solidity-presentations
Marp Tool: https://marp.app/
Foundry: https://book.getfoundry.sh/
Smart Contracts Overview
Let's take a look at how we communicate with Smart Contracts on a high-level!
Resources
An awesome interactive resource for understanding EVM opcodes: https://www.evm.codes/
 It should be noted in this video Dan said that the amount of gas is static to the opcodes used. What he meant is that the amount of gas is deterministically calculated based on the opcodes used. For simple opcodes, like 
ADD
 or 
MUL
 the gas amount is a fixed amount. For more complicated opcodes, like 
SSTORE
, there are several factors that go into the gas calculation and there are even gas refunds for clearing of a storage slot (see evm codes (https://www.evm.codes/) for more details)
Value Types
Let's learn about uint, int, bool and enum!
Basic Solidity Data Types
In this tutorial we'll learn basic Solidity data types!
We'll use state variables to store them in the contract's persistent data storage:
contract Contract {
    bool public value = true;
    int public a = 10;
    string public msg = "Hello World";
}
We're going to have to look at each of these data types in closer detail. 
Since Smart Contracts deal primarily with digital value, it's important to understand everything that is happening on a low level. Any mistake could have dire consequences! It's also important to do things efficiently since all storage and computation on the blockchain will cost money.
With this in mind, let's dive into Basic Solidity Data Types!

Storage Variables
Let's take a look at how smart contracts store persistent state!

Functions
Let's take a look at how to build solidity functions!

