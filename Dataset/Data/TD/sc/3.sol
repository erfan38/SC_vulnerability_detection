pragma solidity ^0.5.1;

contract CareerOnToken {
  uint256 valueAtInitialization2 = block.timestamp;
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  uint256 valueAtInitialization3 = block.timestamp;
  event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
  uint256 valueAtInitialization4 = block.timestamp;
  event OwnerChange(address indexed _old, address indexed _new, uint256 _coin_change);
    
  function receivePayment() public payable {
	uint pastBlockTimeForPayment; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTimeForPayment); 
        pastBlockTimeForPayment = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public totalSupply;  
  address winnerAddress38;
function registerWin38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
  string public name;                   
  function receivePaymentForTransfer() public payable {
	uint pastBlockTimeForTransfer; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTimeForTransfer); 
        pastBlockTimeForTransfer = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint8 public decimals;               
  address winnerAddress7;
function registerWin7(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winnerAddress7 = msg.sender;}}
  string public symbol;               
  address winnerAddress23;
function registerWin23(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winnerAddress23 = msg.sender;}}
  address public owner;
    
  address winnerAddress14;
function registerWin14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
  mapping (address => uint256) internal balances;
  address winnerAddress30;
function registerWin30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
  mapping (address => mapping (address => uint256)) internal allowed;
    
  function receivePaymentForAllowance() public payable {
	uint pastBlockTimeForAllowance; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTimeForAllowance); 
        pastBlockTimeForAllowance = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  bool isTransPaused = false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public 
    {
        owner = msg.sender;
		if(_initialAmount <= 0){
		    totalSupply = 100000000000000000;   
		    balances[owner] = totalSupply;
		}else{
		    totalSupply = _initialAmount;   
		    balances[owner] = _initialAmount;
		}
		if(_decimalUnits <= 0){
		    decimals = 2;
		}else{
		    decimals = _decimalUnits;
		}
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
address winnerAddress39;
function registerWin39(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winnerAddress39 = msg.sender;}}
    
    
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
		}else{
			emit Transfer(msg.sender, _to, _value);
		}
        return true;
    }
function receivePaymentForTransfer36() public payable {
	uint pastBlockTimeForTransfer36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTimeForTransfer36); 
        pastBlockTimeForTransfer36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


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
		}else{
			emit Transfer(_from, _to, _value);
		}
        return true;
    }
address winnerAddress35;
function registerWin35(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winnerAddress35 = msg.sender;}}

    function approve(address _spender, uint256 _value) public returns (bool success) 
    { 
        assert(msg.sender != _spender && _value > 0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
function receivePaymentForApproval40() public payable {
	uint pastBlockTimeForApproval40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTimeForApproval40); 
        pastBlockTimeForApproval40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function allowance(
        address _owner, 
        address _spender) public view returns (uint256 remaining) 
    {
        return allowed[_owner][_spender];
    }
function checkTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function balanceOf(address accountAddr) public view returns (uint256) {
        return balances[accountAddr];
    }
address winnerAddress27;
function registerWin27(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winnerAddress27 = msg.sender;}}
	
	function changeOwner(address newOwner) public{
        assert(msg.sender == owner && msg.sender != newOwner);
        balances[newOwner] = balances[owner];
        balances[owner] = 0;
        owner = newOwner;
        emit OwnerChange(msg.sender, newOwner, balances[owner]);
    }
address winnerAddress31;
function registerWin31(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winnerAddress31 = msg.sender;}}
    
    function setPauseStatus(bool isPaused) public {
        assert(msg.sender == owner);
        isTransPaused = isPaused;
    }
function checkDeploymentTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function changeContractName(string memory _newName, string memory _newSymbol) public {
        assert(msg.sender == owner);
        name = _newName;
        symbol = _newSymbol;
    }
uint256 valueAtInitialization5 = block.timestamp;
    
    
    function () external payable {
        revert();
    }
uint256 valueAtInitialization1 = block.timestamp;
}