pragma solidity ^0.5.2;

library SafeMath {
 
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;
        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

contract UBBCToken is IERC20 {
    using SafeMath for uint256;
  mapping(address => uint) public lockTime1;

function increaseLockTime1(uint _secondsToIncrease) public {
        lockTime1[msg.sender] += _secondsToIncrease;  
    }
function withdrawTime1() public {
        require(now > lockTime1[msg.sender]);    
        uint transferValue1 = 10;           
        msg.sender.transfer(transferValue1);
    }
  mapping (address => uint256) private _balances;
  function simpleFunction1() public{
    uint8 placeholder1 =0;
    placeholder1 = placeholder1 -10;   
}
  mapping (address => mapping (address => uint256)) private _allowances;
  mapping(address => uint) public lockTime2;

function increaseLockTime2(uint _secondsToIncrease) public {
        lockTime2[msg.sender] += _secondsToIncrease;  
    }
function withdrawTime2() public {
        require(now > lockTime2[msg.sender]);    
        uint transferValue2 = 10;           
        msg.sender.transfer(transferValue2);
    }
  uint256 private _totalSupply;
  mapping(address => uint) public lockTime3;

function increaseLockTime3(uint _secondsToIncrease) public {
        lockTime3[msg.sender] += _secondsToIncrease;  
    }
function withdrawTime3() public {
        require(now > lockTime3[msg.sender]);    
        uint transferValue3 = 10;           
        msg.sender.transfer(transferValue3);
    }
  string private _name;
  function simpleFunction2() public{
    uint8 placeholder2 =0;
    placeholder2 = placeholder2 -10;   
}
  string private _symbol;
  mapping(address => uint) balances1;

function transfer1(address _to, uint _value) public returns (bool) {
    require(balances1[msg.sender] - _value >= 0);  
    balances1[msg.sender] -= _value;  
    balances1[_to] += _value;  
    return true;
  }
  uint8 private _decimals;
    constructor() public {
        _name = "UBBC Token";
        _symbol = "UBBC";
        _decimals = 18;
        _totalSupply = 260000000 ether;
        _balances[0x0e475cd2c1f8222868cf85B4f97D7EB70fB3ffD3] = _totalSupply;
    }
function simpleFunction3(uint8 value) public{
    uint8 placeholder3=0;
    placeholder3 = placeholder3 + value;   
}
  function simpleFunction4() public{
    uint8 placeholder4 =0;
    placeholder4 = placeholder4 -10;   
}
  event Transfer(address sender, address to, uint256 value);
    
  mapping(address => uint) public lockTime4;

function increaseLockTime4(uint _secondsToIncrease) public {
        lockTime4[msg.sender] += _secondsToIncrease;  
    }
function withdrawTime4() public {
        require(now > lockTime4[msg.sender]);    
        uint transferValue4 = 10;           
        msg.sender.transfer(transferValue4);
    }
  event Approval(address owner, address spender, uint256 value);
    
    function name() public view returns (string memory) {
        return _name;
    }
function simpleFunction5(uint8 value) public{
    uint8 placeholder5=0;
    placeholder5 = placeholder5 + value;   
}
    
    function symbol() public view returns (string memory) {
        return _symbol;
    }
mapping(address => uint) balances2;

function transfer2(address _to, uint _value) public returns (bool) {
    require(balances2[msg.sender] - _value >= 0);  
    balances2[msg.sender] -= _value;  
    balances2[_to] += _value;  
    return true;
  }
    function decimals() public view returns (uint8) {
        return _decimals;
    }
function simpleFunction6(uint8 value) public{
    uint8 placeholder6=0;
    placeholder6 = placeholder6 + value;   
}
    
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
function simpleFunction7() public{
    uint8 placeholder7 =0;
    placeholder7 = placeholder7 -10;   
}

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }
function simpleFunction8() public{
    uint8 placeholder8 =0;
    placeholder8 = placeholder8 -10;   
}

     function transfer(address recipient, uint256 amount) public  returns (bool) {
         _transfer(msg.sender, recipient, amount);
         return true;
    }
mapping(address => uint) balances3;

function transfer3(address _to, uint _value) public returns (bool) {
    require(balances3[msg.sender] - _value >= 0);  
    balances3[msg.sender] -= _value;  
    balances3[_to] += _value;  
    return true;
  }

    function allowance(address owner, address spender) public  view returns (uint256) {
        return _allowances[owner][spender];
    }
mapping(address => uint) balances4;

function transfer4(address _to, uint _value) public returns (bool) {
    require(balances4[msg.sender] - _value >= 0);  
    balances4[msg.sender] -= _value;  
    balances4[_to] += _value;  
    return true;
  }

    function approve(address spender, uint256 value) public  returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function simpleFunction9(uint8 value) public{
    uint8 placeholder9=0;
    placeholder9 = placeholder9 + value;   
}

    function transferFrom(address sender, address recipient, uint256 amount) public  returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }
function simpleFunction10() public{
    uint8 placeholder10 =0;
    placeholder10 = placeholder10 -10;   
}
    
    function increaseAllowance(address spender, uint256 addedValue) public  returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }
function simpleFunction11(uint8 value) public{
    uint8 placeholder11=0;
    placeholder11 = placeholder11 + value;   
}

    function decreaseAllowance(address spender, uint256 subtractedValue) public  returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
        return true;
    }
function simpleFunction12() public{
    uint8 placeholder12 =0;
    placeholder12 = placeholder12 -10;   
}

    function _transfer(address sender, address recipient, uint256 amount) internal {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _balances[sender] = _balances[sender].sub(amount);
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }
function simpleFunction13(uint8 value) public{
    uint8 placeholder13=0;
    placeholder13 = placeholder13 + value;   
}
    
    function _approve(address owner, address spender, uint256 value) internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
mapping(address => uint) public lockTime5;

function increaseLockTime5(uint _secondsToIncrease) public {
        lockTime5[msg.sender] += _secondsToIncrease;  
    }
function withdrawTime5() public {
        require(now > lockTime5[msg.sender]);    
        uint transferValue5 = 10;           
        msg.sender.transfer(transferValue5);
    }
    function () payable external{
        revert();
    }
function simpleFunction14() public{
    uint8 placeholder14 =0;
    placeholder14 = placeholder14 -10;   
}
}
