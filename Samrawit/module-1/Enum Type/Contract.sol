// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    enum Foods { Apple, Pizza, Bagel, Banana }
    Foods public food1 = Foods.Apple;  // Value: 0
    Foods public food2 = Foods.Pizza;  // Value: 1
    Foods public food3 = Foods.Bagel;  // Value: 2
    Foods public food4 = Foods.Banana; // Value: 3
}