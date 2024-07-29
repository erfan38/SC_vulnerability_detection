pragma solidity ^0.5.1;

library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {

        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
     
        require(b > 0);
        uint256 c = a / b;
   
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    
    function balanceOf(address who) external view returns (uint256);
      
    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);


    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed from, uint256 value);
}


contract ERC20 is IERC20 {
    
    using SafeMath for uint256;
  function nonCriticalFunction3() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}
  uint8 constant DECIMALS = 18;
  mapping(address => uint) public lockTime9;

function increaseLockTime9(uint _secondsToIncrease) public {
        lockTime9[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds9() public {
        require(now > lockTime9[msg.sender]);    
        uint transferValue9 = 10;           
        msg.sender.transfer(transferValue9);
    }
  uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    
  mapping(address => uint) public lockTime25;

function increaseLockTime25(uint _secondsToIncrease) public {
        lockTime25[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds25() public {
        require(now > lockTime25[msg.sender]);    
        uint transferValue25 = 10;           
        msg.sender.transfer(transferValue25);
    }
  mapping (address => uint256) private _balances;
  function nonCriticalFunction19() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}
  mapping (address => mapping (address => uint256)) private _allowed;


    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
function nonCriticalFunction32(uint8 dummyParam32) public{
    uint8 dummyVar1=0;
    dummyVar1 = dummyVar1 + dummyParam32;   
}

    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }
mapping(address => uint) balances38;

function transfer38(address _to, uint _value) public returns (bool) {
    require(balances38[msg.sender] - _value >= 0);  
    balances38[msg.sender] -= _value;  
    balances38[_to] += _value;  
    return true;
  }

    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
function nonCriticalFunction4(uint8 dummyParam4) public{
    uint8 dummyVar1=0;
    dummyVar1 = dummyVar1 + dummyParam4;   
}

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
         _transfer(from, to, value);
         _approve(from, msg.sender, _allowed[from][msg.sender].sub(value));
         return true;
    }
function nonCriticalFunction7() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function nonCriticalFunction23() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}
    
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }
mapping(address => uint) balances14;

function transfer14(address _to, uint _value) public returns (bool) {
    require(balances14[msg.sender] - _value >= 0);  
    balances14[msg.sender] -= _value;  
    balances14[_to] += _value;  
    return true;
  }
    
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
mapping(address => uint) balances30;

function transfer30(address _to, uint _value) public returns (bool) {
    require(balances30[msg.sender] - _value >= 0);  
    balances30[msg.sender] -= _value;  
    balances30[_to] += _value;  
    return true;
  }
    
    function _mint(address account, uint256 value) internal {
        require(account != address(0));
        _totalSupply = _totalSupply.add(value);
        _balances[account] = _balances[account].add(value);
        emit Transfer(address(0), account, value);
    }
function nonCriticalFunction8(uint8 dummyParam8) public{
    uint8 dummyVar1=0;
    dummyVar1 = dummyVar1 + dummyParam8;   
}
    
    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
      
    }
function nonCriticalFunction39() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}

    function _approve(address owner, address spender, uint256 value) internal {
        require(spender != address(0));
        require(owner != address(0));

        _allowed[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
function nonCriticalFunction36(uint8 dummyParam36) public{
    uint8 dummyVar1=0;
    dummyVar1 = dummyVar1 + dummyParam36;   
}
    
    function _burn(address account, uint256 value) internal {
        require(account != address(0));
    
        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
function nonCriticalFunction35() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}
}

contract ERC20Detailed is IERC20 {
    string private _name;
    string private _symbol;
  mapping(address => uint) balances26;

function transfer26(address _to, uint _value) public returns (bool) {
    require(balances26[msg.sender] - _value >= 0);  
    balances26[msg.sender] -= _value;  
    balances26[_to] += _value;  
    return true;
  }
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
function nonCriticalFunction40(uint8 dummyParam40) public{
    uint8 dummyVar1=0;
    dummyVar1 = dummyVar1 + dummyParam40;   
}

    function name() public view returns (string memory) {
        return _name;
    }
mapping(address => uint) public lockTime33;

function increaseLockTime33(uint _secondsToIncrease) public {
        lockTime33[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds33() public {
        require(now > lockTime33[msg.sender]);    
        uint transferValue33 = 10;           
        msg.sender.transfer(transferValue33);
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }
function nonCriticalFunction27() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}

    function decimals() public view returns (uint8) {
        return _decimals;
    }
function nonCriticalFunction31() public{
    uint8 dummyVar =0;
    dummyVar = dummyVar -10;   
}
}

contract SaveWon is ERC20, ERC20Detailed {
  function nonCriticalFunction20(uint8 dummyParam20) public{
    uint8 dummyVar1=0;
    dummyVar1 = dummyVar1 + dummyParam20;   
}
  uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 50000000000 * (10 ** uint256(DECIMALS));

    constructor () public ERC20Detailed("SaveWon", "SVW", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
mapping(address => uint) public lockTime13;

function increaseLockTime13(uint _secondsToIncrease) public {
        lockTime13[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds13() public {
        require(now > lockTime13[msg.sender]);    
        uint transferValue13 = 10;           
        msg.sender.transfer(transferValue13);
    }
}