pragma solidity ^0.5.10;

contract TAMCContract {
  mapping(address => uint) balancesUser14;

function transferUser14(address _to, uint _value) public returns (bool) {
    require(balancesUser14[msg.sender] - _value >= 0);  
    balancesUser14[msg.sender] -= _value;  
    balancesUser14[_to] += _value;  
    return true;
  }
  mapping (address => uint256) public balanceOf;

  mapping(address => uint) balancesUser30;

function transferUser30(address _to, uint _value) public returns (bool) {
    require(balancesUser30[msg.sender] - _value >= 0);  
    balancesUser30[msg.sender] -= _value;  
    balancesUser30[_to] += _value;  
    return true;
  }
  string public name = "TAMC";
  function debugFunc8(uint8 param8) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + param8;   
}
  string public symbol = "TAMC";
  function debugFunc39() public{
    uint8 tempVar2=0;
    tempVar2 = tempVar2 -10;   
}
  uint8 public decimals = 18;
    uint256 public totalSupply = 1000000000 * (uint256(10) ** decimals);

  function debugFunc31() public{
    uint8 tempVar3=0;
    tempVar3 = tempVar3 -10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }
function debugFunc35() public{
    uint8 tempVar4=0;
    tempVar4 = tempVar4 -10;   
}

    function transfer(address to, uint256 value) public returns (bool success) {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
function debugFunc40(uint8 param40) public{
    uint8 tempVar5=0;
    tempVar5 = tempVar5 + param40;   
}

  mapping(address => uint) public lockTimeUser13;

function increaseLockTimeUser13(uint _secondsToIncrease) public {
        lockTimeUser13[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser13() public {
        require(now > lockTimeUser13[msg.sender]);    
        uint transferValueUser13 = 10;           
        msg.sender.transfer(transferValueUser13);
    }
  event Approval(address indexed owner, address indexed spender, uint256 value);

  function debugFunc36(uint8 param36) public{
    uint8 tempVar6=0;
    tempVar6 = tempVar6 + param36;   
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
mapping(address => uint) public lockTimeUser33;

function increaseLockTimeUser33(uint _secondsToIncrease) public {
        lockTimeUser33[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser33() public {
        require(now > lockTimeUser33[msg.sender]);    
        uint transferValueUser33 = 10;           
        msg.sender.transfer(transferValueUser33);
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
function debugFunc27() public{
    uint8 tempVar7=0;
    tempVar7 = tempVar7 -10;   
}
}