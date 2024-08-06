pragma solidity ^0.5.0;


library SafeMath {
    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
    function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
}

contract ERC20Interface {
    function totalSupply() public view returns (uint);
address winner_address19;
function play_address19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address19 = msg.sender;}}
    function balanceOf(address tokenOwner) public view returns (uint balance);
address winner_address26;
function play_address26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address26 = msg.sender;}}
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
function receivePayment() public payable {
	uint previousBlockTime; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime); 
        previousBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function transfer(address to, uint tokens) public returns (bool success);
function receivePayment2() public payable {
	uint previousBlockTime2; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime2); 
        previousBlockTime2 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function approve(address spender, uint tokens) public returns (bool success);
address winner_address38;
function play_address38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address38 = msg.sender;}}
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function receivePayment3() public payable {
	uint previousBlockTime3; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime3); 
        previousBlockTime3 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

  uint256 currentBlockTime1 = block.timestamp;
  event Transfer(address indexed from, address indexed to, uint tokens);
  uint256 currentBlockTime2 = block.timestamp;
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
address winner_address7;
function play_address7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address7 = msg.sender;}}
}


contract Owned {
  address winner_address11;
function play_address11(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address11 = msg.sender;}}
  address public owner;
  function isTimeValid() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address public newOwner;

  uint256 currentBlockTime3 = block.timestamp;
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
address winner_address23;
function play_address23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address23 = msg.sender;}}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
uint256 currentBlockTime4 = block.timestamp;

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
address winner_address14;
function play_address14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address14 = msg.sender;}}
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
address winner_address30;
function play_address30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address30 = msg.sender;}}
}


contract ForTheBlockchain is ERC20Interface, Owned {
    using SafeMath for uint;

  address winner_address2;
function play_address2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address2 = msg.sender;}}
  string public symbol;
  function isTimeValid2() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint public decimals;
  function isTimeValid3() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string public  name;
  address winner_address3;
function play_address3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address3 = msg.sender;}}
  uint _totalSupply;


  function isTimeValid4() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping(address => uint) balances;
  function isTimeValid5() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping(address => mapping(address => uint)) allowed;


    constructor() public {
        symbol = "FTB";
        name = "ForTheBlockchain";
        decimals = 8;
        _totalSupply =100000000 * 10**(decimals);
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, _totalSupply);
        
    }
function receivePayment8() public payable {
	uint previousBlockTime8; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime8); 
        previousBlockTime8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function totalSupply() public view returns (uint) {
        return _totalSupply.sub(balances[address(0)]);
    }
address winner_address39;
function play_address39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address39 = msg.sender;}}


    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balances[tokenOwner];
    }
function receivePayment36() public payable {
	uint previousBlockTime36; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime36); 
        previousBlockTime36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }
address winner_address35;
function play_address35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address35 = msg.sender;}}


    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
function receivePayment40() public payable {
	uint previousBlockTime40; 
	require(msg.value == 10 ether); 
        require(now != previousBlockTime40); 
        previousBlockTime40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = balances[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
function isTimeValid6() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }


    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }
address winner_address27;
function play_address27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address27 = msg.sender;}}


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
address winner_address31;
function play_address31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address31 = msg.sender;}}


    function () external payable {
        revert();
    }
function isTimeValid7() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
uint256 currentBlockTime5 = block.timestamp;
}