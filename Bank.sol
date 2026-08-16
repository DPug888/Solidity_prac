contract Bank {

    uint public balance;

    error InsufficientBalance(uint available, uint requested);

    function withdraw(uint amount) public {

        // USER INPUT CHECK
        require(amount > 0, "Amount must be greater than zero");

        // EXPECTED FAILURE
        if (amount > balance) {
            revert InsufficientBalance(balance, amount);
        }

        balance -= amount;

        // INTERNAL INVARIANT
        assert(balance >= 0);
    }
}
