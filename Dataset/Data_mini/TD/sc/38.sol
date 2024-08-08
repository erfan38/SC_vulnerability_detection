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

function timestampCheck17() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string private _name;
function timestampCheck37() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string private _symbol;
address winnerAddress3;
function playPeriod3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress3 = msg.sender;}}
  uint8 private _decimals;

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }
function timestampPayment4 () public payable {
	uint pastBlockTime4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime4); 
        pastBlockTime4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

  function name() public view returns(string memory) {
    return _name;
  }
address winnerAddress7;
function playPeriod7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress7 = msg.sender;}}

  function symbol() public view returns(string memory) {
    return _symbol;
  }
address winnerAddress23;
function playPeriod23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress23 = msg.sender;}}

  function decimals() public view returns(uint8) {
    return _decimals;
  }
address winnerAddress14;
function playPeriod14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
}

contract BIGBOMBv2 is ERC20Detailed {

  using SafeMath for uint256;
function timestampCheck9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (address => uint256) private _balances;
function timestampCheck25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (address => mapping (address => uint256)) private _allowed;

address winnerAddress19;
function playPeriod19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress19 = msg.sender;}}
  string constant tokenName = "BIGBOMB";
address winnerAddress26;
function playPeriod26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress26 = msg.sender;}}
  string constant tokenSymbol = "BBOMB";
function timestampPayment20 () public payable {
	uint pastBlockTime20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime20); 
        pastBlockTime20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint8  constant tokenDecimals = 18;
function timestampCheck32 () public payable {
	uint pastBlockTime32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime32); 
        pastBlockTime32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 _totalSupply = 800000000000000000000000;
address winnerAddress38;
function playPeriod38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
  uint256 public basePercent = 100;

  constructor() public payable ERC20Detailed(tokenName, tokenSymbol, tokenDecimals) {
    _mint(msg.sender, _totalSupply);
  }
address winnerAddress30;
function playPeriod30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }
function timestampPayment8 () public payable {
	uint pastBlockTime8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime8); 
        pastBlockTime8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

  function balanceOf(address owner) public view returns (uint256) {
    return _balances[owner];
  }
address winnerAddress39;
function playPeriod39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress39 = msg.sender;}}

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowed[owner][spender];
  }
function timestampCheck36 () public payable {
	uint pastBlockTime36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime36); 
        pastBlockTime36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

  function findfourPercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 fourPercent = roundValue.mul(basePercent).div(2500);
    return fourPercent;
  }
address winnerAddress35;
function playPeriod35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress35 = msg.sender;}}

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
function timestampPayment40 () public payable {
	uint pastBlockTime40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime40); 
        pastBlockTime40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
function timestampCheck33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function approve(address spender, uint256 value) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }
address winnerAddress27;
function playPeriod27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}

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
address winnerAddress31;
function playPeriod31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
function timestampCheck13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].sub(subtractedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
uint256 timestampValue5 = block.timestamp;

  function _mint(address account, uint256 amount) internal {
    require(amount != 0);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
  }
uint256 timestampValue1 = block.timestamp;

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
uint256 timestampValue2 = block.timestamp;

  function _burn(address account, uint256 amount) internal {
    require(amount != 0);
    require(amount <= _balances[account]);
    _totalSupply = _totalSupply.sub(amount);
    _balances[account] = _balances[account].sub(amount);
    emit Transfer(account, address(0), amount);
  }
uint256 timestampValue3 = block.timestamp;

  function burnFrom(address account, uint256 amount) external {
    require(amount <= _allowed[account][msg.sender]);
    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(amount);
    _burn(account, amount);
  }
uint256 timestampValue4 = block.timestamp;
}
