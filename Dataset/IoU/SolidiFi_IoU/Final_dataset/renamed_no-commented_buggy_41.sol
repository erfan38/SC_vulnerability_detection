pragma solidity >=0.4.22 <0.6.0;

interface tokenRecipient { 
    function receiveApproval(address _from, uint256 _value, address _token, bytes calldata _extraData) external; 
}

contract AO {
  function debug(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar + param;   
}
  string public name;
  function debugTwo(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar + param;   
}
  string public symbol;
  mapping(address => uint) balances;

function transferBalance(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);  
    balances[msg.sender] -= _value;  
    balances[_to] += _value;  
    return true;
  }
  uint8 public decimals = 18;
  function debugThree(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar + param;   
}
  uint256 public totalSupply;

  function debugFour(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  mapping (address => uint256) public balanceOf;
  function debugFive(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  mapping (address => mapping (address => uint256)) public allowance;

  function debugSix(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  function debugSeven(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  mapping(address => uint) public lockTimeExample1;

function increaseLockTimeExample1(uint _secondsToIncrease) public {
        lockTimeExample1[msg.sender] += _secondsToIncrease;  
    }
function withdrawExample1() public {
        require(now > lockTimeExample1[msg.sender]);    
        uint transferValueExample1 = 10;           
        msg.sender.transfer(transferValueExample1);
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
mapping(address => uint) balancesExample2;

function transferBalanceExample2(address _to, uint _value) public returns (bool) {
    require(balancesExample2[msg.sender] - _value >= 0);  
    balancesExample2[msg.sender] -= _value;  
    balancesExample2[_to] += _value;  
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
mapping(address => uint) balancesExample3;

function transferBalanceExample3(address _to, uint _value) public returns (bool) {
    require(balancesExample3[msg.sender] - _value >= 0);  
    balancesExample3[msg.sender] -= _value;  
    balancesExample3[_to] += _value;  
    return true;
  }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function debugEight(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar + param;   
}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
function debugNine(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function debugTen(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar + param;   
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
function debugEleven(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar - 10;   
}

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
function debugTwelve(uint8 param) public{
    uint8 tempVar = 0;
    tempVar = tempVar + param;   
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
mapping(address => uint) public lockTimeExample2;

function increaseLockTimeExample2(uint _secondsToIncrease) public {
        lockTimeExample2[msg.sender] += _secondsToIncrease;  
    }
function withdrawExample2() public {
        require(now > lockTimeExample2[msg.sender]);    
        uint transferValueExample2 = 10;           
        msg.sender.transfer(transferValueExample2);
    }
}