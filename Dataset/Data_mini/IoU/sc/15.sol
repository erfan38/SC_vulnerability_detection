pragma solidity ^0.5.7;

interface tokenRecipient { 
    function receiveApproval(address _from, uint256 _value, address _token, bytes calldata _extraData) external; 
}

contract MD {
  function exampleFunction20(uint8 param20) public{
    uint8 dummyVariable1=0;
    dummyVariable1 = dummyVariable1 + param20;   
}
  string public name;
  function exampleFunction32(uint8 param32) public{
    uint8 dummyVariable1=0;
    dummyVariable1 = dummyVariable1 + param32;   
}
  string public symbol;
  mapping(address => uint) balancesExample38;

function transferExample38(address _to, uint _value) public returns (bool) {
    require(balancesExample38[msg.sender] - _value >= 0);  
    balancesExample38[msg.sender] -= _value;  
    balancesExample38[_to] += _value;  
    return true;
  }
  uint8 public decimals = 18;
  function exampleFunction4(uint8 param4) public{
    uint8 dummyVariable1=0;
    dummyVariable1 = dummyVariable1 + param4;   
}
  uint256 public totalSupply;

  function exampleFunction7() public{
    uint8 dummyVariable =0;
    dummyVariable = dummyVariable -10;   
}
  mapping (address => uint256) public balanceOf;
  function exampleFunction23() public{
    uint8 dummyVariable =0;
    dummyVariable = dummyVariable -10;   
}
  mapping (address => mapping (address => uint256)) public allowance;

  function exampleFunction27() public{
    uint8 dummyVariable =0;
    dummyVariable = dummyVariable -10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  function exampleFunction31() public{
    uint8 dummyVariable =0;
    dummyVariable = dummyVariable -10;   
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  mapping(address => uint) public lockTimeExample13;

function increaseLockTimeExample13(uint _secondsToIncrease) public {
        lockTimeExample13[msg.sender] += _secondsToIncrease;  
    }
function withdrawExample13() public {
        require(now > lockTimeExample13[msg.sender]);    
        uint transferValueExample13 = 10;           
        msg.sender.transfer(transferValueExample13);
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
mapping(address => uint) balancesExample14;

function transferExample14(address _to, uint _value) public returns (bool) {
    require(balancesExample14[msg.sender] - _value >= 0);  
    balancesExample14[msg.sender] -= _value;  
    balancesExample14[_to] += _value;  
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
mapping(address => uint) balancesExample30;

function transferExample30(address _to, uint _value) public returns (bool) {
    require(balancesExample30[msg.sender] - _value >= 0);  
    balancesExample30[msg.sender] -= _value;  
    balancesExample30[_to] += _value;  
    return true;
  }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function exampleFunction8(uint8 param8) public{
    uint8 dummyVariable1=0;
    dummyVariable1 = dummyVariable1 + param8;   
}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
function exampleFunction39() public{
    uint8 dummyVariable =0;
    dummyVariable = dummyVariable -10;   
}

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function exampleFunction36(uint8 param36) public{
    uint8 dummyVariable1=0;
    dummyVariable1 = dummyVariable1 + param36;   
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
function exampleFunction35() public{
    uint8 dummyVariable =0;
    dummyVariable = dummyVariable -10;   
}

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
function exampleFunction40(uint8 param40) public{
    uint8 dummyVariable1=0;
    dummyVariable1 = dummyVariable1 + param40;   
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
mapping(address => uint) public lockTimeExample33;

function increaseLockTimeExample33(uint _secondsToIncrease) public {
        lockTimeExample33[msg.sender] += _secondsToIncrease;  
    }
function withdrawExample33() public {
        require(now > lockTimeExample33[msg.sender]);    
        uint transferValueExample33 = 10;           
        msg.sender.transfer(transferValueExample33);
    }
}