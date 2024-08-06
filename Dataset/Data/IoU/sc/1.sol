pragma solidity >=0.4.22 <0.6.0;
contract EIP20Interface {
    uint256 public totalSupply;

    function balanceOf(address _owner) public view returns (uint256 balance);
    function testFunction1() public {
        uint8 value = 0;
        value = value - 10;
    }

    function transfer(address _to, uint256 _value) public returns (bool success);
    function testFunction2() public {
        uint8 value = 0;
        value = value - 10;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
    mapping(address => uint) balances_test1;

    function transfer_test1(address _to, uint _value) public returns (bool) {
        require(balances_test1[msg.sender] - _value >= 0);  
        balances_test1[msg.sender] -= _value;  
        balances_test1[_to] += _value;  
        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success);
    mapping(address => uint) balances_test2;

    function transfer_test2(address _to, uint _value) public returns (bool) {
        require(balances_test2[msg.sender] - _value >= 0);  
        balances_test2[msg.sender] -= _value;  
        balances_test2[_to] += _value;  
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
    function testFunction3(uint8 param) public {
        uint8 value = 0;
        value = value + param;
    }

    function testFunction4() public {
        uint8 value = 0;
        value = value - 10;
    }
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    mapping(address => uint) public lockTime_test1;

    function increaseLockTime_test1(uint _secondsToIncrease) public {
            lockTime_test1[msg.sender] += _secondsToIncrease;  
    }
    function withdraw_test1() public {
            require(now > lockTime_test1[msg.sender]);    
            uint transferValue_test1 = 10;           
            msg.sender.transfer(transferValue_test1);
    }
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract HotDollarsToken is EIP20Interface {
    uint256 constant private MAX_UINT256 = 2**256 - 1;
    mapping(address => uint) balances_test3;

    function transfer_test3(address _to, uint _value) public returns (bool) {
        require(balances_test3[msg.sender] - _value >= 0);  
        balances_test3[msg.sender] -= _value;  
        balances_test3[_to] += _value;  
        return true;
    }
  mapping (address => uint256) public balances;
    function testFunction5(uint8 param) public {
        uint8 value = 0;
        value = value + param;
    }
  mapping (address => mapping (address => uint256)) public allowed;
    function testFunction6(uint8 param) public {
        uint8 value = 0;
        value = value + param;
    }
  string public name;                   
    mapping(address => uint) balances_test4;

    function transfer_test4(address _to, uint _value) public returns (bool) {
        require(balances_test4[msg.sender] - _value >= 0);  
        balances_test4[msg.sender] -= _value;  
        balances_test4[_to] += _value;  
        return true;
    }
  uint8 public decimals;                
    function testFunction7(uint8 param) public {
        uint8 value = 0;
        value = value + param;
    }
  string public symbol;                 

    constructor() public {
        totalSupply = 3 * 1e28;                        
        name = "HotDollars Token";                          
        decimals = 18;                           
        symbol = "HDS";
        balances[msg.sender] = totalSupply; 
    }
    function testFunction8() public {
        uint8 value = 0;
        value = value - 10;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balances[msg.sender] >= _value);
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value); 
        return true;
    }
    function testFunction9(uint8 param) public {
        uint8 value = 0;
        value = value + param;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        uint256 allowance = allowed[_from][msg.sender];
        require(balances[_from] >= _value && allowance >= _value);
        balances[_to] += _value;
        balances[_from] -= _value;
        if (allowance < MAX_UINT256) {
            allowed[_from][msg.sender] -= _value;
        }
        emit Transfer(_from, _to, _value); 
        return true;
    }
    function testFunction10() public {
        uint8 value = 0;
        value = value - 10;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }
    function testFunction11(uint8 param) public {
        uint8 value = 0;
        value = value + param;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value); 
        return true;
    }
    mapping(address => uint) public lockTime_test2;

    function increaseLockTime_test2(uint _secondsToIncrease) public {
            lockTime_test2[msg.sender] += _secondsToIncrease;  
    }
    function withdraw_test2() public {
            require(now > lockTime_test2[msg.sender]);    
            uint transferValue_test2 = 10;           
            msg.sender.transfer(transferValue_test2);
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }
    function testFunction12() public {
        uint8 value = 0;
        value = value - 10;
    }
}