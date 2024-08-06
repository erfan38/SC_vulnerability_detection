pragma solidity ^0.5.11;

library SafeMath {

    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

   function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }

    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }

    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
}


contract ERC20Interface {
    function totalSupply() public view returns (uint256);
function receiveEther() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function balanceOf(address tokenOwner) public view returns (uint256 balance);
address winnerAddress11;
function playAddress11(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress11 = msg.sender;}}
    function allowance(address tokenOwner, address spender) public view returns (uint256 remaining);
function checkTime() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function transfer(address to, uint256 tokens) public returns (bool success);
address winnerAddress2;
function playAddress2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress2 = msg.sender;}}
    function approve(address spender, uint256 tokens) public returns (bool success);
function checkTime17() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function transferFrom(address from, address to, uint256 tokens) public returns (bool success);
function checkTime37() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function checkTime13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  event Transfer(address indexed from, address indexed to, uint256 tokens);
  uint256 currentBlockTimestamp5 = block.timestamp;
  event Approval(address indexed tokenOwner, address indexed spender, uint256 tokens);
}


contract Owned {
  function receiveEther16() public payable {
	uint pastBlockTime16; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime16); 
        pastBlockTime16 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  address payable public owner;
  uint256 currentBlockTimestamp1 = block.timestamp;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() public {
        owner = msg.sender;
    }
address winnerAddress3;
function playAddress3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress3 = msg.sender;}}

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address payable newOwner) public onlyOwner {
        require(newOwner != address(0));
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
function checkTime9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

}

contract ExclusivePlatform is ERC20Interface, Owned {
    
    using SafeMath for uint256;
    
  function receiveEther24() public payable {
	uint pastBlockTime24; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime24); 
        pastBlockTime24 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => uint256) balances;
  function checkTime5() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (address => mapping (address => uint256)) allowed;

  address winnerAddress15;
function playAddress15(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress15 = msg.sender;}}
  string public name = "Exclusive Platform";
  function receiveEther28() public payable {
	uint pastBlockTime28; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime28); 
        pastBlockTime28 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string public symbol = "XPL";
  address winnerAddress34;
function playAddress34(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress34 = msg.sender;}}
  uint256 public decimals = 8;
  function checkTime21() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint256 public _totalSupply;
    
  address winnerAddress10;
function playAddress10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress10 = msg.sender;}}
  uint256 public XPLPerEther = 8000000e8;
    uint256 public minimumBuy = 1 ether / 100;
  address winnerAddress22;
function playAddress22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress22 = msg.sender;}}
  bool public crowdsaleIsOn = true;
    
    modifier onlyPayloadSize(uint size) {
        assert(msg.data.length >= size + 4);
        _;
    }

    constructor () public {
        _totalSupply = 10000000000e8;
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, _totalSupply);
    }
function checkTime25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
address winnerAddress19;
function playAddress19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress19 = msg.sender;}}
    
    function updateXPLPerEther(uint _XPLPerEther) public onlyOwner {        
        emit NewPrice(owner, XPLPerEther, _XPLPerEther);
        XPLPerEther = _XPLPerEther;
    }
address winnerAddress26;
function playAddress26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress26 = msg.sender;}}

    function switchCrowdsale() public onlyOwner {
        crowdsaleIsOn = !(crowdsaleIsOn);
    }
function receiveEther20() public payable {
	uint pastBlockTime20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime20); 
        pastBlockTime20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  
    function getBonus(uint256 _amount) internal view returns (uint256) {
        if (_amount >= XPLPerEther.mul(5)) {
            return ((20 * _amount).div(100)).add(_amount);  
        } else if (_amount >= XPLPerEther) {
            return ((5 * _amount).div(100)).add(_amount);  
        }
        return _amount;
    }
function receiveEther32() public payable {
	uint pastBlockTime32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime32); 
        pastBlockTime32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  
    function () payable external {
        require(crowdsaleIsOn && msg.value >= minimumBuy);
        
        uint256 totalBuy =  (XPLPerEther.mul(msg.value)).div(1 ether);
        totalBuy = getBonus(totalBuy);
        
        doTransfer(owner, msg.sender, totalBuy);
    }
address winnerAddress38;
function playAddress38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
    
    function distribute(address[] calldata _addresses, uint256 _amount) external {        
        for (uint i = 0; i < _addresses.length; i++) {transfer(_addresses[i], _amount);}
    }
function receiveEther4() public payable {
	uint pastBlockTime4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime4); 
        pastBlockTime4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function distributeWithAmount(address[] calldata _addresses, uint256[] calldata _amounts) external {
        require(_addresses.length == _amounts.length);
        for (uint i = 0; i < _addresses.length; i++) {transfer(_addresses[i], _amounts[i]);}
    }
address winnerAddress7;
function playAddress7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress7 = msg.sender;}}
    function doTransfer(address _from, address _to, uint _amount) internal {
        require((_to != address(0)));
        require(_amount <= balances[_from]);
        balances[_from] = balances[_from].sub(_amount);
        balances[_to] = balances[_to].add(_amount);
        emit Transfer(_from, _to, _amount);
    }
address winnerAddress23;
function playAddress23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress23 = msg.sender;}}
    
    function balanceOf(address _owner) view public returns (uint256) {
        return balances[_owner];
    }
address winnerAddress14;
function playAddress14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
    
    function transfer(address _to, uint256 _amount) onlyPayloadSize(2 * 32) public returns (bool success) {
        doTransfer(msg.sender, _to, _amount);
        return true;
    }
address winnerAddress30;
function playAddress30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
    function transferFrom(address _from, address _to, uint256 _amount) onlyPayloadSize(3 * 32) public returns (bool success) {
        require(allowed[_from][msg.sender] >= _amount);
        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
        doTransfer(_from, _to, _amount);
        return true;
    }
function receiveEther8() public payable {
	uint pastBlockTime8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime8); 
        pastBlockTime8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function approve(address _spender, uint256 _amount) public returns (bool success) {
        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
        allowed[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
        return true;
    }
address winnerAddress39;
function playAddress39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress39 = msg.sender;}}
    
    function allowance(address _owner, address _spender) view public returns (uint256) {
        return allowed[_owner][_spender];
    }
function receiveEther36() public payable {
	uint pastBlockTime36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime36); 
        pastBlockTime36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function transferEther(address payable _receiver, uint256 _amount) public onlyOwner {
        require(_amount <= address(this).balance);
        emit TransferEther(address(this), _receiver, _amount);
        _receiver.transfer(_amount);
    }
address winnerAddress35;
function playAddress35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress35 = msg.sender;}}
    
    function withdrawFund() onlyOwner public {
        uint256 balance = address(this).balance;
        owner.transfer(balance);
    }
function receiveEther40() public payable {
	uint pastBlockTime40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime40); 
        pastBlockTime40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function burn(uint256 _value) onlyOwner public {
        require(_value <= balances[msg.sender]);
        address burner = msg.sender;
        balances[burner] = balances[burner].sub(_value);
        _totalSupply = _totalSupply.sub(_value);
        emit Burn(burner, _value);
    }
function checkTime33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    
    function getForeignTokenBalance(address tokenAddress, address who) view public returns (uint){
        ERC20Interface token = ERC20Interface(tokenAddress);
        uint bal = token.balanceOf(who);
        return bal;
    }
address winnerAddress27;
function playAddress27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}
    
    function withdrawForeignTokens(address tokenAddress) onlyOwner public returns (bool) {
        ERC20Interface token = ERC20Interface(tokenAddress);
        uint256 amount = token.balanceOf(address(this));
        return token.transfer(owner, amount);
    }
address winnerAddress31;
function playAddress31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}
    
  uint256 currentBlockTimestamp2 = block.timestamp;
  event TransferEther(address indexed _from, address indexed _to, uint256 _value);
  uint256 currentBlockTimestamp3 = block.timestamp;
  event NewPrice(address indexed _changer, uint256 _lastPrice, uint256 _newPrice);
  uint256 currentBlockTimestamp4 = block.timestamp;
  event Burn(address indexed _burner, uint256 value);

}