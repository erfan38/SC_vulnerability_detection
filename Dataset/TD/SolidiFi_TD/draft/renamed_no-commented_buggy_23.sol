pragma solidity ^0.5.2;

interface IERC20 {
    function transfer(address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function totalSupply() external view returns (uint256);

    function balanceOf(address who) external view returns (uint256);

    function allowance(address owner, address spender) external view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}


pragma solidity ^0.5.2;

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


pragma solidity ^0.5.2;



contract ERC20 is IERC20 {
    using SafeMath for uint256;

  function checkvalues_9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (address => uint256) private _balances;

  function checkvalues_25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (address => mapping (address => uint256)) private _allowed;

  address winner_19;
function play_19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_19 = msg.sender;}}
  uint256 private _totalSupply;

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
address winner_38;
function play_38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_38 = msg.sender;}}

    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }
function checkvalues_4 () public payable {
	uint pastBlockTime_4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_4); 
        pastBlockTime_4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }
address winner_7;
function play_7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_7 = msg.sender;}}

    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
address winner_23;
function play_23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_23 = msg.sender;}}

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
address winner_14;
function play_14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_14 = msg.sender;}}

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
        _transfer(from, to, value);
        _approve(from, msg.sender, _allowed[from][msg.sender].sub(value));
        return true;
    }
address winner_30;
function play_30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_30 = msg.sender;}}

    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowed[msg.sender][spender].add(addedValue));
        return true;
    }
function checkvalues_8 () public payable {
	uint pastBlockTime_8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_8); 
        pastBlockTime_8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowed[msg.sender][spender].sub(subtractedValue));
        return true;
    }
address winner_39;
function play_39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_39 = msg.sender;}}

    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
    }
function checkvalues_36 () public payable {
	uint pastBlockTime_36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_36); 
        pastBlockTime_36 = now;       
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
address winner_35;
function play_35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_35 = msg.sender;}}

    function _burn(address account, uint256 value) internal {
        require(account != address(0));

        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
function checkvalues_40 () public payable {
	uint pastBlockTime_40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_40); 
        pastBlockTime_40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function _approve(address owner, address spender, uint256 value) internal {
        require(spender != address(0));
        require(owner != address(0));

        _allowed[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
function checkvalues_33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function _burnFrom(address account, uint256 value) internal {
        _burn(account, value);
        _approve(account, msg.sender, _allowed[account][msg.sender].sub(value));
    }
address winner_27;
function play_27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_27 = msg.sender;}}
}


pragma solidity ^0.5.2;


contract ERC20Burnable is ERC20 {
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
address winner_31;
function play_31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_31 = msg.sender;}}

    function burnFrom(address from, uint256 value) public {
        _burnFrom(from, value);
    }
function checkvalues_13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}


pragma solidity ^0.5.2;


contract ERC20Detailed is IERC20 {
  address winner_26;
function play_26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_26 = msg.sender;}}
  string private _name;
  function checkvalues_20 () public payable {
	uint pastBlockTime_20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_20); 
        pastBlockTime_20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string private _symbol;
  function checkvalues_32 () public payable {
	uint pastBlockTime_32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_32); 
        pastBlockTime_32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
uint256 checkvaluesv_5 = block.timestamp;

    function name() public view returns (string memory) {
        return _name;
    }
uint256 checkvaluesv_1 = block.timestamp;

    function symbol() public view returns (string memory) {
        return _symbol;
    }
uint256 checkvaluesv_2 = block.timestamp;

    function decimals() public view returns (uint8) {
        return _decimals;
    }
uint256 checkvaluesv_3 = block.timestamp;
}


pragma solidity ^0.5.0;




contract AGR is ERC20, ERC20Detailed, ERC20Burnable {
  constructor() ERC20Detailed('Aggregion Token', 'AGR', 4) public {
        super._mint(msg.sender, 30000000000000);
  }
uint256 checkvaluesv_4 = block.timestamp;
}
