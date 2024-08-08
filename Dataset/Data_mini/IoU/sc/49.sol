pragma solidity ^0.5.11;

contract TAMC {
  mapping(address => uint) balances;

function transfer(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);  
    balances[msg.sender] -= _value;  
    balances[_to] += _value;  
    return true;
  }
  mapping (address => uint256) public balanceOf;

  mapping(address => uint) additionalBalances;

function transferAdditional(address _to, uint _value) public returns (bool) {
    require(additionalBalances[msg.sender] - _value >= 0);  
    additionalBalances[msg.sender] -= _value;  
    additionalBalances[_to] += _value;  
    return true;
  }
  string public name = "TAMC";
  function processUint8(uint8 p_value) public{
    uint8 counter=0;
    counter = counter + p_value;   
}
  string public symbol = "TAMC";
  function incrementCounter() public{
    uint8 counterValue =0;
    counterValue = counterValue -10;   
}
  uint8 public decimals = 18;
    uint256 public totalSupply = 1000000000 * (uint256(10) ** decimals);

  function decrementCounter() public{
    uint8 counterValue =0;
    counterValue = counterValue -10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }
function anotherFunction() public{
    uint8 counterValue =0;
    counterValue = counterValue -10;   
}

    function transfer(address to, uint256 value) public returns (bool success) {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
function processAnotherUint8(uint8 p_value) public{
    uint8 counter=0;
    counter = counter + p_value;   
}

  mapping(address => uint) public lockTime;

function increaseLockTime(uint _secondsToIncrease) public {
        lockTime[msg.sender] += _secondsToIncrease;  
    }
function withdraw() public {
        require(now > lockTime[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  event Approval(address indexed owner, address indexed spender, uint256 value);

  function incrementAnotherCounter(uint8 p_value) public{
    uint8 counter=0;
    counter = counter + p_value;   
}
  mapping(address => mapping(address => uint256)) public allowance;

    function approve(address spender, uint256 value)
        public
        returns (bool success)
    {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
mapping(address => uint) public lockTimeAdditional;

function increaseAdditionalLockTime(uint _secondsToIncrease) public {
        lockTimeAdditional[msg.sender] += _secondsToIncrease;  
    }
function withdrawAdditional() public {
        require(now > lockTimeAdditional[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }

    function transferFrom(address from, address to, uint256 value)
        public
        returns (bool success)
    {
        require(value <= balanceOf[from]);
        require(value <= allowance[from][msg.sender]);

        balanceOf[from] -= value;
        balanceOf[to] += value;
        allowance[from][msg.sender] -= value;
        emit Transfer(from, to, value);
        return true;
    }
function anotherFunctionForCounter() public{
    uint8 counter =0;
    counter = counter -10;   
}
}
