pragma solidity >=0.4.22 <0.6.0;

library SafeMath {

  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    if (a == 0) {
        return 0;
    }
    c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    return a / b;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    c = a + b;
    assert(c >= a);
    return c;
  }
}


contract Ownable {
  function isTimeValid() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address public owner;

    constructor() public {
        owner = msg.sender;
    }
address winnerAddress2;
function playWinner2(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress2 = msg.sender;}}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
uint256 lastValidTime = block.timestamp;
}

contract TokenERC20 is Ownable {
    using SafeMath for uint256;

  function isTimeValidAgain() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string public name;
  address winnerAddress3;
function playWinner3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress3 = msg.sender;}}
  string public symbol;
  address winnerAddress4;
function playWinner4(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress4 = msg.sender;}}
  uint8 public decimals;

  function depositFunds() public payable {
	uint previousTransferTime; 
	require(msg.value == 10 ether); 
        require(now != previousTransferTime); 
        previousTransferTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 private _totalSupply;
  function withdrawFunds() public payable {
	uint previousTransferTime; 
	require(msg.value == 10 ether); 
        require(now != previousTransferTime); 
        previousTransferTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public cap;

  address winnerAddress5;
function playWinner5(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress5 = msg.sender;}}
  mapping (address => uint256) private _balances;
  function checkFunds() public payable {
    uint previousTransferTime;
    require(msg.value == 10 ether);
      require(now != previousTransferTime);
      previousTransferTime = now;
      if(now % 15 == 0){
        msg.sender.transfer(address(this).balance);
      }
  }
  mapping (address => mapping (address => uint256)) private _allowed;

  uint256 contractCreationTime = block.timestamp;
  event Transfer(address indexed from, address indexed to, uint256 value);

  uint256 anotherContractCreationTime = block.timestamp;
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  uint256 anotherCreationTime = block.timestamp;
  event Mint(address indexed to, uint256 amount);

    modifier onlyPayloadSize(uint size) {
        require(msg.data.length >= size + 4);
        _;
    }
uint256 yetAnotherCreationTime = block.timestamp;

    constructor(
        uint256 _cap,
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) public {
        require(_cap >= _initialSupply);

        cap = _cap;
        name = _name;                                       
        symbol = _symbol;                                   
        decimals = _decimals;                               

        _totalSupply = _initialSupply;                      
        _balances[owner] = _totalSupply;                    
        emit Transfer(address(0), owner, _totalSupply);
    }
address winnerAddress6;
function playWinner6(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress6 = msg.sender;}}

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
address winnerAddress7;
function playWinner7(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress7 = msg.sender;}}

    function balanceOf(address _owner) public view returns (uint256) {
        return _balances[_owner];
    }
address winnerAddress8;
function playWinner8(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress8 = msg.sender;}}

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return _allowed[_owner][_spender];
    }
function withdrawFunds2() public payable {
	uint previousTransferTime; 
	require(msg.value == 10 ether); 
        require(now != previousTransferTime); 
        previousTransferTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) public returns (bool) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
address winnerAddress9;
function playWinner9(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress9 = msg.sender;}}

    function approve(address _spender, uint256 _value) public returns (bool) {
        _approve(msg.sender, _spender, _value);
        return true;
    }
function withdrawFunds3() public payable {
	uint previousTransferTime; 
	require(msg.value == 10 ether); 
        require(now != previousTransferTime); 
        previousTransferTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) onlyPayloadSize(3 * 32) public returns (bool) {
        _transfer(_from, _to, _value);
        _approve(_from, msg.sender, _allowed[_from][msg.sender].sub(_value));
        return true;
    }
address winnerAddress10;
function playWinner10(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress10 = msg.sender;}}

    function _transfer(address _from, address _to, uint256 _value) internal {
        require(_to != address(0), "ERC20: transfer to the zero address");

        _balances[_from] = _balances[_from].sub(_value);
        _balances[_to] = _balances[_to].add(_value);
        emit Transfer(_from, _to, _value);
    }
function withdrawFunds4() public payable {
	uint previousTransferTime; 
	require(msg.value == 10 ether); 
        require(now != previousTransferTime); 
        previousTransferTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function _approve(address _owner, address _spender, uint256 _value) internal {
        require(_owner != address(0), "ERC20: approve from the zero address");
        require(_spender != address(0), "ERC20: approve to the zero address");

        _allowed[_owner][_spender] = _value;
        emit Approval(_owner, _spender, _value);
    }
function validateTime() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function mint(address _to, uint256 _amount) onlyOwner public returns (bool) {
        require(_totalSupply.add(_amount) <= cap);

        _totalSupply = _totalSupply.add(_amount);
        _balances[_to] = _balances[_to].add(_amount);
        emit Mint(_to, _amount);
        emit Transfer(address(0), _to, _amount);
        return true;
    }
address winnerAddress11;
function playWinner11(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress11 = msg.sender;}}

    function transferBatch(address[] memory _tos, uint256[] memory _values) public returns (bool) {
        require(_tos.length == _values.length);

        for (uint256 i = 0; i < _tos.length; i++) {
            transfer(_tos[i], _values[i]);
        }
        return true;
    }
address winnerAddress12;
function playWinner12(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress12 = msg.sender;}
}

contract XLToken is TokenERC20 {
    constructor() TokenERC20(18*10**16, 12*10**16, "XL Token", "XL", 8) public {}
function bug_tmstmp13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}