// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {

    function filterEven(uint[] calldata numbers)
        external
        pure
        returns (uint[] memory)
    {
        uint count = 0;

        // First pass: count even numbers
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                count++;
            }
        }

        // Create fixed-size memory array
        uint[] memory result = new uint[](count);

        // Second pass: fill the array
        uint index = 0;
        for (uint i = 0; i < numbers.length; i++) {
            if (numbers[i] % 2 == 0) {
                result[index] = numbers[i];
                index++;
            }
        }

        return result;
    }
}