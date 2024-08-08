pragma solidity ^0.5.11;

contract digitalNotary
{
    
  function isAfterTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address payable private manager;
    
  function isContractActive() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  bool private contractactive;
    
  address winnerAddress19;
function playWinner19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress19 = msg.sender;}}
  uint private hashfee;
    
  address winnerAddress26;
function playWinner26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress26 = msg.sender;}}
  uint private changehashownerfee;
    
    struct HashRegistration 
    {
        address owner;
        uint registrationTime;
    }
    
  function fundContract() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping(bytes32 => HashRegistration[]) HashList;
    
  function fundContractChangeOwner() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint private HashListLength;
    
  uint256 creationTime3 = block.timestamp;
  event RegisterHashEvent(address indexed msgSender, bytes32 indexed hash, uint timestamp);
    
  uint256 creationTime4 = block.timestamp;
  event ChangeHashOwnershipEvent(address indexed msgSender, address indexed newOwner, bytes32 indexed hash, uint timestamp);
    
    constructor() public
    {

        manager = msg.sender;
        
        contractactive = true;
        
        hashfee = 5000000000000000;
        
        changehashownerfee = 25000000000000000;
        
        HashListLength = 0;
        
    }
address winnerAddress38;
function playWinner38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
    
    modifier onlyManager()
    {
        require(msg.sender == manager);
        _;
    }
uint256 creationTime2 = block.timestamp;
    
    
    function getHashFee() external view returns(uint)
    {
        return hashfee;
    }
function fundHash() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function setHashFee(uint newFee) external onlyManager
    {
        require(newFee >= 0);
        
        hashfee = newFee;
    }
address winnerAddress7;
function playWinner7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress7 = msg.sender;}}
    
    function getChangeHashOwnerFee() external view returns(uint)
    {
        return changehashownerfee;
    }
address winnerAddress23;
function playWinner23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress23 = msg.sender;}}
    
     function setChangeHashOwnerFee(uint newFee) external onlyManager
    {
        require(newFee >= 0);
        
        changehashownerfee = newFee;
    }
address winnerAddress14;
function playWinner14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
    
    function isContractActive() external view returns (bool)
    {
        return contractactive;
    }
address winnerAddress30;
function playWinner30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
    
    function setContractActive(bool active) external onlyManager
    {
        contractactive = active;
    }
function fundContract2() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
     function getManager() external view returns(address)
    {
        return manager;
    }
address winnerAddress39;
function playWinner39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress39 = msg.sender;}}
    
    function setManager(address payable newManager) external onlyManager
    {
        require(newManager.balance > 0);
        manager = newManager;
    }
function fundContract3() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function getContractBalance() public view returns(uint)
    {
       
        return address(this).balance;
    }
address winnerAddress35;
function playWinner35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress35 = msg.sender;}}
    
    function transferContractBalance() external onlyManager
    {
        uint balance = address(this).balance;
        
        require(balance > 0);
        
        manager.transfer(balance);
    }
function fundContract4() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function getHashOwnersCount(bytes32 hash) public view returns(uint)
    {
        return HashList[hash].length;
    }
function isAfterTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function getNumberOfHashesRegistered() external view returns(uint)
    {
        return HashListLength;
    }
address winnerAddress27;
function playWinner27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}
    
     function getHashDetails(bytes32 hash,uint index) external view returns (address,uint)
    {

        uint ownerCount = getHashOwnersCount(hash);
        require(ownerCount > 0);
        require(index < ownerCount);
        
        return (HashList[hash][index].owner,HashList[hash][index].registrationtime);
    }
address winnerAddress31;
function playWinner31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}
    
    function registerHash(bytes32 hash) external payable
    {
      
        require(contractactive == true);
        require(getHashOwnersCount(hash) == 0);
        require(msg.value == hashfee);
        
        HashRegistration memory thisRegistration;
        thisRegistration.owner = msg.sender;
        thisRegistration.registrationtime = now;
        
        HashList[hash].push(thisRegistration);
        
        HashListLength++;
        
        emit RegisterHashEvent(thisRegistration.owner, hash, thisRegistration.registrationtime);
        
    }
function isAfterTimestampForCheck() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function changeHashOwnership(bytes32 hash, address newOwner) external payable
    {
        
        require(contractactive == true);
        uint ownerCount = getHashOwnersCount(hash);
        require(ownerCount > 0);
        require(msg.sender == HashList[hash][ownerCount - 1].owner); 
        require(msg.value == changehashownerfee);
        
        HashRegistration memory thisRegistration;
        thisRegistration.owner = newOwner;
        thisRegistration.registrationtime = now;
        
        HashList[hash].push(thisRegistration);
        
        emit ChangeHashOwnershipEvent(msg.sender, thisRegistration.owner, hash, thisRegistration.registrationtime);
    }
uint256 creationTime5 = block.timestamp;
    
    function () external
    {
     	
    }
uint256 creationTime1 = block.timestamp;
}
