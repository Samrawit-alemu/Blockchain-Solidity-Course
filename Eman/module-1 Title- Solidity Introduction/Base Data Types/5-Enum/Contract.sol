// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
   enum Foods { Pizza, Shiro, Gomen, Misir }
    
    Foods public food1 = Foods.Pizza;
    Foods public food2 = Foods.Shiro;
    Foods public food3 = Foods.Gomen;
    Foods public food4 = Foods.Misir;
}