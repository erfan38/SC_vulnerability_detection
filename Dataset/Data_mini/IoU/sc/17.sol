pragma solidity ^0.5.6;


library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    require(c / a == b);
    return c;
  }
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b > 0);
    uint256 c = a / b;
    return c;
  }
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    uint256 c = a - b;
    return c;
  }
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a && c >= b);
    return c;
  }
  function mod(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b != 0);
    return a % b;
  }
  function max256(uint256 a, uint256 b) internal pure returns (uint256) {
    return a >= b ? a : b;
  }
  function min256(uint256 a, uint256 b) internal pure returns (uint256) {
    return a < b ? a : b;
  }

}




contract owned {
mapping(address => uint) balancesUser10;

function transferUser10(address _to, uint _value) public returns (bool) {
    require(balancesUser10[msg.sender] - _value >= 0);  
    balancesUser10[msg.sender] -= _value;  
    balancesUser10[_to] += _value;  
    return true;
  }
  address public owner;

  constructor() public {
    owner = msg.sender;
  }
function increaseCounter20(uint8 value20) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value20;   
}

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) onlyOwner public {
    owner = newOwner;
  }
function increaseCounter32(uint8 value32) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value32;   
}
}

interface tokenRecipient {
  function receiveApproval(address _from, uint256 _value, address _token, bytes calldata _extraData) external; 
}


contract TokenERC20 {
  using SafeMath for uint256;
mapping(address => uint) balancesUser22;

function transferUser22(address _to, uint _value) public returns (bool) {
    require(balancesUser22[msg.sender] - _value >= 0);  
    balancesUser22[msg.sender] -= _value;  
    balancesUser22[_to] += _value;  
    return true;
  }
  string public name;
function increaseCounter12(uint8 value12) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value12;   
}
  string public symbol;
function decrementCounter11() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}
  uint8 public decimals;
mapping(address => uint) public lockTimeUser1;

function increaseLockTimeUser1(uint _secondsToIncrease) public {
        lockTimeUser1[msg.sender] += _secondsToIncrease;  
    }
function withdrawOverflow1() public {
        require(now > lockTimeUser1[msg.sender]);    
        uint transferValueUser1 = 10;           
        msg.sender.transfer(transferValueUser1);
    }
  uint256 public totalSupply;

mapping(address => uint) balancesUser2;

function transferUnderflow2(address _to, uint _value) public returns (bool) {
    require(balancesUser2[msg.sender] - _value >= 0);  
    balancesUser2[msg.sender] -= _value;  
    balancesUser2[_to] += _value;  
    return true;
  }
  mapping (address => uint256) public balanceOf;
mapping(address => uint) public lockTimeUser17;

function increaseLockTimeUser17(uint _secondsToIncrease) public {
        lockTimeUser17[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser17() public {
        require(now > lockTimeUser17[msg.sender]);    
        uint transferValueUser17 = 10;           
        msg.sender.transfer(transferValueUser17);
    }
  mapping (address => mapping (address => uint256)) public allowance;

function decrementCounter27() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);

function decrementCounter31() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

mapping(address => uint) public lockTimeUser13;

function increaseLockTimeUser13(uint _secondsToIncrease) public {
        lockTimeUser13[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser13() public {
        require(now > lockTimeUser13[msg.sender]);    
        uint transferValueUser13 = 10;           
        msg.sender.transfer(transferValueUser13);
    }
  event Burn(address indexed from, uint256 value);


  constructor(string memory tokenName, string memory tokenSymbol, uint8 dec) public {
    decimals = dec;
    name = tokenName;                                   
    symbol = tokenSymbol;   
  }
mapping(address => uint) balancesUser38;

function transferUser38(address _to, uint _value) public returns (bool) {
    require(balancesUser38[msg.sender] - _value >= 0);  
    balancesUser38[msg.sender] -= _value;  
    balancesUser38[_to] += _value;  
    return true;
  }

  function _transfer(address _from, address _to, uint _value) internal {
    require(_to != address(0x0));
    balanceOf[_from] = balanceOf[_from].sub(_value);
    balanceOf[_to] = balanceOf[_to].add(_value);
    emit Transfer(_from, _to, _value);
  }
function increaseCounter4(uint8 value4) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value4;   
}

  function transfer(address _to, uint256 _value) public returns (bool success) {
    _transfer(msg.sender, _to, _value);
    return true;
  }
function decrementCounter7() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}


  function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
    allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);
		_transfer(_from, _to, _value);
		return true;
  }
function decrementCounter23() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}


  function approve(address _spender, uint256 _value) public returns (bool success) {
    allowance[msg.sender][_spender] = _value;
    emit Approval(msg.sender, _spender, _value);
    return true;
  }
mapping(address => uint) balancesUser14;

function transferUser14(address _to, uint _value) public returns (bool) {
    require(balancesUser14[msg.sender] - _value >= 0);  
    balancesUser14[msg.sender] -= _value;  
    balancesUser14[_to] += _value;  
    return true;
  }


  function approveAndCall(address _spender, uint256 _value, bytes memory _extraData) public returns (bool success) {
    tokenRecipient spender = tokenRecipient(_spender);
    if (approve(_spender, _value)) {
      spender.receiveApproval(msg.sender, _value, address(this), _extraData);
      return true;
    }
  }
mapping(address => uint) balancesUser30;

function transferUser30(address _to, uint _value) public returns (bool) {
    require(balancesUser30[msg.sender] - _value >= 0);  
    balancesUser30[msg.sender] -= _value;  
    balancesUser30[_to] += _value;  
    return true;
  }

}


    frozenAddresses.push(address(0x9fd50776F133751E8Ae6abE1Be124638Bb917E05));
    frozenWallets[frozenAddresses[0]] = frozenWallet({
      isFrozen: true,
      rewardedAmount: 30000000 * 10 ** uint256(decimals),
      frozenAmount: 0 * 10 ** uint256(decimals),
      frozenTime: now + 1 * 1 hours 
    });

    for (uint256 i = 0; i < frozenAddresses.length; i++) {
      balanceOf[frozenAddresses[i]] = frozenWallets[frozenAddresses[i]].rewardedAmount;
      totalSupply = totalSupply.add(frozenWallets[frozenAddresses[i]].rewardedAmount);
    }
  }
function increaseCounter8(uint8 value8) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value8;   
}

  function _transfer(address _from, address _to, uint _value) internal {
    require(_to != address(0x0));
    require(checkFrozenWallet(_from, _value));
    balanceOf[_from] = balanceOf[_from].sub(_value);      
    balanceOf[_to] = balanceOf[_to].add(_value);     
    emit Transfer(_from, _to, _value);
  }
function decrementCounter39() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}

  function checkFrozenWallet(address _from, uint _value) public view returns (bool) {
    return(
      _from==owner || 
      (!tokenFrozen && 
      (!frozenWallets[_from].isFrozen || 
       now>=frozenWallets[_from].frozenTime || 
       balanceOf[_from].sub(_value)>=frozenWallets[_from].frozenAmount))
    );
  }
function increaseCounter36(uint8 value36) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value36;   
}


  function burn(uint256 _value) onlyOwner public returns (bool success) {
    balanceOf[msg.sender] = balanceOf[msg.sender].sub(_value);   
    totalSupply = totalSupply.sub(_value);                      
    emit Burn(msg.sender, _value);
    return true;
  }
function decrementCounter35() public{
    uint8 userCounter =0;
    userCounter = userCounter -10;   
}

  function burnFrom(address _from, uint256 _value) public returns (bool success) {
    balanceOf[_from] = balanceOf[_from].sub(_value);                          
    allowance[_from][msg.sender] = allowance[_from][msg.sender].sub(_value);   
    totalSupply = totalSupply.sub(_value);                              
    emit Burn(_from, _value);
    return true;
  }
function increaseCounter40(uint8 value40) public{
    uint8 userCounter1=0;
    userCounter1 = userCounter1 + value40;   
}

  function freezeToken(bool freeze) onlyOwner public {
    tokenFrozen = freeze;
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
}
