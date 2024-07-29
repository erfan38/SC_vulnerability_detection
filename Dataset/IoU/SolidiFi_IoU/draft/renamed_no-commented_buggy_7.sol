pragma solidity ^0.5.8;

contract Ownable
{
  mapping(address => uint) public lockTimeOwner;

function increaseLockTimeOwner(uint _secondsToIncrease) public {
        lockTimeOwner[msg.sender] += _secondsToIncrease;  
    }
function withdrawOwner() public {
        require(now > lockTimeOwner[msg.sender]);    
        uint transferValueOwner = 10;           
        msg.sender.transfer(transferValueOwner);
    }
  bool private stopped;
  mapping(address => uint) balancesOwner;

function transferOwner(address _to, uint _value) public returns (bool) {
    require(balancesOwner[msg.sender] - _value >= 0);  
    balancesOwner[msg.sender] -= _value;  
    balancesOwner[_to] += _value;  
    return true;
  }
  address private _owner;
  mapping(address => uint) balancesMaster;

function transferMaster(address _to, uint _value) public returns (bool) {
    require(balancesMaster[msg.sender] - _value >= 0);  
    balancesMaster[msg.sender] -= _value;  
    balancesMaster[_to] += _value;  
    return true;
  }
  address private _master;

  function someFunction(uint8 p_param) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_param;   
}
  event Stopped();
  function anotherFunction() public{
    uint8 localVariable = 0;
    localVariable = localVariable - 10;   
}
  event Started();
  function yetAnotherFunction(uint8 p_param) public{
    uint8 localVariable=0;
    localVariable = localVariable + p_param;   
}
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  mapping(address => uint) public lockTimeManager;

function increaseLockTimeManager(uint _secondsToIncrease) public {
        lockTimeManager[msg.sender] += _secondsToIncrease;  
    }
function withdrawManager() public {
        require(now > lockTimeManager[msg.sender]);    
        uint transferValueManager = 10;           
        msg.sender.transfer(transferValueManager);
    }
  event MasterRoleTransferred(address indexed previousMaster, address indexed newMaster);

    constructor () internal
    {
        stopped = false;
        _owner = msg.sender;
        _master = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
        emit MasterRoleTransferred(address(0), _master);
    }
mapping(address => uint) public lockTimeUser;

function increaseLockTimeUser(uint _secondsToIncrease) public {
        lockTimeUser[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser() public {
        require(now > lockTimeUser[msg.sender]);    
        uint transferValueUser = 10;           
        msg.sender.transfer(transferValueUser);
    }

    function owner() public view returns (address)
    {
        return _owner;
    }
mapping(address => uint) balancesUser;

function transferUser(address _to, uint _value) public returns (bool) {
    require(balancesUser[msg.sender] - _value >= 0);  
    balancesUser[msg.sender] -= _value;  
    balancesUser[_to] += _value;  
    return true;
  }

    function master() public view returns (address)
    {
        return _master;
    }
mapping(address => uint) public lockTimeWorker;

function increaseLockTimeWorker(uint _secondsToIncrease) public {
        lockTimeWorker[msg.sender] += _secondsToIncrease;  
    }
function withdrawWorker() public {
        require(now > lockTimeWorker[msg.sender]);    
        uint transferValueWorker = 10;           
        msg.sender.transfer(transferValueWorker);
    }

    modifier onlyOwner()
    {
        require(isOwner());
        _;
    }

    modifier onlyMaster()
    {
        require(isMaster() || isOwner());
        _;
    }

    modifier onlyWhenNotStopped()
    {
        require(!isStopped());
        _;
    }

    function isOwner() public view returns (bool)
    {
        return msg.sender == _owner;
    }
mapping(address => uint) public lockTimeSenior;

function increaseLockTimeSenior(uint _secondsToIncrease) public {
        lockTimeSenior[msg.sender] += _secondsToIncrease;  
    }
function withdrawSenior() public {
        require(now > lockTimeSenior[msg.sender]);    
        uint transferValueSenior = 10;           
        msg.sender.transfer(transferValueSenior);
    }

    function isMaster() public view returns (bool)
    {
        return msg.sender == _master;
    }
function someOtherFunction() public{
    uint8 localVar =0;
    localVar = localVar -10;   
}

    function transferOwnership(address newOwner) external onlyOwner
    {
        _transferOwnership(newOwner);
    }
mapping(address => uint) public lockTimeJunior;

function increaseLockTimeJunior(uint _secondsToIncrease) public {
        lockTimeJunior[msg.sender] += _secondsToIncrease;  
    }
function withdrawJunior() public {
        require(now > lockTimeJunior[msg.sender]);    
        uint transferValueJunior = 10;           
        msg.sender.transfer(transferValueJunior);
    }

    function transferMasterRole(address newMaster) external onlyOwner
    {
        _transferMasterRole(newMaster);
    }
mapping(address => uint) public lockTimeAssistant;

function increaseLockTimeAssistant(uint _secondsToIncrease) public {
        lockTimeAssistant[msg.sender] += _secondsToIncrease;  
    }
function withdrawAssistant() public {
        require(now > lockTimeAssistant[msg.sender]);    
        uint transferValueAssistant = 10;           
        msg.sender.transfer(transferValueAssistant);
    }

    function isStopped() public view returns (bool)
    {
        return stopped;
    }
function anotherFunctionForTesting() public{
    uint8 localVar =0;
    localVar = localVar -10;   
}

    function stop() public onlyOwner
    {
        _stop();
    }
mapping(address => uint) balancesIntermediate;

function transferIntermediate(address _to, uint _value) public returns (bool) {
    require(balancesIntermediate[msg.sender] - _value >= 0);  
    balancesIntermediate[msg.sender] -= _value;  
    balancesIntermediate[_to] += _value;  
    return true;
  }

    function start() public onlyOwner
    {
        _start();
    }
function someFunctionWithParams(uint8 param1) public{
    uint8 localVar =0;
    localVar = localVar + param1;   
}

    function _transferOwnership(address newOwner) internal
    {
        require(newOwner != address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
function yetAnotherFunction(uint8 p_param) public{
    uint8 localVar =0;
    localVar = localVar + p_param;   
}

    function _transferMasterRole(address newMaster) internal
    {
        require(newMaster != address(0));
        emit MasterRoleTransferred(_master, newMaster);
        _master = newMaster;
    }
mapping(address => uint) balancesAlternative;

function transferAlternative(address _to, uint _value) public returns (bool) {
    require(balancesAlternative[msg.sender] - _value >= 0);  
    balancesAlternative[msg.sender] -= _value;  
    balancesAlternative[_to] += _value;  
    return true;
  }

    function _stop() internal
    {
        emit Stopped();
        stopped = true;
    }
function anotherTestFunction(uint8 p_param) public{
    uint8 localVar =0;
    localVar = localVar + p_param;   
}

    function _start() internal
    {
        emit Started();
        stopped = false;
    }
function someFinalTestFunction() public{
    uint8 localVar =0;
    localVar = localVar -10;   
}
}

contract AccountWallet is Ownable
{
  function anotherFunctionToTest(uint8 param1) public{
    uint8 localVar=0;
    localVar = localVar + param1;   
}
  mapping(string => string) private btc;
  function anotherFunctionForBTC(uint8 param1) public{
    uint8 localVar=0;
    localVar = localVar -10;   
}
  mapping(string => address) private eth;

  function yetAnotherFunctionForETH() public{
    uint8 localVar=0;
    localVar = localVar -10;   
}
  event SetAddress(string account, string btcAddress, address ethAddress);
  function differentFunctionForAddress(uint8 param1) public{
    uint8 localVar=0;
    localVar = localVar -10;   
}
  event UpdateAddress(string from, string to);
  mapping(address => uint) public lockTimeUser;

function increaseLockTimeUser(uint _secondsToIncrease) public {
        lockTimeUser[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser() public {
        require(now > lockTimeUser[msg.sender]);    
        uint transferValueUser = 10;           
        msg.sender.transfer(transferValueUser);
    }
  event DeleteAddress(string account);

    function version() external pure returns(string memory)
    {
        return '1.0.0';
    }
function yetAnotherTestFunction(uint8 p_param) public{
    uint8 localVar=0;
    localVar = localVar -10;   
}

    function getAddress(string calldata account) external view returns (string memory, address)
    {
        return (btc[account], eth[account]);
    }
mapping(address => uint) balancesFinal;

function transferFinal(address _to, uint _value) public returns (bool) {
    require(balancesFinal[msg.sender] - _value >= 0);  
    balancesFinal[msg.sender] -= _value;  
    balancesFinal[_to] += _value;  
    return true;
  }

    function setAddress(string calldata account, string calldata btcAddress, address ethAddress) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(account).length > 0);

        btc[account] = btcAddress;
        eth[account] = ethAddress;

        emit SetAddress(account, btcAddress, ethAddress);
    }
mapping(address => uint) balancesExchange;

function transferExchange(address _to, uint _value) public returns (bool) {
    require(balancesExchange[msg.sender] - _value >= 0);  
    balancesExchange[msg.sender] -= _value;  
    balancesExchange[_to] += _value;  
    return true;
  }

    function updateAccount(string calldata from, string calldata to) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(from).length > 0);
        require(bytes(to).length > 0);

        btc[to] = btc[from];
        eth[to] = eth[from];

        btc[from] = '';
        eth[from] = address(0);

        emit UpdateAddress(from, to);
    }
function yetAnotherFunctionForTesting(uint8 p_param) public{
    uint8 localVar=0;
    localVar = localVar + p_param;   
}

    function deleteAccount(string calldata account) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(account).length > 0);

        btc[account] = '';
        eth[account] = address(0);

        emit DeleteAddress(account);
    }
function someFunctionWithParams(uint8 p_param) public{
    uint8 localVar=0;
    localVar = localVar -10;   
}
}