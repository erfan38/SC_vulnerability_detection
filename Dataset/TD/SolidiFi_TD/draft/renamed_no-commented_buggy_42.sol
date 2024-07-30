pragma solidity ^0.5.11;

contract Owned {
  function checkvalues_9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address public owner;
  function checkvalues_25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address public newOwner;

  uint256 checkvaluesv_2 = block.timestamp;
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
address winner_23;
function play_23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_23 = msg.sender;}}

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }
uint256 checkingv_1 = block.timestamp;

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
address winner_14;
function play_14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_14 = msg.sender;}}
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
address winner_30;
function play_30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_30 = msg.sender;}}
    function transferFrom(address from, address to, uint256 value) external returns (bool);
function checking_8 () public payable {
	uint pastBlockTime_8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_8); 
        pastBlockTime_8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function transfer(address to, uint256 value) external returns (bool);
address winner_39;
function play_39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_39 = msg.sender;}}
}

contract Staking is Owned{
  address winner_19;
function play_19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_19 = msg.sender;}}
  Token public token;
  address winner_26;
function play_26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_26 = msg.sender;}}
  bool lock;
  function checking_20 () public payable {
	uint pastBlockTime_20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_20); 
        pastBlockTime_20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public stakeTokens;
  function balances_32 () public payable {
	uint pastBlockTime_32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_32); 
        pastBlockTime_32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  address winner_38;
function play_38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_38 = msg.sender;}}
  uint256 public stakeTime = 1814400; 
  function balances_4 () public payable {
	uint pastBlockTime_4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_4); 
        pastBlockTime_4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint public stakePercentage = 30;
  uint256 balancesv_3 = block.timestamp;
  event stakingstarted(address staker, uint256 tokens, uint256 time);
  uint256 balancesv_4 = block.timestamp;
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct stake{
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  address winner_7;
function play_7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_7 = msg.sender;}}
  mapping(address => stake) staker;
    
    
    constructor(address tokenContractAddress) public{
        token = Token(tokenContractAddress);
        owner = msg.sender;
        stakeTokens = 500 * 10 ** uint(10);
    }
function balances_36 () public payable {
	uint pastBlockTime_36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_36); 
        pastBlockTime_36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function startStaking() public{
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingstarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
address winner_35;
function play_35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_35 = msg.sender;}}
    
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
function balances_40 () public payable {
	uint pastBlockTime_40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_40); 
        pastBlockTime_40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner{
        stakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
function balances_33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner{
        stakeTime = _newStakeTime;
    }
address winner_27;
function play_27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_27 = msg.sender;}}
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner{
        stakePercentage = _newStakePercentage;
        
    }
address winner_31;
function play_31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_31 = msg.sender;}}
    
    function lockWithdrawals() public onlyOwner{
        lock = true;
    }
function balances_13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function findOnePercent(uint256 value) private view returns (uint256)  {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
uint256 balancesv_5 = block.timestamp;
}
