// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    // Public variables for token details
    string public name = "Meta";
    string public symbol = "Mta";
    uint256 public totalSupply;

    // Mapping to store address balances
    mapping(address => uint256) public balances;

    // Function to mint new tokens
    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    // Function to burn tokens with balance check
    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance for burning");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
