pragma solidity ^0.5.11;

contract Owned {
  address payable lastPlayer; // changed from lastPlayer_re_ent2
      uint jackpot; // changed from jackpot_re_ent2
	  function buyTicket() public{ // changed from buyTicket_re_ent2
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }
  address public owner;
  mapping(address => uint) balances; // changed from balances_re_ent17
function withdrawFunds (uint256 _weiToWithdraw) public { // changed from withdrawFunds_re_ent17
        require(balances[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances[msg.sender] -= _weiToWithdraw;
    }
  address public newOwner;

  bool notCalled = true; // changed from not_called_re_ent27
function performCheck() public{ // changed from bug_re_ent27
        require(notCalled);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalled = false;
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
mapping(address => uint) redeemableEther; // changed from redeemableEther_re_ent32
function claimReward() public { // changed from claimReward_re_ent32
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender]; // changed from transferValue_re_ent32
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balances2; // changed from balances_re_ent38
function withdrawFunds2 (uint256 _weiToWithdraw) public { // changed from withdrawFunds_re_ent38
        require(balances2[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances2[msg.sender] -= _weiToWithdraw;
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
mapping(address => uint) redeemableEther2; // changed from redeemableEther_re_ent4
function claimReward2() public { // changed from claimReward_re_ent4
        require(redeemableEther2[msg.sender] > 0);
        uint transferValue2 = redeemableEther2[msg.sender]; // changed from transferValue_re_ent4
        msg.sender.transfer(transferValue2);   
        redeemableEther2[msg.sender] = 0;
    }
    function transferFrom(address from, address to, uint256 value) external returns (bool);
uint256 counter =0; // changed from counter_re_ent7
function checkCallCount() public{ // changed from callme_re_ent7
        require(counter<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter += 1;
    }
    function transfer(address to, uint256 value) external returns (bool);
address payable lastPlayer2; // changed from lastPlayer_re_ent23
      uint jackpot2; // changed from jackpot_re_ent23
	  function buyTicket2() public{ // changed from buyTicket_re_ent23
	    if (!(lastPlayer2.send(jackpot2)))
        revert();
      lastPlayer2 = msg.sender;
      jackpot2    = address(this).balance;
    }
}

contract Staking is Owned{
  address payable lastPlayer3; // changed from lastPlayer_re_ent37
      uint jackpot3; // changed from jackpot_re_ent37
	  function buyTicket3() public{ // changed from buyTicket_re_ent37
	    if (!(lastPlayer3.send(jackpot3)))
        revert();
      lastPlayer3 = msg.sender;
      jackpot3    = address(this).balance;
    }
  Token public token;
  mapping(address => uint) balances3; // changed from balances_re_ent3
function withdrawFunds3 (uint256 _weiToWithdraw) public { // changed from withdrawFunds_re_ent3
        require(balances3[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances3[msg.sender] -= _weiToWithdraw;
    }
  bool lock;
  address payable lastPlayer4; // changed from lastPlayer_re_ent9
      uint jackpot4; // changed from jackpot_re_ent9
	  function buyTicket4() public{ // changed from buyTicket_re_ent9
	    (bool success,) = lastPlayer4.call.value(jackpot4)("");
	    if (!success)
	        revert();
      lastPlayer4 = msg.sender;
      jackpot4    = address(this).balance;
    }
  uint256 public stakeTokens;
  mapping(address => uint) redeemableEther3; // changed from redeemableEther_re_ent25
function claimReward3() public { // changed from claimReward_re_ent25
        require(redeemableEther3[msg.sender] > 0);
        uint transferValue3 = redeemableEther3[msg.sender]; // changed from transferValue_re_ent25
        msg.sender.transfer(transferValue3);   
        redeemableEther3[msg.sender] = 0;
    }
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  mapping(address => uint) userBalance2; // changed from userBalance_re_ent19
function withdrawBalance2() public{ // changed from withdrawBalance_re_ent19
        if( ! (msg.sender.send(userBalance2[msg.sender]) ) ){
            revert();
        }
        userBalance2[msg.sender] = 0;
    }
  uint256 public stakeTime = 1814400; 
  mapping(address => uint) userBalance3; // changed from userBalance_re_ent26
function withdrawBalance3() public{ // changed from withdrawBalance_re_ent26
        (bool success,)= msg.sender.call.value(userBalance3[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance3[msg.sender] = 0;
    }
  uint public stakePercentage = 30;
  mapping(address => uint) balances4; // changed from balances_re_ent31
function withdrawFunds4 (uint256 _weiToWithdraw) public { // changed from withdrawFunds_re_ent31
        require(balances4[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances4[msg.sender] -= _weiToWithdraw;
    }
  event stakingstarted(address staker, uint256 tokens, uint256 time);
  bool notCalled2 = true; // changed from not_called_re_ent13
function performCheck2() public{ // changed from bug_re_ent13
        require(notCalled2);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalled2 = false;
    }
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct stake{
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  bool notCalled3 = true; // changed from not_called_re_ent20
function performCheck3() public{ // changed from bug_re_ent20
        require(notCalled3);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalled3 = false;
    }
  mapping(address => stake) staker;
    
    
    constructor(address tokenContractAddress) public{
        token = Token(tokenContractAddress);
        owner = msg.sender;
        stakeTokens = 500 * 10 ** uint(10);
    }
uint256 counter2 =0; // changed from counter_re_ent14
function checkCallCount2() public{ // changed from callme_re_ent14
        require(counter2<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter2 += 1;
    }
    
    function startStaking() public{
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingstarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
address payable lastPlayer5; // changed from lastPlayer_re_ent30
      uint jackpot5; // changed from jackpot_re_ent30
	  function buyTicket5() public{ // changed from buyTicket_re_ent30
	    if (!(lastPlayer5.send(jackpot5)))
        revert();
      lastPlayer5 = msg.sender;
      jackpot5    = address(this).balance;
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
mapping(address => uint) balances5; // changed from balances_re_ent8
    function withdrawFunds5() public { // changed from withdraw_balances_re_ent8
       (bool success,) = msg.sender.call.value(balances5[msg.sender])("");
       if (success)
          balances5[msg.sender] = 0;
      }
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner{
        stakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
mapping(address => uint) redeemableEther4; // changed from redeemableEther_re_ent39
function claimReward4() public { // changed from claimReward_re_ent39 
        require(redeemableEther4[msg.sender] > 0);
        uint transferValue4 = redeemableEther4[msg.sender]; // changed from transferValue_re_ent39
        msg.sender.transfer(transferValue4);   
        redeemableEther4[msg.sender] = 0;
    }
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner{
        stakeTime = _newStakeTime;
    }
mapping(address => uint) balances6; // changed from balances_re_ent36
    function withdrawFunds6() public { // changed from withdraw_balances_re_ent36
       if (msg.sender.send(balances6[msg.sender ]))
          balances6[msg.sender] = 0;
      }
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner{
        stakePercentage = _newStakePercentage;
        
    }
uint256 counter3 =0; // changed from counter_re_ent35
function checkCallCount3() public{ // changed from callme_re_ent35
        require(counter3<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter3 += 1;
    }
    
    function lockWithdrawals() public onlyOwner{
        lock = true;
    }
mapping(address => uint) userBalance4; // changed from userBalance_re_ent40
function withdrawBalance4() public{ // changed from withdrawBalance_re_ent40
        (bool success,)=msg.sender.call.value(userBalance4[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance4[msg.sender] = 0;
    }
    
    function findOnePercent(uint256 value) private view returns (uint256)  {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
mapping(address => uint) userBalance5; // changed from userBalance_re_ent33
function withdrawBalance5() public{ // changed from withdrawBalance_re_ent33
        (bool success,)= msg.sender.call.value(userBalance5[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance5[msg.sender] = 0;
    }
}