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
  function payableFunction1 () public payable {
	uint previousBlockTime1; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime1); 
        previousBlockTime1 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint8 constant DECIMALS = 18;
  function payableFunction2 () public payable {
	uint previousBlockTime2; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime2); 
        previousBlockTime2 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    
  address winner1;
function playFunction1(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner1 = msg.sender;}}
  mapping (address => uint256) private _balances;
  function payableFunction3 () public payable {
	uint previousBlockTime3; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime3); 
        previousBlockTime3 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => mapping (address => uint256)) private _allowed;


    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
address winner2;
function playFunction2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner2 = msg.sender;}}

    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }
address winner3;
function playFunction3(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner3 = msg.sender;}}

    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
function payableFunction4 () public payable {
	uint previousBlockTime4; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime4); 
        previousBlockTime4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
         _transfer(from, to, value);
         _approve(from, msg.sender, _allowed[from][msg.sender].sub(value));
         return true;
    }
address winner4;
function playFunction4(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner4 = msg.sender;}}

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function payableFunction5 () public payable {
	uint previousBlockTime5; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime5); 
        previousBlockTime5 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }
address winner5;
function playFunction5(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner5 = msg.sender;}}
    
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
function payableFunction6 () public payable {
	uint previousBlockTime6; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime6); 
        previousBlockTime6 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function _mint(address account, uint256 value) internal {
        require(account != address(0));
        _totalSupply = _totalSupply.add(value);
        _balances[account] = _balances[account].add(value);
        emit Transfer(address(0), account, value);
    }
function viewFunction1() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
      
    }
address winner6;
function playFunction6(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner6 = msg.sender;}}

    function _approve(address owner, address spender, uint256 value) internal {
        require(spender != address(0));
        require(owner != address(0));

        _allowed[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
address winner7;
function playFunction7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner7 = msg.sender;}}
    
    function _burn(address account, uint256 value) internal {
        require(account != address(0));
    
        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
function viewFunction2() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}

contract ERC20Detailed is IERC20 {
    string private _name;
    string private _symbol;
  address winner8;
function playFunction8(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner8 = msg.sender;}}
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
uint256 previousBlockTime7 = block.timestamp;

    function name() public view returns (string memory) {
        return _name;
    }
uint256 previousBlockTime8 = block.timestamp;

    function symbol() public view returns (string memory) {
        return _symbol;
    }
uint256 previousBlockTime9 = block.timestamp;

    function decimals() public view returns (uint8) {
        return _decimals;
    }
uint256 previousBlockTime10 = block.timestamp;
}

contract SaveWon is ERC20, ERC20Detailed {
  address winner9;
function playFunction9(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner9 = msg.sender;}}
  uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 50000000000 * (10 ** uint256(DECIMALS));

    constructor () public ERC20Detailed("SaveWon", "SVW", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
uint256 previousBlockTime11 = block.timestamp;
}