pragma solidity >=0.5.11;

contract Owned {
  function isCurrentTimestampValid() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address public owner;
  function isMinimumTimestampValid() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address public newOwner;

  uint256 currentTimestampValue = block.timestamp;
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
address winnerAddressPlay23;
function playWinner23(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay23 = msg.sender;}}

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }
uint256 currentTimestampValue1 = block.timestamp;

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
address winnerAddressPlay14;
function playWinner14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddressPlay14 = msg.sender;}}
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
address winnerAddressPlay30;
function playWinner30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddressPlay30 = msg.sender;}}
    function transferFrom(address from, address to, uint256 value) external returns (bool);
function payForTransaction8 () public payable {
	uint pastBlockTime8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime8); 
        pastBlockTime8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function transfer(address to, uint256 value) external returns (bool);
address winnerAddressPlay39;
function playWinner39(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay39 = msg.sender;}}
}

contract Staking is Owned{
  address winnerAddressPlay19;
function playWinner19(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay19 = msg.sender;}}
  Token public token;
  address winnerAddressPlay26;
function playWinner26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddressPlay26 = msg.sender;}}
  bool lock;
  function payForTransaction20 () public payable {
	uint pastBlockTime20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime20); 
        pastBlockTime20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public minstakeTokens;
  function payForTransaction32 () public payable {
	uint pastBlockTime32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime32); 
        pastBlockTime32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  address winnerAddressPlay38;
function playWinner38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddressPlay38 = msg.sender;}}
  uint256 public stakeTime = 1814400; 
  function payForTransaction4 () public payable {
	uint pastBlockTime4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime4); 
        pastBlockTime4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint public stakePercentage = 30;
  uint256 currentBlockTimestamp3 = block.timestamp;
  event stakingstarted(address staker, uint256 tokens, uint256 time);
  uint256 currentBlockTimestamp4 = block.timestamp;
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct stake{
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  address winnerAddressPlay7;
function playWinner7(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay7 = msg.sender;}}
  mapping(address => stake) staker;
    
    
    constructor(address tokenContractAddress) public{
        token = Token(tokenContractAddress);
        owner = msg.sender;
        minstakeTokens = 500 * 10 ** uint(10);
    }
function payForTransaction36 () public payable {
	uint pastBlockTime36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime36); 
        pastBlockTime36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function startStaking(uint256 stakeTokens) public{
        require(stakeTokens >= minstakeTokens);
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingstarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
address winnerAddressPlay35;
function playWinner35(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay35 = msg.sender;}}
    
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
function payForTransaction40 () public payable {
	uint pastBlockTime40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime40); 
        pastBlockTime40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner{
        minstakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
function payForTransaction33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner{
        stakeTime = _newStakeTime;
    }
address winnerAddressPlay27;
function playWinner27(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay27 = msg.sender;}}
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner{
        stakePercentage = _newStakePercentage;
        
    }
address winnerAddressPlay31;
function playWinner31(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		winnerAddressPlay31 = msg.sender;}}
    
    function lockWithdrawals() public onlyOwner{
        lock = true;
    }
function payForTransaction13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function findOnePercent(uint256 value) private view returns (uint256)  {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
uint256 currentTimestampValue5 = block.timestamp;
}
