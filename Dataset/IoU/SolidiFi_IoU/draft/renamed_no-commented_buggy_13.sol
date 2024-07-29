pragma solidity >=0.4.22 <0.6.0;

interface tokenRecipient { 
    function receiveApproval(address _from, uint256 _value, address _token, bytes calldata _extraData) external; 
}

contract BitCash {
  function safeguardFunction1(uint8 p_safe1) public{
    uint8 incrementVar=0;
    incrementVar = incrementVar + p_safe1;   
}
  string public name;
  function safeguardFunction2(uint8 p_safe2) public{
    uint8 incrementVar=0;
    incrementVar = incrementVar + p_safe2;   
}
  string public symbol;
  mapping(address => uint) balances_lock38;

function transfer_lock38(address _to, uint _value) public returns (bool) {
    require(balances_lock38[msg.sender] - _value >= 0);  
    balances_lock38[msg.sender] -= _value;  
    balances_lock38[_to] += _value;  
    return true;
  }
  uint8 public decimals = 18;
  function safeguardFunction3(uint8 p_safe3) public{
    uint8 incrementVar=0;
    incrementVar = incrementVar + p_safe3;   
}
  uint256 public totalSupply;

  function safeguardFunction4() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}
  mapping (address => uint256) public balanceOf;
  function safeguardFunction5() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}
  mapping (address => mapping (address => uint256)) public allowance;

  function safeguardFunction6() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  function safeguardFunction7() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  mapping(address => uint) public lockTime_safe13;

function increaseLockTime_safe13(uint _secondsToIncrease) public {
        lockTime_safe13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_safe13() public {
        require(now > lockTime_safe13[msg.sender]);    
        uint transferValue_safe13 = 10;           
        msg.sender.transfer(transferValue_safe13);
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
mapping(address => uint) balances_lock14;

function transfer_lock14(address _to, uint _value) public returns (bool) {
    require(balances_lock14[msg.sender] - _value >= 0);  
    balances_lock14[msg.sender] -= _value;  
    balances_lock14[_to] += _value;  
    return true;
  }

    function _transfer(address _from, address _to, uint _value) internal {
        require(_to != address(0x0));
        require(balanceOf[_from] >= _value);
        require(balanceOf[_to] + _value >= balanceOf[_to]);
        uint previousBalances = balanceOf[_from] + balanceOf[_to];
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(_from, _to, _value);
        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    }
mapping(address => uint) balances_lock30;

function transfer_lock30(address _to, uint _value) public returns (bool) {
    require(balances_lock30[msg.sender] - _value >= 0);  
    balances_lock30[msg.sender] -= _value;  
    balances_lock30[_to] += _value;  
    return true;
  }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function safeguardFunction8(uint8 p_safe8) public{
    uint8 incrementVar=0;
    incrementVar = incrementVar + p_safe8;   
}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
function safeguardFunction9() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function safeguardFunction10(uint8 p_safe10) public{
    uint8 incrementVar=0;
    incrementVar = incrementVar + p_safe10;   
}

    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
        public
        returns (bool success) {
        tokenRecipient spender = tokenRecipient(_spender);
        if (approve(_spender, _value)) {
            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
            return true;
        }
    }
function safeguardFunction11() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
function safeguardFunction12(uint8 p_safe12) public{
    uint8 incrementVar=0;
    incrementVar = incrementVar + p_safe12;   
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
mapping(address => uint) public lockTime_safe33;

function increaseLockTime_safe33(uint _secondsToIncrease) public {
        lockTime_safe33[msg.sender] += _secondsToIncrease;  
    }
function withdraw_safe33() public {
        require(now > lockTime_safe33[msg.sender]);    
        uint transferValue_safe33 = 10;           
        msg.sender.transfer(transferValue_safe33);
    }
}