pragma solidity ^0.5.7;

library SafeMath {

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

}

contract ERC20TokenInterface {

    function balanceOf(address _owner) public view returns (uint256 value);
function processPayment() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function transfer(address _to, uint256 _value) public returns (bool success);
address winnerAddress39;
function playWithAddress39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress39 = msg.sender;}}
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
function receivePayment() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function approve(address _spender, uint256 _value) public returns (bool success);
address winnerAddress35;
function playWithAddress35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress35 = msg.sender;}}
    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
function receiveFunds() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    }

contract ERC20Token is ERC20TokenInterface {
    using SafeMath for uint256;
  function processFunds() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public totalSupply;
  address winnerAddress38;
function playWithAddress38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
  mapping (address => uint256) balances; 
  function makePayment() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => mapping (address => uint256)) allowed; 

    function balanceOf(address _owner) public view returns (uint256 value) {
        return balances[_owner];
    }
function isTimestampValid() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
address winnerAddress27;
function playWithAddress27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress27 = msg.sender;}}

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
        balances[_from] = balances[_from].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(_from, _to, _value);
        return true;
    }
address winnerAddress31;
function playWithAddress31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress31 = msg.sender;}}

    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function checkTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }
uint256 blockTimestamp5 = block.timestamp;

  uint256 blockTimestamp3 = block.timestamp;
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  uint256 blockTimestamp4 = block.timestamp;
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract AsseteGram is ERC20Token {
  address winnerAddress7;
function playWithAddress7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress7 = msg.sender;}}
  string public name = 'Electronic Gram';
  address winnerAddress23;
function playWithAddress23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winnerAddress23 = msg.sender;}}
  uint8 public decimals = 3;
  address winnerAddress14;
function playWithAddress14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
  string public symbol = 'eGram';
  address winnerAddress30;
function playWithAddress30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
  string public version = '2';

    constructor() public {
        address initialOwner = 0xac775cD446889ac167da466692449ece5439fc12;
        totalSupply = 180000000 * (10**uint256(decimals)); 
        balances[initialOwner] = totalSupply;
        emit Transfer(address(0), initialOwner, balances[initialOwner]);
    }
uint256 blockTimestamp1 = block.timestamp;

    function() external {
        revert();
    }
uint256 blockTimestamp2 = block.timestamp;

}
