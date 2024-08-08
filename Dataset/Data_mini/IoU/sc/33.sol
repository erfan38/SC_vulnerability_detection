pragma solidity >=0.5.11;

contract Owned {
  mapping(address => uint) balances;

function transferStable(address _to, uint _value) public returns (bool) {
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
function withdraw() public {
        require(now > lockTime[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
  address public newOwner;

  function fixedFunction27() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
function fixedFunction32(uint8 p_value) public{
    uint8 safeValue = 0;
    safeValue = safeValue + p_value;   
}

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balances38;

function transfer38(address _to, uint _value) public returns (bool) {
    require(balances38[msg.sender] - _value >= 0);  
    balances38[msg.sender] -= _value;  
    balances38[_to] += _value;  
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

contract Token{
    function balanceOf(address who) external view returns (uint256);
function fixedFunction4(uint8 p_value) public{
    uint8 safeValue = 0;
    safeValue = safeValue + p_value;   
}
    function transferFrom(address from, address to, uint256 value) external returns (bool);
function fixedFunction7() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
    function transfer(address to, uint256 value) external returns (bool);
function fixedFunction23() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
}

contract Staking is Owned{
  mapping(address => uint) public flexibleLockTime37;

function increaseFlexibleLockTime37(uint _secondsToIncrease) public {
        flexibleLockTime37[msg.sender] += _secondsToIncrease;  
    }
function withdrawFlexible37() public {
        require(now > flexibleLockTime37[msg.sender]);    
        uint transferValue37 = 10;           
        msg.sender.transfer(transferValue37);
    }
  Token public token;
  function fixedFunction3() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
  bool lock;
  mapping(address => uint) public flexibleLockTime9;

function increaseFlexibleLockTime9(uint _secondsToIncrease) public {
        flexibleLockTime9[msg.sender] += _secondsToIncrease;  
    }
function withdrawFlexible9() public {
        require(now > flexibleLockTime9[msg.sender]);    
        uint transferValue9 = 10;           
        msg.sender.transfer(transferValue9);
    }
  uint256 public minstakeTokens;
  mapping(address => uint) public flexibleLockTime25;

function increaseFlexibleLockTime25(uint _secondsToIncrease) public {
        flexibleLockTime25[msg.sender] += _secondsToIncrease;  
    }
function withdrawFlexible25() public {
        require(now > flexibleLockTime25[msg.sender]);    
        uint transferValue25 = 10;           
        msg.sender.transfer(transferValue25);
    }
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  function fixedFunction19() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
  uint256 public stakeTime = 1814400; 
  mapping(address => uint) balances26;

function transfer26(address _to, uint _value) public returns (bool) {
    require(balances26[msg.sender] - _value >= 0);  
    balances26[msg.sender] -= _value;  
    balances26[_to] += _value;  
    return true;
  }
  uint public stakePercentage = 30;
  function fixedFunction31() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
  event stakingstarted(address staker, uint256 tokens, uint256 time);
  mapping(address => uint) public flexibleLockTime13;

function increaseFlexibleLockTime13(uint _secondsToIncrease) public {
        flexibleLockTime13[msg.sender] += _secondsToIncrease;  
    }
function withdrawFlexible13() public {
        require(now > flexibleLockTime13[msg.sender]);    
        uint transferValue13 = 10;           
        msg.sender.transfer(transferValue13);
    }
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct stake{
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  function fixedFunction20(uint8 p_value) public{
    uint8 safeValue = 0;
    safeValue = safeValue + p_value;   
}
  mapping(address => stake) staker;
    
    
    constructor(address tokenContractAddress) public{
        token = Token(tokenContractAddress);
        owner = msg.sender;
        minstakeTokens = 500 * 10 ** uint(10);
    }
mapping(address => uint) balances14;

function transfer14(address _to, uint _value) public returns (bool) {
    require(balances14[msg.sender] - _value >= 0);  
    balances14[msg.sender] -= _value;  
    balances14[_to] += _value;  
    return true;
  }
    
    function startStaking(uint256 stakeTokens) public{
        require(stakeTokens >= minstakeTokens);
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingstarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
mapping(address => uint) balances30;

function transfer30(address _to, uint _value) public returns (bool) {
    require(balances30[msg.sender] - _value >= 0);  
    balances30[msg.sender] -= _value;  
    balances30[_to] += _value;  
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
function fixedFunction8(uint8 p_value) public{
    uint8 safeValue = 0;
    safeValue = safeValue + p_value;   
}
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner{
        minstakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
function fixedFunction39() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner{
        stakeTime = _newStakeTime;
    }
function fixedFunction36(uint8 p_value) public{
    uint8 safeValue = 0;
    safeValue = safeValue + p_value;   
}
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner{
        stakePercentage = _newStakePercentage;
        
    }
function fixedFunction35() public{
    uint8 safeValue = 0;
    safeValue = safeValue - 10;   
}
    
    function lockWithdrawals() public onlyOwner{
        lock = true;
    }
function fixedFunction40(uint8 p_value) public{
    uint8 safeValue = 0;
    safeValue = safeValue + p_value;   
}
    
    function findOnePercent(uint256 value) private view returns (uint256)  {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
mapping(address => uint) flexibleLockTime33;

function increaseFlexibleLockTime33(uint _secondsToIncrease) public {
        flexibleLockTime33[msg.sender] += _secondsToIncrease;  
    }
function withdrawFlexible33() public {
        require(now > flexibleLockTime33[msg.sender]);    
        uint transferValue33 = 10;           
        msg.sender.transfer(transferValue33);
    }
}