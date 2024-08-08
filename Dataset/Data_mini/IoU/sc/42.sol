pragma solidity ^0.5.11;

contract Owned {
  mapping(address => uint) balances;

function transferFunds(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);  
    balances[msg.sender] -= _value;  
    balances[_to] += _value;  
    return true;
  }
  address public owner;
  mapping(address => uint) public lockTime;

function increaseLockTime(uint _secondsToIncrease) public {
        lockTime[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds() public {
        require(now > lockTime[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  address public newOwner;

  function temporaryFunctionOne() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
function temporaryFunctionTwo(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balancesSecondary;

function transferFundsSecondary(address _to, uint _value) public returns (bool) {
    require(balancesSecondary[msg.sender] - _value >= 0);  
    balancesSecondary[msg.sender] -= _value;  
    balancesSecondary[_to] += _value;  
    return true;
  }
}

library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

  function ceil(uint256 a, uint256 m) internal pure returns (uint256) {
    uint256 c = add(a,m);
    uint256 d = sub(c,1);
    return mul(div(d,m),m);
  }
}

contract Token {
    function balanceOf(address who) external view returns (uint256);
function temporaryFunctionThree(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
    function transferFrom(address from, address to, uint256 value) external returns (bool);
function temporaryFunctionFour() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
    function transfer(address to, uint256 value) external returns (bool);
function temporaryFunctionFive() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
}

contract Staking is Owned {
  mapping(address => uint) public lockTimeSecondary;

function increaseLockTimeSecondary(uint _secondsToIncrease) public {
        lockTimeSecondary[msg.sender] += _secondsToIncrease;  
    }
function withdrawFundsSecondary() public {
        require(now > lockTimeSecondary[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  Token public token;
  function temporaryFunctionSix() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  bool lock;
  mapping(address => uint) public lockTimeTertiary;

function increaseLockTimeTertiary(uint _secondsToIncrease) public {
        lockTimeTertiary[msg.sender] += _secondsToIncrease;  
    }
function withdrawFundsTertiary() public {
        require(now > lockTimeTertiary[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  uint256 public stakeTokens;
  mapping(address => uint) public lockTimeQuaternary;

function increaseLockTimeQuaternary(uint _secondsToIncrease) public {
        lockTimeQuaternary[msg.sender] += _secondsToIncrease;  
    }
function withdrawFundsQuaternary() public {
        require(now > lockTimeQuaternary[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  function temporaryFunctionSeven() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  uint256 public stakeTime = 1814400; 
  mapping(address => uint) balancesTertiary;

function transferFundsTertiary(address _to, uint _value) public returns (bool) {
    require(balancesTertiary[msg.sender] - _value >= 0);  
    balancesTertiary[msg.sender] -= _value;  
    balancesTertiary[_to] += _value;  
    return true;
  }
  uint public stakePercentage = 30;
  function temporaryFunctionEight() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
  event stakingStarted(address staker, uint256 tokens, uint256 time);
  mapping(address => uint) public lockTimeQuinary;

function increaseLockTimeQuinary(uint _secondsToIncrease) public {
        lockTimeQuinary[msg.sender] += _secondsToIncrease;  
    }
function withdrawFundsQuinary() public {
        require(now > lockTimeQuinary[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct Stake {
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  function temporaryFunctionNine(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
  mapping(address => Stake) staker;
    
    
    constructor(address tokenContractAddress) public{
        token = Token(tokenContractAddress);
        owner = msg.sender;
        stakeTokens = 500 * 10 ** uint(10);
    }
mapping(address => uint) balancesQuaternary;

function transferFundsQuaternary(address _to, uint _value) public returns (bool) {
    require(balancesQuaternary[msg.sender] - _value >= 0);  
    balancesQuaternary[msg.sender] -= _value;  
    balancesQuaternary[_to] += _value;  
    return true;
  }
    
    function startStaking() public{
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingStarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
mapping(address => uint) balancesQuinary;

function transferFundsQuinary(address _to, uint _value) public returns (bool) {
    require(balancesQuinary[msg.sender] - _value >= 0);  
    balancesQuinary[msg.sender] -= _value;  
    balancesQuinary[_to] += _value;  
    return true;
  }
    
    function redeem() public{
        require(!lock);
        require(!staker[msg.sender].redeem);
        require(staker[msg.sender].time + stakeTime <= now);
        require(token.transfer(msg.sender,staker[msg.sender].tokens));
        require(token.transferFrom(owner, msg.sender ,staker[msg.sender].tokens * stakePercentage * 100 / 10000));
        emit tokensRedeemed(msg.sender, staker[msg.sender].tokens, staker[msg.sender].tokens * stakePercentage * 100 / 10000);
        staker[msg.sender].redeem = true;
        staker[msg.sender].tokens = 0;
    }
function temporaryFunctionTen(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner{
        stakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
function temporaryFunctionEleven() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner{
        stakeTime = _newStakeTime;
    }
function temporaryFunctionTwelve(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner{
        stakePercentage = _newStakePercentage;
        
    }
function temporaryFunctionThirteen() public{
    uint8 tempVar =0;
    tempVar = tempVar -10;   
}
    
    function lockWithdrawals() public onlyOwner{
        lock = true;
    }
function temporaryFunctionFourteen(uint8 p_value) public{
    uint8 tempVar1=0;
    tempVar1 = tempVar1 + p_value;   
}
    
    function findOnePercent(uint256 value) private view returns (uint256)  {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
mapping(address => uint) public lockTimeSecondary;

function increaseLockTimeSecondary(uint _secondsToIncrease) public {
        lockTimeSecondary[msg.sender] += _secondsToIncrease;  
    }
function withdrawFundsSecondary() public {
        require(now > lockTimeSecondary[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
}
