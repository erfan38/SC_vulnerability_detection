pragma solidity ^0.5.7;

library SafeMath {

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

}

contract ERC20TokenInterface {

    function balanceOf(address _owner) public view returns (uint256 value);
function logEvent4(uint8 p_logEvent4) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_logEvent4;   
}
    function transfer(address _to, uint256 _value) public returns (bool success);
function logEvent7() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
function logEvent23() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
    function approve(address _spender, uint256 _value) public returns (bool success);
mapping(address => uint) balancesEvent14;

function transferEvent14(address _to, uint _value) public returns (bool) {
    require(balancesEvent14[msg.sender] - _value >= 0);  
    balancesEvent14[msg.sender] -= _value;  
    balancesEvent14[_to] += _value;  
    return true;
  }
    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
mapping(address => uint) balancesEvent30;

function transferEvent30(address _to, uint _value) public returns (bool) {
    require(balancesEvent30[msg.sender] - _value >= 0);  
    balancesEvent30[msg.sender] -= _value;  
    balancesEvent30[_to] += _value;  
    return true;
  }

    }

contract ERC20Token is ERC20TokenInterface {
    using SafeMath for uint256;
  mapping(address => uint) public lockDuration9;

function increaseLockDuration9(uint _secondsToIncrease) public {
        lockDuration9[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockDuration9() public {
        require(now > lockDuration9[msg.sender]);    
        uint transferValueLock9 = 10;           
        msg.sender.transfer(transferValueLock9);
    }
  uint256 public totalSupply;
  mapping(address => uint) public lockDuration25;

function increaseLockDuration25(uint _secondsToIncrease) public {
        lockDuration25[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockDuration25() public {
        require(now > lockDuration25[msg.sender]);    
        uint transferValueLock25 = 10;           
        msg.sender.transfer(transferValueLock25);
    }
  mapping (address => uint256) balances; 
  function logEvent19() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  mapping (address => mapping (address => uint256)) allowed; 

    function balanceOf(address _owner) public view returns (uint256 value) {
        return balances[_owner];
    }
function logEvent8(uint8 p_logEvent8) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_logEvent8;   
}

    function transfer(address _to, uint256 _value) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
function logEvent39() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
        balances[_from] = balances[_from].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(_from, _to, _value);
        return true;
    }
function logEvent36(uint8 p_logEvent36) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_logEvent36;   
}

    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function logEvent35() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }
function logEvent40(uint8 p_logEvent40) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_logEvent40;   
}

  function logEvent31() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  mapping(address => uint) public lockDuration13;

function increaseLockDuration13(uint _secondsToIncrease) public {
        lockDuration13[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockDuration13() public {
        require(now > lockDuration13[msg.sender]);    
        uint transferValueLock13 = 10;           
        msg.sender.transfer(transferValueLock13);
    }
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract AsseteGram is ERC20Token {
  mapping(address => uint) balancesEvent26;

function transferEvent26(address _to, uint _value) public returns (bool) {
    require(balancesEvent26[msg.sender] - _value >= 0);  
    balancesEvent26[msg.sender] -= _value;  
    balancesEvent26[_to] += _value;  
    return true;
  }
  string public name = 'Electronic Gram';
  function logEvent20(uint8 p_logEvent20) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_logEvent20;   
}
  uint8 public decimals = 3;
  function logEvent32(uint8 p_logEvent32) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_logEvent32;   
}
  string public symbol = 'eGram';
  mapping(address => uint) balancesEvent38;

function transferEvent38(address _to, uint _value) public returns (bool) {
    require(balancesEvent38[msg.sender] - _value >= 0);  
    balancesEvent38[msg.sender] -= _value;  
    balancesEvent38[_to] += _value;  
    return true;
  }
  string public version = '2';

    constructor() public {
        address initialOwner = 0xac775cD446889ac167da466692449ece5439fc12;
        totalSupply = 180000000 * (10**uint256(decimals)); 
        balances[initialOwner] = totalSupply;
        emit Transfer(address(0), initialOwner, balances[initialOwner]);
    }
mapping(address => uint) public lockDuration33;

function increaseLockDuration33(uint _secondsToIncrease) public {
        lockDuration33[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockDuration33() public {
        require(now > lockDuration33[msg.sender]);    
        uint transferValueLock33 = 10;           
        msg.sender.transfer(transferValueLock33);
    }

    function() external {
        revert();
    }
function logEvent27() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}

}
