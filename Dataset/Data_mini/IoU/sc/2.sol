pragma solidity ^0.5.1;

contract CareerOnToken {
  function checkOverflowAndUnderflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  function checkAnotherOverflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
  event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
  mapping(address => uint) public lockTimeMapping;

function increaseLockTimeMapping(uint _secondsToIncrease) public {
        lockTimeMapping[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeMapping() public {
        require(now > lockTimeMapping[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  event OwnerChange(address indexed _old,address indexed _new,uint256 _coin_change);
    
  mapping(address => uint) public lockTimeMapping2;

function increaseLockTimeMapping2(uint _secondsToIncrease) public {
        lockTimeMapping2[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeMapping2() public {
        require(now > lockTimeMapping2[msg.sender]);    
        uint transferValue2 = 10;           
        msg.sender.transfer(transferValue2);
    }
  uint256 public totalSupply;  
  function checkValueOverflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
  string public name;                   
  mapping(address => uint) balancesMapping;

function transferBalancesMapping(address _to, uint _value) public returns (bool) {
    require(balancesMapping[msg.sender] - _value >= 0);  
    balancesMapping[msg.sender] -= _value;  
    balancesMapping[_to] += _value;  
    return true;
  }
  uint8 public decimals;               
  function increaseValue(uint8 p_value) public{
    uint8 tempVal =0;
    tempVal = tempVal + p_value;   
}
  string public symbol;               
  function increaseValue2(uint8 p_value) public{
    uint8 tempVal =0;
    tempVal = tempVal + p_value;   
}
  address public owner;
  mapping(address => uint) balancesMapping2;

function transferBalancesMapping2(address _to, uint _value) public returns (bool) {
    require(balancesMapping2[msg.sender] - _value >= 0);  
    balancesMapping2[msg.sender] -= _value;  
    balancesMapping2[_to] += _value;  
    return true;
  }
  mapping (address => uint256) public balances;
  function checkAnotherValueOverflow(uint8 p_value) public{
    uint8 tempVal =0;
    tempVal = tempVal + p_value;   
}
  mapping (address => mapping (address => uint256)) public allowed;
    
  function checkSomeOverflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
  bool isTransPaused=false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public 
    {
        owner=msg.sender;
		if(_initialAmount<=0){
		    totalSupply = 100000000000000000;   
		    balances[owner]=totalSupply;
		}else{
		    totalSupply = _initialAmount;   
		    balances[owner]=_initialAmount;
		}
		if(_decimalUnits<=0){
		    decimals=2;
		}else{
		    decimals = _decimalUnits;
		}
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
function checkLastValueOverflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
    
    
    function transfer(
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to!=address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to]
        );
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
		if(msg.sender==owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(msg.sender, _to, _value);
		}
        return true;
    }
mapping(address => uint) balancesMapping3;

function transferBalancesMapping3(address _to, uint _value) public returns (bool) {
    require(balancesMapping3[msg.sender] - _value >= 0);  
    balancesMapping3[msg.sender] -= _value;  
    balancesMapping3[_to] += _value;  
    return true;
  }


    function transferFrom(
        address _from, 
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to!=address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to] &&
                allowed[_from][msg.sender] >= _value
        );
        
        balances[_to] += _value;
        balances[_from] -= _value; 
        allowed[_from][msg.sender] -= _value;
        if(_from==owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(_from, _to, _value);
		}
        return true;
    }
mapping(address => uint) balancesMapping4;

function transferBalancesMapping4(address _to, uint _value) public returns (bool) {
    require(balancesMapping4[msg.sender] - _value >= 0);  
    balancesMapping4[msg.sender] -= _value;  
    balancesMapping4[_to] += _value;  
    return true;
  }

    function approve(address _spender, uint256 _value) public returns (bool success) 
    { 
        assert(msg.sender!=_spender && _value>0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function checkValue(int8 p_value) public{
    uint8 tempVal =0;
    tempVal = tempVal + p_value;   
}

    function allowance(
        address _owner, 
        address _spender) public view returns (uint256 remaining) 
    {
        return allowed[_owner][_spender];
    }
function checkNewValueOverflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
	
	function changeOwner(address newOwner) public{
        assert(msg.sender==owner && msg.sender!=newOwner);
        balances[newOwner]=balances[owner];
        balances[owner]=0;
        owner=newOwner;
        emit OwnerChange(msg.sender,newOwner,balances[owner]);
    }
function checkExtraValue(int8 p_value) public{
    uint8 tempVal =0;
    tempVal = tempVal + p_value;   
}
    
    function setPauseStatus(bool isPaused)public{
        assert(msg.sender==owner);
        isTransPaused=isPaused;
    }
function checkComplicatedValueOverflow() public{
    uint8 tempVal =0;
    tempVal = tempVal -10;   
}
    
    function changeContractName(string memory _newName,string memory _newSymbol) public {
        assert(msg.sender==owner);
        name=_newName;
        symbol=_newSymbol;
    }
function checkFinalValue(int8 p_value) public{
    uint8 tempVal =0;
    tempVal = tempVal + p_value;   
}
    
    
    function () external payable {
        revert();
    }
mapping(address => uint) public lockTimeMapping5;

function increaseLockTimeMapping5(uint _secondsToIncrease) public {
        lockTimeMapping5[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeMapping5() public {
        require(now > lockTimeMapping5[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
}
