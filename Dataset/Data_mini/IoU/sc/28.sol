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

mapping(address => uint) balances_safe22;

function transfer_safe22(address _to, uint _value) public returns (bool) {
    require(balances_safe22[msg.sender] - _value >= 0);  
    balances_safe22[msg.sender] -= _value;  
    balances_safe22[_to] += _value;  
    return true;
  }
  string private _name;
function operation_int12(uint8 p_int12) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int12;   
}
  string private _symbol;
function known_bug11() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}
  uint8 private _decimals;

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }
function known_bug19() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function name() public view returns(string memory) {
    return _name;
  }
mapping(address => uint) balances_safe26;

function transfer_safe26(address _to, uint _value) public returns (bool) {
    require(balances_safe26[msg.sender] - _value >= 0);  
    balances_safe26[msg.sender] -= _value;  
    balances_safe26[_to] += _value;  
    return true;
  }

  function symbol() public view returns(string memory) {
    return _symbol;
  }
function operation_int20(uint8 p_int20) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int20;   
}

  function decimals() public view returns(uint8) {
    return _decimals;
  }
function operation_int32(uint8 p_int32) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int32;   
}
}

contract HYDROGEN is ERC20Detailed {

  using SafeMath for uint256;
mapping(address => uint) public lockTime_safe1;

function increaseLockTime_safe1(uint _secondsToIncrease) public {
        lockTime_safe1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time1() public {
        require(now > lockTime_safe1[msg.sender]);    
        uint transferValue_safe1 = 10;           
        msg.sender.transfer(transferValue_safe1);
    }
  mapping (address => uint256) private _balances;
mapping(address => uint) balances_safe2;

function transfer_safeFlow2(address _to, uint _value) public returns (bool) {
    require(balances_safe2[msg.sender] - _value >= 0);  
    balances_safe2[msg.sender] -= _value;  
    balances_safe2[_to] += _value;  
    return true;
  }
  mapping (address => mapping (address => uint256)) private _allowed;

mapping(address => uint) public lockTime_safe17;

function increaseLockTime_safe17(uint _secondsToIncrease) public {
        lockTime_safe17[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time17() public {
        require(now > lockTime_safe17[msg.sender]);    
        uint transferValue_safe17 = 10;           
        msg.sender.transfer(transferValue_safe17);
    }
  string constant tokenName = "HYDROGEN";
mapping(address => uint) public lockTime_safe37;

function increaseLockTime_safe37(uint _secondsToIncrease) public {
        lockTime_safe37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time37() public {
        require(now > lockTime_safe37[msg.sender]);    
        uint transferValue_safe37 = 10;           
        msg.sender.transfer(transferValue_safe37);
    }
  string constant tokenSymbol = "HGN";
function known_bug3() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}
  uint8  constant tokenDecimals = 4;
mapping(address => uint) public lockTime_safe9;

function increaseLockTime_safe9(uint _secondsToIncrease) public {
        lockTime_safe9[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time9() public {
        require(now > lockTime_safe9[msg.sender]);    
        uint transferValue_safe9 = 10;           
        msg.sender.transfer(transferValue_safe9);
    }
  uint256 _totalSupply =8000000000;
mapping(address => uint) public lockTime_safe25;

function increaseLockTime_safe25(uint _secondsToIncrease) public {
        lockTime_safe25[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time25() public {
        require(now > lockTime_safe25[msg.sender]);    
        uint transferValue_safe25 = 10;           
        msg.sender.transfer(transferValue_safe25);
    }
  uint256 public basePercent = 100;

  constructor() public payable ERC20Detailed(tokenName, tokenSymbol, tokenDecimals) {
    _mint(msg.sender, _totalSupply);
  }
mapping(address => uint) balances_safe38;

function transfer_safe38(address _to, uint _value) public returns (bool) {
    require(balances_safe38[msg.sender] - _value >= 0);  
    balances_safe38[msg.sender] -= _value;  
    balances_safe38[_to] += _value;  
    return true;
  }

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }
function operation_int4(uint8 p_int4) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int4;   
}

  function balanceOf(address owner) public view returns (uint256) {
    return _balances[owner];
  }
function known_bug7() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowed[owner][spender];
  }
function known_bug23() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function findtwoPercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 twoPercent = roundValue.mul(basePercent).div(5000);
    return twoPercent;
  }
mapping(address => uint) balances_safe14;

function transfer_safe14(address _to, uint _value) public returns (bool) {
    require(balances_safe14[msg.sender] - _value >= 0);  
    balances_safe14[msg.sender] -= _value;  
    balances_safe14[_to] += _value;  
    return true;
  }

  function transfer(address to, uint256 value) public returns (bool) {
    require(value <= _balances[msg.sender]);
    require(to != address(0));

    uint256 tokensToBurn = findtwoPercent(value);
    uint256 tokensToTransfer = value.sub(tokensToBurn);

    _balances[msg.sender] = _balances[msg.sender].sub(value);
    _balances[to] = _balances[to].add(tokensToTransfer);

    _totalSupply = _totalSupply.sub(tokensToBurn);

    emit Transfer(msg.sender, to, tokensToTransfer);
    emit Transfer(msg.sender, address(0), tokensToBurn);
    return true;
  }
mapping(address => uint) balances_safe30;

function transfer_safe30(address _to, uint _value) public returns (bool) {
    require(balances_safe30[msg.sender] - _value >= 0);  
    balances_safe30[msg.sender] -= _value;  
    balances_safe30[_to] += _value;  
    return true;
  }

  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
function operation_int8(uint8 p_int8) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int8;   
}

  function approve(address spender, uint256 value) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }
function known_bug39() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function transferFrom(address from, address to, uint256 value) public returns (bool) {
    require(value <= _balances[from]);
    require(value <= _allowed[from][msg.sender]);
    require(to != address(0));

    _balances[from] = _balances[from].sub(value);

    uint256 tokensToBurn = findtwoPercent(value);
    uint256 tokensToTransfer = value.sub(tokensToBurn);

    _balances[to] = _balances[to].add(tokensToTransfer);
    _totalSupply = _totalSupply.sub(tokensToBurn);

    _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);

    emit Transfer(from, to, tokensToTransfer);
    emit Transfer(from, address(0), tokensToBurn);

    return true;
  }
function operation_int36(uint8 p_int36) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int36;   
}

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function known_bug35() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].sub(subtractedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function operation_int40(uint8 p_int40) public{
    uint8 variable1=0;
    variable1 = variable1 + p_int40;   
}

  function _mint(address account, uint256 amount) internal {
    require(amount != 0);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }
mapping(address => uint) public lockTime_safe33;

function increaseLockTime_safe33(uint _secondsToIncrease) public {
        lockTime_safe33[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time33() public {
        require(now > lockTime_safe33[msg.sender]);    
        uint transferValue_safe33 = 10;           
        msg.sender.transfer(transferValue_safe33);
    }

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
function known_bug27() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function _burn(address account, uint256 amount) internal {
    require(amount != 0);
    require(amount <= _balances[account]);
    _totalSupply = _totalSupply.sub(amount);
    _balances[account] = _balances[account].sub(amount);
    emit Transfer(account, address(0), amount);
  }
function known_bug31() public{
    uint8 decrement = 0;
    decrement = decrement - 10;   
}

  function burnFrom(address account, uint256 amount) external {
    require(amount <= _allowed[account][msg.sender]);
    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(amount);
    _burn(account, amount);
  }
mapping(address => uint) public lockTime_safe13;

function increaseLockTime_safe13(uint _secondsToIncrease) public {
        lockTime_safe13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_time13() public {
        require(now > lockTime_safe13[msg.sender]);    
        uint transferValue_safe13 = 10;           
        msg.sender.transfer(transferValue_safe13);
    }
}
