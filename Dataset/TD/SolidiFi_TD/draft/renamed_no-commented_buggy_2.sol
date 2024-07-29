pragma solidity ^0.5.1;

contract CareerOnToken {
  uint256 blockTimestamp1 = block.timestamp;
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  uint256 blockTimestamp2 = block.timestamp;
  event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
  uint256 blockTimestamp3 = block.timestamp;
  event OwnerChang(address indexed _old,address indexed _new,uint256 _coin_change);
    
  address winnerAddress38;
function playAddress38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
  uint256 public totalSupply;  
  function receiveEther() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string public name;                   
  address winnerAddress7;
function playAddress7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress7 = msg.sender;}}
  uint8 public decimals;               
  address winnerAddress23;
function playAddress23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress23 = msg.sender;}}
  string public symbol;               
  address winnerAddress14;
function playAddress14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
  address public owner;
  address winnerAddress30;
function playAddress30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
  mapping (address => uint256) public balances;
  function receiveEtherForBurn() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => mapping (address => uint256)) public allowed;
    
  address winnerAddress39;
function playAddress39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress39 = msg.sender;}}
  bool isTransPaused = false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public 
    {
        owner = msg.sender;
		if(_initialAmount <= 0){
		    totalSupply = 100000000000000000;   
		    balances[owner] = totalSupply;
		} else {
		    totalSupply = _initialAmount;   
		    balances[owner] = _initialAmount;
		}
		if(_decimalUnits <= 0){
		    decimals = 2;
		} else {
		    decimals = _decimalUnits;
		}
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
function receiveEtherForBurn2() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    
    function transfer(
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to != address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to]
        );
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
		if(msg.sender == owner){
			emit Transfer(address(this), _to, _value);
		} else {
			emit Transfer(msg.sender, _to, _value);
		}
        return true;
    }
address winnerAddress35;
function playAddress35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress35 = msg.sender;}}


    function transferFrom(
        address _from, 
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to != address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to] &&
                allowed[_from][msg.sender] >= _value
        );
        
        balances[_to] += _value;
        balances[_from] -= _value; 
        allowed[_from][msg.sender] -= _value;
        if(_from == owner){
			emit Transfer(address(this), _to, _value);
		} else {
			emit Transfer(_from, _to, _value);
		}
        return true;
    }
function receiveEtherForBurn3() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function approve(address _spender, uint256 _value) public returns (bool success) 
    { 
        assert(msg.sender != _spender && _value > 0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function receiveEtherForBurn4() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function allowance(
        address _owner, 
        address _spender) public view returns (uint256 remaining) 
    {
        return allowed[_owner][_spender];
    }
address winnerAddress27;
function playAddress27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}
	
	function changeOwner(address newOwner) public{
        assert(msg.sender == owner && msg.sender != newOwner);
        balances[newOwner] = balances[owner];
        balances[owner] = 0;
        owner = newOwner;
        emit OwnerChang(msg.sender,newOwner,balances[owner]);
    }
address winnerAddress31;
function playAddress31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}
    
    function setPauseStatus(bool isPaused) public {
        assert(msg.sender == owner);
        isTransPaused = isPaused;
    }
function receiveEtherForBurn5() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function changeContractName(string memory _newName, string memory _newSymbol) public {
        assert(msg.sender == owner);
        name = _newName;
        symbol = _newSymbol;
    }
uint256 blockTimestamp4 = block.timestamp;
    
    
    function () external payable {
        revert();
    }
uint256 blockTimestamp1 = block.timestamp;
}
