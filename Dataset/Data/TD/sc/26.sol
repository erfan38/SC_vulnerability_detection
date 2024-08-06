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
  address winnerAddress1;
function initiateGame1(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress1 = msg.sender;}}
  mapping (address => uint256) private _balances;
  function fundTransaction1 () public payable {
	uint previousBlockTime1; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime1); 
        previousBlockTime1 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => mapping (address => uint256)) private _allowances;
  function fundTransaction2 () public payable {
	uint previousBlockTime2; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime2); 
        previousBlockTime2 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 private _totalSupply;
  address winnerAddress2;
function initiateGame2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress2 = msg.sender;}}
  string private _name;
  function fundTransaction3 () public payable {
	uint previousBlockTime3; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime3); 
        previousBlockTime3 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string private _symbol;
  address winnerAddress3;
function initiateGame3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress3 = msg.sender;}}
  uint8 private _decimals;
    constructor() public {
        _name = "UBBC Token";
        _symbol = "UBBC";
        _decimals = 18;
        _totalSupply = 260000000 ether;
        _balances[0x0e475cd2c1f8222868cf85B4f97D7EB70fB3ffD3] = _totalSupply;
    }
address winnerAddress4;
function initiateGame4(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress4 = msg.sender;}}
  uint256 timestampVariable1 = block.timestamp;
  event Transfer(address  sender, address  to, uint256 value);
    
  uint256 timestampVariable2 = block.timestamp;
  event Approval(address  owner, address spender, uint256 value);
    
    function name() public view returns (string memory) {
        return _name;
    }
address winnerAddress5;
function initiateGame5(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress5 = msg.sender;}}
    
    function symbol() public view returns (string memory) {
        return _symbol;
    }
address winnerAddress6;
function initiateGame6(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress6 = msg.sender;}}
    function decimals() public view returns (uint8) {
        return _decimals;
    }
function fundTransaction4 () public payable {
	uint previousBlockTime4; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime4); 
        previousBlockTime4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
address winnerAddress7;
function initiateGame7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress7 = msg.sender;}}

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }
function fundTransaction5 () public payable {
	uint previousBlockTime5; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime5); 
        previousBlockTime5 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

     function transfer(address recipient, uint256 amount) public  returns (bool) {
         _transfer(msg.sender, recipient, amount);
         return true;
    }
address winnerAddress8;
function initiateGame8(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress8 = msg.sender;}}

    function allowance(address owner, address spender) public  view returns (uint256) {
        return _allowances[owner][spender];
    }
function fundTransaction6 () public payable {
	uint previousBlockTime6; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime6); 
        previousBlockTime6 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function approve(address spender, uint256 value) public  returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function checkGameStatus1() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function transferFrom(address sender, address recipient, uint256 amount) public  returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }
address winnerAddress9;
function initiateGame9(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress9 = msg.sender;}}
    
    function increaseAllowance(address spender, uint256 addedValue) public  returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }
address winnerAddress10;
function initiateGame10(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress10 = msg.sender;}}

    function decreaseAllowance(address spender, uint256 subtractedValue) public  returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
        return true;
    }
function checkGameStatus2() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function _transfer(address sender, address recipient, uint256 amount) internal {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _balances[sender] = _balances[sender].sub(amount);
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }
uint256 timestampVariable3 = block.timestamp;
    
    function _approve(address owner, address spender, uint256 value) internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
uint256 timestampVariable4 = block.timestamp;
    function () payable external{
        revert();
    }
uint256 timestampVariable5 = block.timestamp;
}
