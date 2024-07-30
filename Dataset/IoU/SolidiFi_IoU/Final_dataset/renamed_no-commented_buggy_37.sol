pragma solidity ^0.5.0;



contract SafeMath {
    function safeAdd(uint a, uint b) public pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
function debugFunction1() public{
    uint8 value =0;
    value = value -10;   
}
    function safeSub(uint a, uint b) public pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
mapping(address => uint) public lockTime1;

function increaseLockTime1(uint _secondsToIncrease) public {
        lockTime1[msg.sender] += _secondsToIncrease;  
    }
function withdrawOverflow1() public {
        require(now > lockTime1[msg.sender]);    
        uint transferValue1 = 10;           
        msg.sender.transfer(transferValue1);
    }
    function safeMul(uint a, uint b) public pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
mapping(address => uint) balances2;

function transferUnderflow2(address _to, uint _value) public returns (bool) {
    require(balances2[msg.sender] - _value >= 0);  
    balances2[msg.sender] -= _value;  
    balances2[_to] += _value;  
    return true;
  }
    function safeDiv(uint a, uint b) public pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
mapping(address => uint) public lockTime17;

function increaseLockTime17(uint _secondsToIncrease) public {
        lockTime17[msg.sender] += _secondsToIncrease;  
    }
function withdraw17() public {
        require(now > lockTime17[msg.sender]);    
        uint transferValue17 = 10;           
        msg.sender.transfer(transferValue17);
    }
}


contract ERC20Interface {
    function totalSupply() public view returns (uint);
mapping(address => uint) public lockTime37;

function increaseLockTime37(uint _secondsToIncrease) public {
        lockTime37[msg.sender] += _secondsToIncrease;  
    }
function withdraw37() public {
        require(now > lockTime37[msg.sender]);    
        uint transferValue37 = 10;           
        msg.sender.transfer(transferValue37);
    }
    function balanceOf(address tokenOwner) public view returns (uint balance);
function debugFunction2() public{
    uint8 value =0;
    value = value -10;   
}
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
mapping(address => uint) public lockTime9;

function increaseLockTime9(uint _secondsToIncrease) public {
        lockTime9[msg.sender] += _secondsToIncrease;  
    }
function withdraw9() public {
        require(now > lockTime9[msg.sender]);    
        uint transferValue9 = 10;           
        msg.sender.transfer(transferValue9);
    }
    function transfer(address to, uint tokens) public returns (bool success);
mapping(address => uint) public lockTime25;

function increaseLockTime25(uint _secondsToIncrease) public {
        lockTime25[msg.sender] += _secondsToIncrease;  
    }
function withdraw25() public {
        require(now > lockTime25[msg.sender]);    
        uint transferValue25 = 10;           
        msg.sender.transfer(transferValue25);
    }
    function approve(address spender, uint tokens) public returns (bool success);
function debugFunction3() public{
    uint8 value =0;
    value = value -10;   
}
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
mapping(address => uint) balances26;

function transfer26(address _to, uint _value) public returns (bool) {
    require(balances26[msg.sender] - _value >= 0);  
    balances26[msg.sender] -= _value;  
    balances26[_to] += _value;  
    return true;
  }

  function debugFunction4() public{
    uint8 value =0;
    value = value -10;   
}
  event Transfer(address indexed from, address indexed to, uint tokens);
  function debugFunction5() public{
    uint8 value =0;
    value = value -10;   
}
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
function debugFunction6(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}
}


contract Owned {
  function debugFunction7() public{
    uint8 value =0;
    value = value -10;   
}
  address public owner;
  function debugFunction8(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}
  address public newOwner;

  mapping(address => uint) public lockTime13;

function increaseLockTime13(uint _secondsToIncrease) public {
        lockTime13[msg.sender] += _secondsToIncrease;  
    }
function withdraw13() public {
        require(now > lockTime13[msg.sender]);    
        uint transferValue13 = 10;           
        msg.sender.transfer(transferValue13);
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
function debugFunction9(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balances38;

function transfer38(address _to, uint _value) public returns (bool) {
    require(balances38[msg.sender] - _value >= 0);  
    balances38[msg.sender] -= _value;  
    balances38[_to] += _value;  
    return true;
  }
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
function debugFunction10(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}
}


contract AugustCoin is ERC20Interface, Owned, SafeMath {
  mapping(address => uint) balances34;

function transfer34(address _to, uint _value) public returns (bool) {
    require(balances34[msg.sender] - _value >= 0);  
    balances34[msg.sender] -= _value;  
    balances34[_to] += _value;  
    return true;
  }
  string public symbol;
  mapping(address => uint) public lockTime21;

function increaseLockTime21(uint _secondsToIncrease) public {
        lockTime21[msg.sender] += _secondsToIncrease;  
    }
function withdraw21() public {
        require(now > lockTime21[msg.sender]);    
        uint transferValue21 = 10;           
        msg.sender.transfer(transferValue21);
    }
  string public  name;
  mapping(address => uint) balances10;

function transfer10(address _to, uint _value) public returns (bool) {
    require(balances10[msg.sender] - _value >= 0);  
    balances10[msg.sender] -= _value;  
    balances10[_to] += _value;  
    return true;
  }
  uint8 public decimals;
  mapping(address => uint) balances22;

function transfer22(address _to, uint _value) public returns (bool) {
    require(balances22[msg.sender] - _value >= 0);  
    balances22[msg.sender] -= _value;  
    balances22[_to] += _value;  
    return true;
  }
  uint public _totalSupply;

    mapping(address => uint) balances;
  function debugFunction11(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}
  mapping(address => mapping(address => uint)) allowed;


    constructor() public {
        symbol = "AUC";
        name = "AugustCoin";
        decimals = 18;
        _totalSupply = 100000000000000000000000000;
        balances[0xe4948b8A5609c3c39E49eC1e36679a94F72D62bD] = _totalSupply;
        emit Transfer(address(0), 0xe4948b8A5609c3c39E49eC1e36679a94F72D62bD, _totalSupply);
    }
function debugFunction12(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue -10;   
}


    function totalSupply() public view returns (uint) {
        return _totalSupply - balances[address(0)];
    }
function debugFunction13(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue -10;   
}


    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }
mapping(address => uint) balances14;

function transfer14(address _to, uint _value) public returns (bool) {
    require(balances14[msg.sender] - _value >= 0);  
    balances14[msg.sender] -= _value;  
    balances14[_to] += _value;  
    return true;
  }


    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = safeSub(balances[msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }
mapping(address => uint) balances30;

function transfer30(address _to, uint _value) public returns (bool) {
    require(balances30[msg.sender] - _value >= 0);  
    balances30[msg.sender] -= _value;  
    balances30[_to] += _value;  
    return true;
  }


    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
function debugFunction14(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}


    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = safeSub(balances[from], tokens);
        allowed[from][msg.sender] = safeSub(allowed[from][msg.sender], tokens);
        balances[to] = safeAdd(balances[to], tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
function debugFunction15() public{
    uint8 value =0;
    value = value -10;   
}


    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }
function debugFunction16(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
function debugFunction17() public{
    uint8 value =0;
    value = value -10;   
}


    function () external payable {
        revert();
    }
function debugFunction18(uint8 value) public{
    uint8 addedValue=0;
    addedValue = addedValue + value;   
}


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
mapping(address => uint) public lockTime33;

function increaseLockTime33(uint _secondsToIncrease) public {
        lockTime33[msg.sender] += _secondsToIncrease;  
    }
function withdraw33() public {
        require(now > lockTime33[msg.sender]);    
        uint transferValue33 = 10;           
        msg.sender.transfer(transferValue33);
    }
}


