pragma solidity ^0.5.11; 



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
mapping(address => uint) public lockTimeMapping17;

function increaseLockTimeMapping17(uint _secondsToIncrease) public {
        lockTimeMapping17[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping17() public {
        require(now > lockTimeMapping17[msg.sender]);    
        uint transferValueMapping17 = 10;           
        msg.sender.transfer(transferValueMapping17);
    }							
    function balanceOf(address tokenOwner) public view returns (uint balance);
mapping(address => uint) public lockTimeMapping37;

function increaseLockTimeMapping37(uint _secondsToIncrease) public {
        lockTimeMapping37[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping37() public {
        require(now > lockTimeMapping37[msg.sender]);    
        uint transferValueMapping37 = 10;           
        msg.sender.transfer(transferValueMapping37);
    }				
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
function sampleFunction3() public{
    uint8 localVariable =0;
    localVariable = localVariable -10;   
}	
    function transfer(address to, uint tokens) public returns (bool success);
mapping(address => uint) public lockTimeMapping9;

function increaseLockTimeMapping9(uint _secondsToIncrease) public {
        lockTimeMapping9[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping9() public {
        require(now > lockTimeMapping9[msg.sender]);    
        uint transferValueMapping9 = 10;           
        msg.sender.transfer(transferValueMapping9);
    }
    function approve(address spender, uint tokens) public returns (bool success);
mapping(address => uint) public lockTimeMapping25;

function increaseLockTimeMapping25(uint _secondsToIncrease) public {
        lockTimeMapping25[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping25() public {
        require(now > lockTimeMapping25[msg.sender]);    
        uint transferValueMapping25 = 10;           
        msg.sender.transfer(transferValueMapping25);
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function sampleFunction19() public{
    uint8 localVariable =0;
    localVariable = localVariable -10;   
}

  function sampleFunction27() public{
    uint8 localVariable =0;
    localVariable = localVariable -10;   
}
  event Transfer(address indexed from, address indexed to, uint tokens);
  function sampleFunction31() public{
    uint8 localVariable =0;
    localVariable = localVariable -10;   
}
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
mapping(address => uint) balancesMapping26;

function transferMapping26(address _to, uint _value) public returns (bool) {
    require(balancesMapping26[msg.sender] - _value >= 0);  
    balancesMapping26[msg.sender] -= _value;  
    balancesMapping26[_to] += _value;  
    return true;
  }	
}


contract Owned {
  mapping(address => uint) public lockTimeMapping21;

function increaseLockTimeMapping21(uint _secondsToIncrease) public {
        lockTimeMapping21[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping21() public {
        require(now > lockTimeMapping21[msg.sender]);    
        uint transferValueMapping21 = 10;           
        msg.sender.transfer(transferValueMapping21);
    }
  address public owner;
  mapping(address => uint) balancesMapping10;

function transferMapping10(address _to, uint _value) public returns (bool) {
    require(balancesMapping10[msg.sender] - _value >= 0);  
    balancesMapping10[msg.sender] -= _value;  
    balancesMapping10[_to] += _value;  
    return true;
  }
  address public newOwner;

  mapping(address => uint) public lockTimeMapping13;

function increaseLockTimeMapping13(uint _secondsToIncrease) public {
        lockTimeMapping13[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping13() public {
        require(now > lockTimeMapping13[msg.sender]);    
        uint transferValueMapping13 = 10;           
        msg.sender.transfer(transferValueMapping13);
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {		
        owner = msg.sender;
    }
function sampleFunction20(uint8 p_sample20) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample20;   
}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
function sampleFunction32(uint8 p_sample32) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample32;   
}
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);	
        owner = newOwner;
        newOwner = address(0);
    }
mapping(address => uint) balancesMapping38;

function transferMapping38(address _to, uint _value) public returns (bool) {
    require(balancesMapping38[msg.sender] - _value >= 0);  
    balancesMapping38[msg.sender] -= _value;  
    balancesMapping38[_to] += _value;  
    return true;
  }
}


contract QurasToken is ERC20Interface, Owned {		
    using SafeMath for uint;

  mapping(address => uint) balancesMapping22;

function transferMapping22(address _to, uint _value) public returns (bool) {
    require(balancesMapping22[msg.sender] - _value >= 0);  
    balancesMapping22[msg.sender] -= _value;  
    balancesMapping22[_to] += _value;  
    return true;
  }
  string public symbol;
  function sampleFunction12(uint8 p_sample12) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample12;   
}
  string public  name;
  function sampleFunction11() public{
    uint8 localVariable=0;
    localVariable = localVariable -10;   
}
  uint8 public decimals;
  mapping(address => uint) public lockTimeMapping1;

function increaseLockTimeMapping1(uint _secondsToIncrease) public {
        lockTimeMapping1[msg.sender] += _secondsToIncrease;  
    }
function withdrawOverflow1() public {
        require(now > lockTimeMapping1[msg.sender]);    
        uint transferValueMapping1 = 10;           
        msg.sender.transfer(transferValueMapping1);
    }
  uint _totalSupply;			

    mapping(address => uint) balances;
  mapping(address => uint) balancesMapping2;

function transferUnderflow2(address _to, uint _value) public returns (bool) {
    require(balancesMapping2[msg.sender] - _value >= 0);  
    balancesMapping2[msg.sender] -= _value;  
    balancesMapping2[_to] += _value;  
    return true;
  }
  mapping(address => mapping(address => uint)) allowed;


    constructor() public {		
        symbol = "XQC";
        name = "Quras Token";
        decimals = 8;
        _totalSupply = 88888888800000000;
        balances[owner] = _totalSupply;		
        emit Transfer(address(0), owner, _totalSupply);		
    }
function sampleFunction4(uint8 p_sample4) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample4;   
}


    function totalSupply() public view returns (uint) {		
        return _totalSupply.sub(balances[address(0)]);
    }
function sampleFunction7() public{
    uint8 localVariable=0;
    localVariable = localVariable -10;   
}


    function balanceOf(address tokenOwner) public view returns (uint balance) {		
        return balances[tokenOwner];
    }
function sampleFunction23() public{
    uint8 localVariable=0;
    localVariable = localVariable -10;   
}


    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);		
        return true;
    }
mapping(address => uint) balancesMapping14;

function transferMapping14(address _to, uint _value) public returns (bool) {
    require(balancesMapping14[msg.sender] - _value >= 0);  
    balancesMapping14[msg.sender] -= _value;  
    balancesMapping14[_to] += _value;  
    return true;
  }


    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        return true;
    }
mapping(address => uint) balancesMapping30;

function transferMapping30(address _to, uint _value) public returns (bool) {
    require(balancesMapping30[msg.sender] - _value >= 0);  
    balancesMapping30[msg.sender] -= _value;  
    balancesMapping30[_to] += _value;  
    return true;
  }
    
    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
        uint oldValue = allowed[msg.sender][_spender];
        if (_subtractedValue > oldValue) {
            allowed[msg.sender][_spender] = 0;
        } else {
            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
        }
        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        return true;
    }
function sampleFunction8(uint8 p_sample8) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample8;   
}
    
    
    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);		
        return true;
    }
function sampleFunction39() public{
    uint8 localVariable=0;
    localVariable = localVariable -10;   
}


    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = balances[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(from, to, tokens);		
        return true;
    }
function sampleFunction36(uint8 p_sample36) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample36;   
}


    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {		
        return allowed[tokenOwner][spender];
    }
function sampleFunction35() public{
    uint8 localVariable=0;
    localVariable = localVariable -10;   
}


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);		
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
function sampleFunction40(uint8 p_sample40) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_sample40;   
}


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
mapping(address => uint) public lockTimeMapping33;

function increaseLockTimeMapping33(uint _secondsToIncrease) public {
        lockTimeMapping33[msg.sender] += _secondsToIncrease;  
    }
function withdrawMapping33() public {
        require(now > lockTimeMapping33[msg.sender]);    
        uint transferValueMapping33 = 10;           
        msg.sender.transfer(transferValueMapping33);
    }
}
