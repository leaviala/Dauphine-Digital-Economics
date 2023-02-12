//SPDX-License-Identifier: MIT

pragma solidity 0.8.17;
//Challenge Set 1 - Binary to Decimal Converter
//Exercise 1
contract BinaryToDecimalConverter {
    function stringInput(string memory userInput) public pure returns(uint decimal){
        bytes memory binary = bytes(userInput);
        uint len = binary.length;
        uint decimal=0;
        for (uint i=0; i < len; i++){
            if(uint8(binary[len-i-1])==49){
                decimal+=2**i;
            }
        }
    return(decimal);
    }
}

//Exercise 2

contract shiftedMask{
    function bits(uint8 _input) pure public returns(uint[] memory output) {
        uint8 mask = 1;
        for (uint8 i=0; i<8; i++){
            output[i]=_input & mask;
            mask=mask<<1;
        }
    return(output);
    }
}
