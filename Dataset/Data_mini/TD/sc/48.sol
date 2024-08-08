pragma solidity ^0.5.11; 



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
function checkTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }							
    function balanceOf(address tokenOwner) public view returns (uint balance);
address winner_time19;
function playTime19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time19 = msg.sender;}}				
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
address winner_time26;
function playTime26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_time26 = msg.sender;}}	
    function transfer(address to, uint tokens) public returns (bool success);
function receivePayment () public payable {
	uint pastBlockTime_payment; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment); 
        pastBlockTime_payment = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function approve(address spender, uint tokens) public returns (bool success);
function receivePayment32 () public payable {
	uint pastBlockTime_payment32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment32); 
        pastBlockTime_payment32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
address winner_time38;
function playTime38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_time38 = msg.sender;}}

  uint256 currentBlockTime2 = block.timestamp;
  event Transfer(address indexed from, address indexed to, uint tokens);
  uint256 currentBlockTime3 = block.timestamp;
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
function receivePayment4 () public payable {
	uint pastBlockTime_payment4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment4); 
        pastBlockTime_payment4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }	
}


contract Owned {
  function receivePayment12 () public payable {
	uint pastBlockTime_payment12; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment12); 
        pastBlockTime_payment12 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  address public owner;
  address winner_time11;
function playTime11(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time11 = msg.sender;}}
  address public newOwner;

  uint256 currentBlockTime4 = block.timestamp;
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {		
        owner = msg.sender;
    }
address winner_time7;
function playTime7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time7 = msg.sender;}}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
uint256 currentBlockTime1 = block.timestamp;

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
address winner_time23;
function playTime23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time23 = msg.sender;}}
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);	
        owner = newOwner;
        newOwner = address(0);
    }
address winner_time14;
function playTime14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_time14 = msg.sender;}}
}


contract QurasToken is ERC20Interface, Owned {		
    using SafeMath for uint;

  function checkTimestamp1() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string public symbol;
  address winner_time2;
function playTime2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_time2 = msg.sender;}}
  string public  name;
  function checkTimestamp17() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint8 public decimals;
  function checkTimestamp37() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint _totalSupply;			

  address winner_time3;
function playTime3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time3 = msg.sender;}}
  mapping(address => uint) balances;
  function checkTimestamp9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping(address => mapping(address => uint)) allowed;


    constructor() public {		
        symbol = "XQC";
        name = "Quras Token";
        decimals = 8;
        _totalSupply = 88888888800000000;
        balances[owner] = _totalSupply;		
        emit Transfer(address(0), owner, _totalSupply);		
    }
address winner_time30;
function playTime30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_time30 = msg.sender;}}


    function totalSupply() public view returns (uint) {		
        return _totalSupply.sub(balances[address(0)]);
    }
function receivePayment8 () public payable {
	uint pastBlockTime_payment8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment8); 
        pastBlockTime_payment8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function balanceOf(address tokenOwner) public view returns (uint balance) {		
        return balances[tokenOwner];
    }
address winner_time39;
function playTime39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time39 = msg.sender;}}


    function transfer(address to, uint tokens) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);		
        return true;
    }
function receivePayment36 () public payable {
	uint pastBlockTime_payment36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment36); 
        pastBlockTime_payment36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
        allowed[msg.sender][_spender] = allowed[msg.sender][_spender].add(_addedValue);
        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        return true;
    }
address winner_time35;
function playTime35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time35 = msg.sender;}}
    
    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
        uint oldValue = allowed[msg.sender][_spender];
        if (_subtractedValue > oldValue) {
            allowed[msg.sender][_spender] = 0;
        } else {
            allowed[msg.sender][_spender] = oldValue.sub(_subtractedValue);
        }
        emit Approval(msg.sender, _spender, allowed[msg.sender][_spender]);
        return true;
    }
function receivePayment40 () public payable {
	uint pastBlockTime_payment40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_payment40); 
        pastBlockTime_payment40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    
    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);		
        return true;
    }
function checkTimestamp33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }


    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balances[from] = balances[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balances[to] = balances[to].add(tokens);
        emit Transfer(from, to, tokens);		
        return true;
    }
address winner_time27;
function playTime27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time27 = msg.sender;}}


    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {		
        return allowed[tokenOwner][spender];
    }
address winner_time31;
function playTime31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_time31 = msg.sender;}}


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);		
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
function checkTimestamp13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
uint256 currentBlockTime5 = block.timestamp;
}
