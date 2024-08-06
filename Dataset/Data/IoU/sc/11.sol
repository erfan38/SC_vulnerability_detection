pragma solidity ^0.5.0;


library SafeMath {
    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
    function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
}

contract ERC20Interface {
    function totalSupply() public view returns (uint);
mapping(address => uint) public lockTime_37;

function increaseLockTime_37(uint _secondsToIncrease) public {
        lockTime_37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_37() public {
        require(now > lockTime_37[msg.sender]);    
        uint transferValue_37 = 10;           
        msg.sender.transfer(transferValue_37);
    }
    function balanceOf(address tokenOwner) public view returns (uint balance);
function updates_3() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
mapping(address => uint) public lockTime_9;

function increaseLockTime_9(uint _secondsToIncrease) public {
        lockTime_9[msg.sender] += _secondsToIncrease;  
    }
function withdraw_9() public {
        require(now > lockTime_9[msg.sender]);    
        uint transferValue_9 = 10;           
        msg.sender.transfer(transferValue_9);
    }
    function transfer(address to, uint tokens) public returns (bool success);
mapping(address => uint) public lockTime_25;

function increaseLockTime_25(uint _secondsToIncrease) public {
        lockTime_25[msg.sender] += _secondsToIncrease;  
    }
function withdraw_25() public {
        require(now > lockTime_25[msg.sender]);    
        uint transferValue_25 = 10;           
        msg.sender.transfer(transferValue_25);
    }
    function approve(address spender, uint tokens) public returns (bool success);
function report_19() public{
    uint8 decrementVar19 =0;
    decrementVar19 = decrementVar19 -10;   
}
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
mapping(address => uint) balances_26;

function transfer_26(address _to, uint _value) public returns (bool) {
    require(balances_26[msg.sender] - _value >= 0);  
    balances_26[msg.sender] -= _value;  
    balances_26[_to] += _value;  
    return true;
  }

  function report_27() public{
    uint8 decrementVar27 =0;
    decrementVar27 = decrementVar27 -10;   
}
  event Transfer(address indexed from, address indexed to, uint tokens);
  function updates_31() public{
    uint8 decrementVar31 =0;
    decrementVar31 = decrementVar31 -10;   
}
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
function notify_20(uint8 p_intou20) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou20;   
}
}


contract Owned {
  mapping(address => uint) balances_10;

function transfer_10(address _to, uint _value) public returns (bool) {
    require(balances_10[msg.sender] - _value >= 0);  
    balances_10[msg.sender] -= _value;  
    balances_10[_to] += _value;  
    return true;
  }
  address public owner;
  mapping(address => uint) balances_22;

function transfer_22(address _to, uint _value) public returns (bool) {
    require(balances_22[msg.sender] - _value >= 0);  
    balances_22[msg.sender] -= _value;  
    balances_22[_to] += _value;  
    return true;
  }
  address public newOwner;

  mapping(address => uint) public lockTime_13;

function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
function notify_32(uint8 p_intou32) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou32;   
}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balances_38;

function transfer_38(address _to, uint _value) public returns (bool) {
    require(balances_38[msg.sender] - _value >= 0);  
    balances_38[msg.sender] -= _value;  
    balances_38[_to] += _value;  
    return true;
  }
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
function notify_4(uint8 p_intou4) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou4;   
}
}


contract ForTheBlockchain is ERC20Interface, Owned {
    using SafeMath for uint;

  function notify_12(uint8 p_intou12) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou12;   
}
  string public symbol;
  function updates_11() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}
  uint public decimals;
  mapping(address => uint) public lockTime_1;

function increaseLockTime_1(uint _secondsToIncrease) public {
        lockTime_1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_1() public {
        require(now > lockTime_1[msg.sender]);    
        uint transferValue_1 = 10;           
        msg.sender.transfer(transferValue_1);
    }
  string public  name;
  mapping(address => uint) balances_2;

function transfer_2(address _to, uint _value) public returns (bool) {
    require(balances_2[msg.sender] - _value >= 0);  
    balances_2[msg.sender] -= _value;  
    balances_2[_to] += _value;  
    return true;
  }
  uint _totalSupply;


    mapping(address => uint) balances;
  mapping(address => uint) public lockTime_17;

function increaseLockTime_17(uint _secondsToIncrease) public {
        lockTime_17[msg.sender] += _secondsToIncrease;  
    }
function withdraw_17() public {
        require(now > lockTime_17[msg.sender]);    
        uint transferValue_17 = 10;           
        msg.sender.transfer(transferValue_17);
    }
  mapping(address => mapping(address => uint)) allowed;


    constructor() public {
        symbol = "FTB";
        name = "ForTheBlockchain";
        decimals = 8;
        _totalSupply =100000000 * 10**(decimals);
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, _totalSupply);
        
    }
function updates_7() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}


    function totalSupply() public view returns (uint) {
        return _totalSupply.sub(balances[address(0)]);
    }
function updates_23() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}


    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }
mapping(address => uint) balances_14;

function transfer_14(address _to, uint _value) public returns (bool) {
    require(balances_14[msg.sender] - _value >= 0);  
    balances_14[msg.sender] -= _value;  
    balances_14[_to] += _value;  
    return true;
  }


    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }
mapping(address => uint) balances_30;

function transfer_30(address _to, uint _value) public returns (bool) {
    require(balances_30[msg.sender] - _value >= 0);  
    balances_30[msg.sender] -= _value;  
    balances_30[_to] += _value;  
    return true;
  }


    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
function notify_8(uint8 p_intou8) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou8;   
}


    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = balances[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
function updates_39() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}


    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }
function notify_36(uint8 p_intou36) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou36;   
}


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
function updates_35() public{
    uint8 decrementVar =0;
    decrementVar = decrementVar -10;   
}


    function () external payable {
        revert();
    }
function notify_40(uint8 p_intou40) public{
    uint8 incrementVar1=0;
    incrementVar1 = incrementVar1 + p_intou40;   
}


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
mapping(address => uint) public lockTime_33;

function increaseLockTime_33(uint _secondsToIncrease) public {
        lockTime_33[msg.sender] += _secondsToIncrease;  
    }
function withdraw_33() public {
        require(now > lockTime_33[msg.sender]);    
        uint transferValue_33 = 10;           
        msg.sender.transfer(transferValue_33);
    }
}