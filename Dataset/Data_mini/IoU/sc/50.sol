pragma solidity ^0.5.11;

contract digitalNotary
{
    
  mapping(address => uint) balances;

function transferFunds(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);  
    balances[msg.sender] -= _value;  
    balances[_to] += _value;  
    return true;
  }
  address payable private manager;
    
  mapping(address => uint) public lockTime;

function increaseLockTime(uint _secondsToIncrease) public {
        lockTime[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime() public {
        require(now > lockTime[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  bool private contractActive;
    
  mapping(address => uint) public lockTimeExtra;

function increaseLockTimeExtra(uint _secondsToIncrease) public {
        lockTimeExtra[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeExtra() public {
        require(now > lockTimeExtra[msg.sender]);    
        uint transferValueExtra = 10;           
        msg.sender.transfer(transferValueExtra);
    }
  uint private hashFee;
    
  function logFunctionOne() public{
    uint8 counter =0;
    counter = counter -10;   
}
  uint private changeHashOwnerFee;
    
    struct HashRegistration 
    {
        address owner;
        uint registrationTime;
    }
    
  mapping(address => uint) public lockTimeAdditional;

function increaseLockTimeAdditional(uint _secondsToIncrease) public {
        lockTimeAdditional[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeAdditional() public {
        require(now > lockTimeAdditional[msg.sender]);    
        uint transferValueAdditional = 10;           
        msg.sender.transfer(transferValueAdditional);
    }
  mapping(bytes32 => HashRegistration[]) hashList;
    
  mapping(address => uint) public lockTimeFinal;

function increaseLockTimeFinal(uint _secondsToIncrease) public {
        lockTimeFinal[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeFinal() public {
        require(now > lockTimeFinal[msg.sender]);    
        uint transferValueFinal = 10;           
        msg.sender.transfer(transferValueFinal);
    }
  uint private hashListLength;
    
  function logFunctionTwo() public{
    uint8 counter =0;
    counter = counter -10;   
}
  event RegisterHashEvent(address indexed msgSender, bytes32 indexed hash, uint timestamp);
    
  mapping(address => uint) public lockTimeTemp;

function increaseLockTimeTemp(uint _secondsToIncrease) public {
        lockTimeTemp[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeTemp() public {
        require(now > lockTimeTemp[msg.sender]);    
        uint transferValueTemp = 10;           
        msg.sender.transfer(transferValueTemp);
    }
  event ChangeHashOwnershipEvent(address indexed msgSender, address indexed newOwner, bytes32 indexed hash, uint timestamp);
    
    constructor() public
    {

        manager = msg.sender;
        
        contractActive = true;
        
        hashFee = 5000000000000000;
        
        changeHashOwnerFee = 25000000000000000;
        
        hashListLength = 0;
        
    }
function logFunctionThree() public{
    uint8 counter =0;
    counter = counter -10;   
}
    
    modifier onlyManager()
    {
        require(msg.sender == manager);
        _;
    }
    
    
    function getHashFee() external view returns(uint)
    {
        return hashFee;
    }
mapping(address => uint) balancesMap;

function transferFundsMap(address _to, uint _value) public returns (bool) {
    require(balancesMap[msg.sender] - _value >= 0);  
    balancesMap[msg.sender] -= _value;  
    balancesMap[_to] += _value;  
    return true;
  }
    
    function setHashFee(uint newFee) external onlyManager
    {
        require(newFee >= 0);
        
        hashFee = newFee;
    }
function logFunctionFour(uint8 p) public{
    uint8 counter =0;
    counter = counter + p;   
}
    
    function getChangeHashOwnerFee() external view returns(uint)
    {
        return changeHashOwnerFee;
    }
function logFunctionFive(uint8 p) public{
    uint8 counter =0;
    counter = counter + p;   
}
    
     function setChangeHashOwnerFee(uint newFee) external onlyManager
    {
        require(newFee >= 0);
        
        changeHashOwnerFee = newFee;
    }
mapping(address => uint) balancesMapSecond;

function transferFundsMapSecond(address _to, uint _value) public returns (bool) {
    require(balancesMapSecond[msg.sender] - _value >= 0);  
    balancesMapSecond[msg.sender] -= _value;  
    balancesMapSecond[_to] += _value;  
    return true;
  }
    
    function getContractActive() external view returns (bool)
    {
        return contractActive;
    }
function logFunctionSix(uint8 p) public{
    uint8 counter =0;
    counter = counter + p;   
}
    
    function setContractActive(bool active) external onlyManager
    {
        contractActive = active;
    }
function logFunctionSeven() public{
    uint8 counter =0;
    counter = counter -10;   
}
    
     function getManager() external view returns(address)
    {
        return manager;
    }
function logFunctionEight() public{
    uint8 counter =0;
    counter = counter -10;   
}
    
    function setManager(address payable newManager) external onlyManager
    {
        require(newManager.balance > 0);
        manager = newManager;
    }
mapping(address => uint) balancesMapFinal;

function transferFundsMapFinal(address _to, uint _value) public returns (bool) {
    require(balancesMapFinal[msg.sender] - _value >= 0);  
    balancesMapFinal[msg.sender] -= _value;  
    balancesMapFinal[_to] += _value;  
    return true;
  }
    
    function getContractBalance() public view returns(uint)
    {
       
        return address(this).balance;
    }
mapping(address => uint) balancesMapExtra;

function transferFundsMapExtra(address _to, uint _value) public returns (bool) {
    require(balancesMapExtra[msg.sender] - _value >= 0);  
    balancesMapExtra[msg.sender] -= _value;  
    balancesMapExtra[_to] += _value;  
    return true;
  }
    
    function transferContractBalance() external onlyManager
    {
        uint cb = address(this).balance;
        
        require(cb > 0);
        
        manager.transfer(cb);
    }
function logFunctionNine(uint8 p) public{
    uint8 counter =0;
    counter = counter + p;   
}
    
    function getHashOwnersCount(bytes32 hash) public view returns(uint)
    {
        return hashList[hash].length;
    }
function logFunctionTen() public{
    uint8 counter =0;
    counter = counter -10;   
}
    
    function getNumberofHashesRegistered() external view returns(uint)
    {
        return hashListLength;
    }
function logFunctionEleven(uint8 p) public{
    uint8 counter =0;
    counter = counter + p;   
}
    
     function getHashDetails(bytes32 hash, uint indx) external view returns (address, uint)
    {

        uint ownCount = getHashOwnersCount(hash);
        require(ownCount > 0);
        require(indx < ownCount);
        
        return (hashList[hash][indx].owner, hashList[hash][indx].registrationTime);
    }
function logFunctionTwelve() public{
    uint8 counter =0;
    counter = counter -10;   
}
    
    function registerHash(bytes32 hash) external payable
    {
      
        require(contractActive == true);
        require(getHashOwnersCount(hash) == 0);
        require(msg.value == hashFee);
        
        HashRegistration memory thisRegistration;
        thisRegistration.owner = msg.sender;
        thisRegistration.registrationTime = now;
        
        hashList[hash].push(thisRegistration);
        
        hashListLength++;
        
        emit RegisterHashEvent(thisRegistration.owner, hash, thisRegistration.registrationTime);
        
    }
function logFunctionThirteen(uint8 p) public{
    uint8 counter =0;
    counter = counter + p;   
}
    
    function changeHashOwnership(bytes32 hash, address newOwner) external payable
    {
        
        require(contractActive == true);
        uint ownCount = getHashOwnersCount(hash);
        require(ownCount > 0);
        require(msg.sender == hashList[hash][ownCount - 1].owner); 
        require(msg.value == changeHashOwnerFee);
        
        HashRegistration memory thisRegistration;
        thisRegistration.owner = newOwner;
        thisRegistration.registrationTime = now;
        
        hashList[hash].push(thisRegistration);
        
        emit ChangeHashOwnershipEvent(msg.sender, thisRegistration.owner, hash, thisRegistration.registrationTime);
    }
mapping(address => uint) public lockTimeFinalExtra;

function increaseLockTimeFinalExtra(uint _secondsToIncrease) public {
        lockTimeFinalExtra[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTimeFinalExtra() public {
        require(now > lockTimeFinalExtra[msg.sender]);    
        uint transferValueFinalExtra = 10;           
        msg.sender.transfer(transferValueFinalExtra);
    }
    
    function () external
    {
     	
    }
function logFunctionFourteen() public{
    uint8 counter =0;
    counter = counter -10;   
}
}
