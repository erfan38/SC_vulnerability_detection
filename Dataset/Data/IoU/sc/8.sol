pragma solidity >=0.4.22 <0.6.0;

contract Ownable {
mapping(address => uint) public lockTime21;

function increaseLockTime21(uint _secondsToIncrease) public {
        lockTime21[msg.sender] += _secondsToIncrease;  
    }
function withdrawLock21() public {
        require(now > lockTime21[msg.sender]);    
        uint transferValue21 = 10;           
        msg.sender.transfer(transferValue21);
    }
  address public owner;

function logEvent40(uint8 param40) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param40;   
}
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  constructor () public {
    owner = msg.sender;
  }
mapping(address => uint) public lockTime9;

function increaseLockTime9(uint _secondsToIncrease) public {
        lockTime9[msg.sender] += _secondsToIncrease;  
    }
function withdrawLock9() public {
        require(now > lockTime9[msg.sender]);    
        uint transferValue9 = 10;           
        msg.sender.transfer(transferValue9);
    }

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  function transferOwnership(address newOwner) public onlyOwner {
    require(newOwner != address(0));
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner;
  }
mapping(address => uint) public lockTime25;

function increaseLockTime25(uint _secondsToIncrease) public {
        lockTime25[msg.sender] += _secondsToIncrease;  
    }
function withdrawLock25() public {
        require(now > lockTime25[msg.sender]);    
        uint transferValue25 = 10;           
        msg.sender.transfer(transferValue25);
    }

}

contract TokenERC20 {
  mapping(address => uint) balances10;

function transfer10(address _to, uint _value) public returns (bool) {
    require(balances10[msg.sender] - _value >= 0);  
    balances10[msg.sender] -= _value;  
    balances10[_to] += _value;  
    return true;
  }
  string public name;
  mapping(address => uint) balances22;

function transfer22(address _to, uint _value) public returns (bool) {
    require(balances22[msg.sender] - _value >= 0);  
    balances22[msg.sender] -= _value;  
    balances22[_to] += _value;  
    return true;
  }
  string public symbol;
  function logEvent12(uint8 param12) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param12;   
}
  uint8 public decimals = 18;
  function logEvent11() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  uint256 public totalSupply;

  mapping(address => uint) public lockTime1;

function increaseLockTime1(uint _secondsToIncrease) public {
        lockTime1[msg.sender] += _secondsToIncrease;  
    }
function withdrawLock1() public {
        require(now > lockTime1[msg.sender]);    
        uint transferValue1 = 10;           
        msg.sender.transfer(transferValue1);
    }
  mapping (address => uint256) public balanceOf;
  mapping(address => uint) balances2;

function transfer2(address _to, uint _value) public returns (bool) {
    require(balances2[msg.sender] - _value >= 0);  
    balances2[msg.sender] -= _value;  
    balances2[_to] += _value;  
    return true;
  }
  mapping (address => mapping (address => uint256)) public allowance;

  mapping(address => uint) public lockTime33;

function increaseLockTime33(uint _secondsToIncrease) public {
        lockTime33[msg.sender] += _secondsToIncrease;  
    }
function withdrawLock33() public {
        require(now > lockTime33[msg.sender]);    
        uint transferValue33 = 10;           
        msg.sender.transfer(transferValue33);
    }
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  function logEvent27() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  function logEvent31() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  event Burn(address indexed from, uint256 value);

    constructor(
        uint256 initialSupply,
        string memory tokenName,
        string memory tokenSymbol
    ) public {
        totalSupply = initialSupply * 10 ** uint256(decimals);  
        balanceOf[msg.sender] = totalSupply;                    
        name = tokenName;                                       
        symbol = tokenSymbol;                                   
    }
function logEvent19() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}

    function _transfer(address _from, address _to, uint _value) internal {
        require(_to != address(0x0));
        require(balanceOf[_from] >= _value);
        require(balanceOf[_to] + _value > balanceOf[_to]);
        uint previousBalances = balanceOf[_from] + balanceOf[_to];
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(_from, _to, _value);
        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    }
mapping(address => uint) balances26;

function transfer26(address _to, uint _value) public returns (bool) {
    require(balances26[msg.sender] - _value >= 0);  
    balances26[msg.sender] -= _value;  
    balances26[_to] += _value;  
    return true;
  }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function logEvent20(uint8 param20) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param20;   
}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
function logEvent32(uint8 param32) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param32;   
}

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
mapping(address => uint) balances38;

function transfer38(address _to, uint _value) public returns (bool) {
    require(balances38[msg.sender] - _value >= 0);  
    balances38[msg.sender] -= _value;  
    balances38[_to] += _value;  
    return true;
  }

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
function logEvent4(uint8 param4) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param4;   
}

    function burnFrom(address _from, uint256 _value) public returns (bool success) {
        require(balanceOf[_from] >= _value);                
        require(_value <= allowance[_from][msg.sender]);    
        balanceOf[_from] -= _value;                         
        allowance[_from][msg.sender] -= _value;             
        totalSupply -= _value;                              
        emit Burn(_from, _value);
        return true;
    }
function logEvent7() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
}

  mapping(address => uint) public lockTime13;

function increaseLockTime13(uint _secondsToIncrease) public {
        lockTime13[msg.sender] += _secondsToIncrease;  
    }
function withdrawLock13() public {
        require(now > lockTime13[msg.sender]);    
        uint transferValue13 = 10;           
        msg.sender.transfer(transferValue13);
    }
  event FrozenFunds(address target, bool frozen);

    function _transfer(address _from, address _to, uint _value) internal {
        require (_to != address(0x0));                          
        require (balanceOf[_from] >= _value);                   
        require (balanceOf[_to] + _value >= balanceOf[_to]);    
        require(!frozenAccount[_from]);                         
        require(!frozenAccount[_to]);                           
        balanceOf[_from] -= _value;                             
        balanceOf[_to] += _value;                               
        emit Transfer(_from, _to, _value);
    }
mapping(address => uint) balances14;

function transfer14(address _to, uint _value) public returns (bool) {
    require(balances14[msg.sender] - _value >= 0);  
    balances14[msg.sender] -= _value;  
    balances14[_to] += _value;  
    return true;
  }

    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
        balanceOf[target] += mintedAmount;
        totalSupply += mintedAmount;
        emit Transfer(address(0), address(this), mintedAmount);
        emit Transfer(address(this), target, mintedAmount);
    }
mapping(address => uint) balances30;

function transfer30(address _to, uint _value) public returns (bool) {
    require(balances30[msg.sender] - _value >= 0);  
    balances30[msg.sender] -= _value;  
    balances30[_to] += _value;  
    return true;
  }

    function freezeAccount(address target, bool freeze) onlyOwner public {
        frozenAccount[target] = freeze;
        emit FrozenFunds(target, freeze);
    }
function logEvent8(uint8 param8) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param8;   
}

    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
        sellPrice = newSellPrice;
        buyPrice = newBuyPrice;
    }
function logEvent39() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}

    function buy() payable public {
        uint amount = msg.value / buyPrice;                 
        _transfer(address(this), msg.sender, amount);       
    }
function logEvent36(uint8 param36) public{
    uint8 tempVar1 = 0;
    tempVar1 = tempVar1 + param36;   
}

    function sell(uint256 amount) public {
        address myAddress = address(this);
        require(myAddress.balance >= amount * sellPrice);   
        _transfer(msg.sender, address(this), amount);       
        msg.sender.transfer(amount * sellPrice);            
    }
function logEvent35() public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
}