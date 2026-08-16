contract SimpleBank {

    address public owner;

    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function getBalance()
        public
        view
        returns(uint)
    {
        return balances[msg.sender];
    }

    function withdraw(uint amount)
        public
        onlyOwner
    {
        payable(msg.sender).transfer(amount);
    }
}
