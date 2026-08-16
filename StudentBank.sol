// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentBank {

    // STRUCT
    struct Student {
        string name;
        uint256 balance;
    }

    // STORAGE
    Student public student;

    // EVENT
    event MoneyDeposited(
        address indexed user,
        uint256 amount
    );

    // PAYABLE
    function deposit() public payable {
        student.balance += msg.value;

        emit MoneyDeposited(msg.sender, msg.value);
    }

    // CALLDATA
    function updateName(string calldata newName) external {
        // MEMORY
        string memory tempName = newName;

        // STORAGE
        student.name = tempName;
    }

    // STORAGE
    function getStudent()
        public
        view
        returns (string memory, uint256)
    {
        return (student.name, student.balance);
    }
}
