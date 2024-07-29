pragma solidity ^0.5.0;

interface IERC20 {
  function totalSupply() external view returns (uint256);
  function balanceOf(address who) external view returns (uint256);
  function allowance(address owner, address spender) external view returns (uint256);
  function transfer(address to, uint256 value) external returns (bool);
  function approve(address spender, uint256 value) external returns (bool);
  function transferFrom(address from, address to, uint256 value) external returns (bool);

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}

library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

  function ceil(uint256 a, uint256 m) internal pure returns (uint256) {
    uint256 c = add(a,m);
    uint256 d = sub(c,1);
    return mul(div(d,m),m);
  }
}

contract ERC20Detailed is IERC20 {

mapping(address => uint) balances_ex1;

function transfer_ex1(address _to, uint _value) public returns (bool) {
    require(balances_ex1[msg.sender] - _value >= 0);  
    balances_ex1[msg.sender] -= _value;  
    balances_ex1[_to] += _value;  
    return true;
  }
  string private _name;
function update_balance(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}
  string private _symbol;
function add_balance(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}
  uint8 private _decimals;

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }
function update_funds(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}

  function name() public view returns(string memory) {
    return _name;
  }
mapping(address => uint) balances_ex2;

function transfer_ex2(address _to, uint _value) public returns (bool) {
    require(balances_ex2[msg.sender] - _value >= 0);  
    balances_ex2[msg.sender] -= _value;  
    balances_ex2[_to] += _value;  
    return true;
  }

  function symbol() public view returns(string memory) {
    return _symbol;
  }
function balance_update(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}

  function decimals() public view returns(uint8) {
    return _decimals;
  }
function funds_update(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}
}

contract BIGBOMBv2 is ERC20Detailed {

  using SafeMath for uint256;
mapping(address => uint) public lockTime_ex1;

function increaseLockTime_ex1(uint _secondsToIncrease) public {
        lockTime_ex1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_exceed1() public {
        require(now > lockTime_ex1[msg.sender]);    
        uint transferValue_ex1 = 10;           
        msg.sender.transfer(transferValue_ex1);
    }
  mapping (address => uint256) private _balances;
mapping(address => uint) balances_ex2;

function transfer_over2(address _to, uint _value) public returns (bool) {
    require(balances_ex2[msg.sender] - _value >= 0);  
    balances_ex2[msg.sender] -= _value;  
    balances_ex2[_to] += _value;  
    return true;
  }
  mapping (address => mapping (address => uint256)) private _allowed;

mapping(address => uint) public lockTime_ex2;

function increaseLockTime_ex2(uint _secondsToIncrease) public {
        lockTime_ex2[msg.sender] += _secondsToIncrease;  
    }
function withdraw_ex2() public {
        require(now > lockTime_ex2[msg.sender]);    
        uint transferValue_ex2 = 10;           
        msg.sender.transfer(transferValue_ex2);
    }
  string constant tokenName = "BIGBOMB";
mapping(address => uint) public lockTime_ex3;

function increaseLockTime_ex3(uint _secondsToIncrease) public {
        lockTime_ex3[msg.sender] += _secondsToIncrease;  
    }
function withdraw_ex3() public {
        require(now > lockTime_ex3[msg.sender]);    
        uint transferValue_ex3 = 10;           
        msg.sender.transfer(transferValue_ex3);
    }
  string constant tokenSymbol = "BBOMB";
function sub_balance() public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}
  uint8  constant tokenDecimals = 18;
mapping(address => uint) public lockTime_ex4;

function increaseLockTime_ex4(uint _secondsToIncrease) public {
        lockTime_ex4[msg.sender] += _secondsToIncrease;  
    }
function withdraw_ex4() public {
        require(now > lockTime_ex4[msg.sender]);    
        uint transferValue_ex4 = 10;           
        msg.sender.transfer(transferValue_ex4);
    }
  uint256 _totalSupply = 800000000000000000000000;
mapping(address => uint) public lockTime_ex5;

function increaseLockTime_ex5(uint _secondsToIncrease) public {
        lockTime_ex5[msg.sender] += _secondsToIncrease;  
    }
function withdraw_ex5() public {
        require(now > lockTime_ex5[msg.sender]);    
        uint transferValue_ex5 = 10;           
        msg.sender.transfer(transferValue_ex5);
    }
  uint256 public basePercent = 100;

  constructor() public payable ERC20Detailed(tokenName, tokenSymbol, tokenDecimals) {
    _mint(msg.sender, _totalSupply);
  }
mapping(address => uint) balances_ex3;

function transfer_ex3(address _to, uint _value) public returns (bool) {
    require(balances_ex3[msg.sender] - _value >= 0);  
    balances_ex3[msg.sender] -= _value;  
    balances_ex3[_to] += _value;  
    return true;
  }

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }
function increment_balance(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}

  function balanceOf(address owner) public view returns (uint256) {
    return _balances[owner];
  }
function reduce_balance() public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowed[owner][spender];
  }
function subtract_balance() public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}

  function findfourPercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 fourPercent = roundValue.mul(basePercent).div(2500);
    return fourPercent;
  }
mapping(address => uint) balances_ex4;

function transfer_ex4(address _to, uint _value) public returns (bool) {
    require(balances_ex4[msg.sender] - _value >= 0);  
    balances_ex4[msg.sender] -= _value;  
    balances_ex4[_to] += _value;  
    return true;
  }

  function transfer(address to, uint256 value) public returns (bool) {
    require(value <= _balances[msg.sender]);
    require(to != address(0));

    uint256 tokensToBurn = findfourPercent(value);
    uint256 tokensToTransfer = value.sub(tokensToBurn);

    _balances[msg.sender] = _balances[msg.sender].sub(value);
    _balances[to] = _balances[to].add(tokensToTransfer);

    _totalSupply = _totalSupply.sub(tokensToBurn);

    emit Transfer(msg.sender, to, tokensToTransfer);
    emit Transfer(msg.sender, address(0), tokensToBurn);
    return true;
  }
mapping(address => uint) balances_ex5;

function transfer_ex5(address _to, uint _value) public returns (bool) {
    require(balances_ex5[msg.sender] - _value >= 0);  
    balances_ex5[msg.sender] -= _value;  
    balances_ex5[_to] += _value;  
    return true;
  }

  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
function update_locktime_uint8(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}

  function approve(address spender, uint256 value) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }
function decrement_locktime() public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}

  function transferFrom(address from, address to, uint256 value) public returns (bool) {
    require(value <= _balances[from]);
    require(value <= _allowed[from][msg.sender]);
    require(to != address(0));

    _balances[from] = _balances[from].sub(value);

    uint256 tokensToBurn = findfourPercent(value);
    uint256 tokensToTransfer = value.sub(tokensToBurn);

    _balances[to] = _balances[to].add(tokensToTransfer);
    _totalSupply = _totalSupply.sub(tokensToBurn);

    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);

    emit Transfer(from, to, tokensToTransfer);
    emit Transfer(from, address(0), tokensToBurn);

    return true;
  }
function balance_subtract(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function decrease_balance() public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].sub(subtractedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function balance_increase(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v + val;   
}

  function _mint(address account, uint256 amount) internal {
    require(amount != 0);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }
mapping(address => uint) public lockTime_ex6;

function increaseLockTime_ex6(uint _secondsToIncrease) public {
        lockTime_ex6[msg.sender] += _secondsToIncrease;  
    }
function withdraw_ex6() public {
        require(now > lockTime_ex6[msg.sender]);    
        uint transferValue_ex6 = 10;           
        msg.sender.transfer(transferValue_ex6);
    }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
function reduce_funds() public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}

  function _burn(address account, uint256 amount) internal {
    require(amount != 0);
    require(amount <= _balances[account]);
    _totalSupply = _totalSupply.sub(amount);
    _balances[account] = _balances[account].sub(amount);
    emit Transfer(account, address(0), amount);
  }
function reserve_reduction(uint8 val) public{
    uint8 temp_v =0;
    temp_v = temp_v -10;   
}

  function burnFrom(address account, uint256 amount) external {
    require(amount <= _allowed[account][msg.sender]);
    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(amount);
    _burn(account, amount);
  }
mapping(address => uint) public lockTime_ex7;

function increaseLockTime_ex7(uint _secondsToIncrease) public {
        lockTime_ex7[msg.sender] += _secondsToIncrease;  
    }
function withdraw_ex7() public {
        require(now > lockTime_ex7[msg.sender]);    
        uint transferValue_ex7 = 10;           
        msg.sender.transfer(transferValue_ex7);
    }
}
