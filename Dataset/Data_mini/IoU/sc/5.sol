pragma solidity >=0.4.22 <0.6.0;

contract Ownable {
mapping(address => uint) public lockTimeOwner;

function increaseLockTimeOwner(uint _secondsToIncrease) public {
        lockTimeOwner[msg.sender] += _secondsToIncrease;  
    }
function withdrawOwner() public {
        require(now > lockTimeOwner[msg.sender]);    
        uint transferValueOwner = 10;           
        msg.sender.transfer(transferValueOwner);
    }
  address public owner;

function temporaryFunction1(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


  constructor () public {
    owner = msg.sender;
  }
mapping(address => uint) public lockTimeUser1;

function increaseLockTimeUser1(uint _secondsToIncrease) public {
        lockTimeUser1[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser1() public {
        require(now > lockTimeUser1[msg.sender]);    
        uint transferValueUser1 = 10;           
        msg.sender.transfer(transferValueUser1);
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
mapping(address => uint) public lockTimeUser2;

function increaseLockTimeUser2(uint _secondsToIncrease) public {
        lockTimeUser2[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser2() public {
        require(now > lockTimeUser2[msg.sender]);    
        uint transferValueUser2 = 10;           
        msg.sender.transfer(transferValueUser2);
    }

}

contract TokenERC20 {
  mapping(address => uint) balancesUser1;

function transferUser1(address _to, uint _value) public returns (bool) {
    require(balancesUser1[msg.sender] - _value >= 0);  
    balancesUser1[msg.sender] -= _value;  
    balancesUser1[_to] += _value;  
    return true;
  }
  string public name;
  mapping(address => uint) balancesUser2;

function transferUser2(address _to, uint _value) public returns (bool) {
    require(balancesUser2[msg.sender] - _value >= 0);  
    balancesUser2[msg.sender] -= _value;  
    balancesUser2[_to] += _value;  
    return true;
  }
  string public symbol;
  function temporaryFunction2(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
  uint8 public decimals = 18;
  function temporaryFunction3() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  uint256 public totalSupply;

  mapping(address => uint) public lockTimeUser3;

function increaseLockTimeUser3(uint _secondsToIncrease) public {
        lockTimeUser3[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser3() public {
        require(now > lockTimeUser3[msg.sender]);    
        uint transferValueUser3 = 10;           
        msg.sender.transfer(transferValueUser3);
    }
  mapping (address => uint256) public balanceOf;
  mapping(address => uint) balancesUser4;

function transferUser4(address _to, uint _value) public returns (bool) {
    require(balancesUser4[msg.sender] - _value >= 0);  
    balancesUser4[msg.sender] -= _value;  
    balancesUser4[_to] += _value;  
    return true;
  }
  mapping (address => mapping (address => uint256)) public allowance;

  mapping(address => uint) public lockTimeUser5;

function increaseLockTimeUser5(uint _secondsToIncrease) public {
        lockTimeUser5[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser5() public {
        require(now > lockTimeUser5[msg.sender]);    
        uint transferValueUser5 = 10;           
        msg.sender.transfer(transferValueUser5);
    }
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  function temporaryFunction4() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  function temporaryFunction5() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
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
function temporaryFunction6() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
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
mapping(address => uint) balancesUser6;

function transferUser6(address _to, uint _value) public returns (bool) {
    require(balancesUser6[msg.sender] - _value >= 0);  
    balancesUser6[msg.sender] -= _value;  
    balancesUser6[_to] += _value;  
    return true;
  }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function temporaryFunction7(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
function temporaryFunction8(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
mapping(address => uint) balancesUser7;

function transferUser7(address _to, uint _value) public returns (bool) {
    require(balancesUser7[msg.sender] - _value >= 0);  
    balancesUser7[msg.sender] -= _value;  
    balancesUser7[_to] += _value;  
    return true;
  }

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
function temporaryFunction9(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
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
function temporaryFunction10(uint8 p_value) public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
}

  mapping(address => uint) public lockTimeUser8;

function increaseLockTimeUser8(uint _secondsToIncrease) public {
        lockTimeUser8[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser8() public {
        require(now > lockTimeUser8[msg.sender]);    
        uint transferValueUser8 = 10;           
        msg.sender.transfer(transferValueUser8);
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
mapping(address => uint) balancesUser9;

function transferUser9(address _to, uint _value) public returns (bool) {
    require(balancesUser9[msg.sender] - _value >= 0);  
    balancesUser9[msg.sender] -= _value;  
    balancesUser9[_to] += _value;  
    return true;
  }

    function mintToken(address target, uint256 mintedAmount) onlyOwner public {
        balanceOf[target] += mintedAmount;
        totalSupply += mintedAmount;
        emit Transfer(address(0), address(this), mintedAmount);
        emit Transfer(address(this), target, mintedAmount);
    }
mapping(address => uint) balancesUser10;

function transferUser10(address _to, uint _value) public returns (bool) {
    require(balancesUser10[msg.sender] - _value >= 0);  
    balancesUser10[msg.sender] -= _value;  
    balancesUser10[_to] += _value;  
    return true;
  }

    function freezeAccount(address target, bool freeze) onlyOwner public {
        frozenAccount[target] = freeze;
        emit FrozenFunds(target, freeze);
    }
function temporaryFunction11(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}

    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) onlyOwner public {
        sellPrice = newSellPrice;
        buyPrice = newBuyPrice;
    }
function temporaryFunction12(uint8 p_value) public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}

    function buy() payable public {
        uint amount = msg.value / buyPrice;                 
        _transfer(address(this), msg.sender, amount);       
    }
function temporaryFunction13(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}

    function sell(uint256 amount) public {
        address myAddress = address(this);
        require(myAddress.balance >= amount * sellPrice);   
        _transfer(msg.sender, address(this), amount);       
        msg.sender.transfer(amount * sellPrice);            
    }
function temporaryFunction14(uint8 p_value) public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
}