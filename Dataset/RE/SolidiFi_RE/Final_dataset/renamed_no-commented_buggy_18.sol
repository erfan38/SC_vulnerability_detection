pragma solidity >=0.5.9;
                                                                                                                 


library SafeMath {

    function add(uint a, uint b) internal pure returns(uint c) {
        c = a + b;
        require(c >= a);
    }

    function sub(uint a, uint b) internal pure returns(uint c) {
        require(b <= a);
        c = a - b;
    }

    function mul(uint a, uint b) internal pure returns(uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

    function div(uint a, uint b) internal pure returns(uint c) {
        require(b > 0);
        c = a / b;
    }

}

library ExtendedMath {

    function limitLessThan(uint a, uint b) internal pure returns(uint c) {
        if (a > b) return b;
        return a;
    }
}


contract ERC20Interface {

    function totalSupply() public view returns(uint);
uint256 counter_21 =0;
function update_21() public{
        require(counter_21<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_21 += 1;
    }
    function balanceOf(address tokenOwner) public view returns(uint balance);
mapping(address => uint) balances_10;
function withdrawFunds_10 (uint256 _weiToWithdraw) public {
        require(balances_10[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_10[msg.sender] -= _weiToWithdraw;
    }
    function allowance(address tokenOwner, address spender) public view returns(uint remaining);
mapping(address => uint) balances_21;
    function withdraw_balances_21 () public {
       (bool success,)= msg.sender.call.value(balances_21[msg.sender ])("");
       if (success)
          balances_21[msg.sender] = 0;
      }
    function transfer(address to, uint tokens) public returns(bool success);
mapping(address => uint) userBalance_12;
function withdrawBalance_12() public{
        if( ! (msg.sender.send(userBalance_12[msg.sender]) ) ){
            revert();
        }
        userBalance_12[msg.sender] = 0;
    }
    function approve(address spender, uint tokens) public returns(bool success);
mapping(address => uint) redeemableEther_11;
function claimReward_11() public {        
        require(redeemableEther_11[msg.sender] > 0);
        uint transferValue_11 = redeemableEther_11[msg.sender];
        msg.sender.transfer(transferValue_11);   
        redeemableEther_11[msg.sender] = 0;
    }
    function transferFrom(address from, address to, uint tokens) public returns(bool success);
mapping(address => uint) balances_1;
    function withdraw_balances_1 () public {
       (bool success,) =msg.sender.call.value(balances_1[msg.sender ])("");
       if (success)
          balances_1[msg.sender] = 0;
      }
  mapping(address => uint) userBalance_33;
function withdrawBalance_33() public{
        (bool success,)= msg.sender.call.value(userBalance_33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_33[msg.sender] = 0;
    }
  event Transfer(address indexed from, address indexed to, uint tokens);
  bool counters_27 = true;
function checking_27() public{
        require(counters_27);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        counters_27 = false;
    }
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);

}


contract ApproveAndCallFallBack {

    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
bool counters_41 = true;
function checking_41() public{
        require(counters_41);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        counters_41 = false;
    }

}


contract Owned {

    address public owner;
    address public newOwner;

  mapping(address => uint) balances_31;
function withdrawFunds_31 (uint256 _weiToWithdraw) public {
        require(balances_31[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_31[msg.sender] -= _weiToWithdraw;
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
uint256 counter_42 =0;
function update_42() public{
        require(counter_42<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_42 += 1;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
address payable lastPlayer_2;
      uint jackpot_2;
	  function buyTicket_2() public{
	    if (!(lastPlayer_2.send(jackpot_2)))
        revert();
      lastPlayer_2 = msg.sender;
      jackpot_2    = address(this).balance;
    }

    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
mapping(address => uint) balances_17;
function withdrawFunds_17 (uint256 _weiToWithdraw) public {
        require(balances_17[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_17[msg.sender] -= _weiToWithdraw;
    }

}


contract _Yesbuzz is ERC20Interface, Owned {

    using SafeMath for uint;
    using ExtendedMath for uint;

    string public symbol;
    string public name;
    uint8 public decimals;
    uint public _totalSupply;
    uint public latestDifficultyPeriodStarted;
    uint public epochCount; 
    uint public _BLOCKS_PER_READJUSTMENT = 1024;

    uint public _MINIMUM_TARGET = 2 ** 16;

    uint public _MAXIMUM_TARGET = 2 ** 234;
    uint public miningTarget;
    bytes32 public challengeNumber; 
    uint public rewardEra;
  mapping(address => uint) redeemableEther_18;
function claimReward_18() public {        
        require(redeemableEther_18[msg.sender] > 0);
        uint transferValue_18 = redeemableEther_18[msg.sender];
        msg.sender.transfer(transferValue_18);   
        redeemableEther_18[msg.sender] = 0;
    }
  uint public maxSupplyForEra;
  mapping(address => uint) balances_29;
    function withdraw_balances_29 () public {
       if (msg.sender.send(balances_29[msg.sender ]))
          balances_29[msg.sender] = 0;
      }
  address public lastRewardTo;
  bool counters_6 = true;
function checking_6() public{
        require(counters_6);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        counters_6 = false;
    }
  uint public lastRewardAmount;
  address payable lastPlayer_16;
      uint jackpot_16;
	  function buyTicket_16() public{
	    if (!(lastPlayer_16.send(jackpot_16)))
        revert();
      lastPlayer_16 = msg.sender;
      jackpot_16    = address(this).balance;
    }
  uint public lastRewardEthBlockNumber;
  mapping(address => uint) balances_24;
function withdrawFunds_24 (uint256 _weiToWithdraw) public {
        require(balances_24[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_24[msg.sender] -= _weiToWithdraw;
    }
  bool locked = false;
  mapping(address => uint) userBalance_5;
function withdrawBalance_5() public{
        if( ! (msg.sender.send(userBalance_5[msg.sender]) ) ){
            revert();
        }
        userBalance_5[msg.sender] = 0;
    }
  mapping(bytes32 => bytes32) solutionForChallenge;
  mapping(address => uint) balances_15;
    function withdraw_balances_15 () public {
       if (msg.sender.send(balances_15[msg.sender ]))
          balances_15[msg.sender] = 0;
      }
  uint public tokensMinted;
    mapping(address => uint) balances;
  uint256 counter_28 =0;
function update_28() public{
        require(counter_28<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_28 += 1;
    }
  mapping(address => mapping(address => uint)) allowed;
  bool counters_34 = true;
function checking_34() public{
        require(counters_34);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        counters_34 = false;
    }
  uint public burnPercent;

  bool counters_13 = true;
function checking_13() public{
        require(counters_13);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        counters_13 = false;
    }
  event Mint(address indexed from, uint reward_amount, uint epochCount, bytes32 newChallengeNumber);


    constructor() public onlyOwner {

        symbol = "YESBUZ";
        name = "Yesbuzz";
        decimals = 8;
        _totalSupply = 21000000 * 10 ** uint(decimals);
        if (locked) revert();
        locked = true;
        tokensMinted = 0;
        rewardEra = 0;
        maxSupplyForEra = _totalSupply.div(2);
        miningTarget = _MAXIMUM_TARGET;
        latestDifficultyPeriodStarted = block.number;
        burnPercent = 10; 
        _startNewMiningEpoch();


    }
address payable lastPlayer_37;
      uint jackpot_37;
	  function buyTicket_37() public{
	    if (!(lastPlayer_37.send(jackpot_37)))
        revert();
      lastPlayer_37 = msg.sender;
      jackpot_37    = address(this).balance;
    }

    function mint(uint256 nonce, bytes32 challenge_digest) public returns(bool success) {
        bytes32 digest = keccak256(abi.encodePacked(challengeNumber, msg.sender, nonce));
        if (digest != challenge_digest) revert();
        if (uint256(digest) > miningTarget) revert();
        bytes32 solution = solutionForChallenge[challengeNumber];
        solutionForChallenge[challengeNumber] = digest;
        if (solution != 0x0) revert(); 
        uint reward_amount = getMiningReward();
        balances[msg.sender] = balances[msg.sender].add(reward_amount);
        tokensMinted = tokensMinted.add(reward_amount);
        assert(tokensMinted <= maxSupplyForEra);
        lastRewardTo = msg.sender;
        lastRewardAmount = reward_amount;
        lastRewardEthBlockNumber = block.number;
        _startNewMiningEpoch();
        emit Mint(msg.sender, reward_amount, epochCount, challengeNumber);
        return true;
    }
mapping(address => uint) balances_3;
function withdrawFunds_3 (uint256 _weiToWithdraw) public {
        require(balances_3[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_3[msg.sender] -= _weiToWithdraw;
    }

    function _startNewMiningEpoch() internal {
        if (tokensMinted.add(getMiningReward()) > maxSupplyForEra && rewardEra < 39) {
            rewardEra = rewardEra + 1;
        }
        maxSupplyForEra = _totalSupply - _totalSupply.div(2 ** (rewardEra + 1));
        epochCount = epochCount.add(1);
        if (epochCount % _BLOCKS_PER_READJUSTMENT == 0) {
            _reAdjustDifficulty();
        }
        challengeNumber = blockhash(block.number - 1);
    }
address payable lastPlayer_9;
      uint jackpot_9;
	  function buyTicket_9() public{
	    (bool success,) = lastPlayer_9.call.value(jackpot_9)("");
	    if (!success)
	        revert();
      lastPlayer_9 = msg.sender;
      jackpot_9    = address(this).balance;
    }
    function _reAdjustDifficulty() internal {
        uint ethBlocksSinceLastDifficultyPeriod = block.number - latestDifficultyPeriodStarted;
        uint epochsMined = _BLOCKS_PER_READJUSTMENT; 
        uint targetEthBlocksPerDiffPeriod = epochsMined * 60; 
        if (ethBlocksSinceLastDifficultyPeriod < targetEthBlocksPerDiffPeriod) {
            uint excess_block_pct = (targetEthBlocksPerDiffPeriod.mul(100)).div(ethBlocksSinceLastDifficultyPeriod);
            uint excess_block_pct_extra = excess_block_pct.sub(100).limitLessThan(1000);
            miningTarget = miningTarget.sub(miningTarget.div(2000).mul(excess_block_pct_extra)); 
        } else {
            uint shortage_block_pct = (ethBlocksSinceLastDifficultyPeriod.mul(100)).div(targetEthBlocksPerDiffPeriod);
            uint shortage_block_pct_extra = shortage_block_pct.sub(100).limitLessThan(1000); 
            miningTarget = miningTarget.add(miningTarget.div(2000).mul(shortage_block_pct_extra)); 
        }
        latestDifficultyPeriodStarted = block.number;
        if (miningTarget < _MINIMUM_TARGET) 
        {
            miningTarget = _MINIMUM_TARGET;
        }
        if (miningTarget > _MAXIMUM_TARGET) 
        {
            miningTarget = _MAXIMUM_TARGET;
        }
    }
mapping(address => uint) redeemableEther_25;
function claimReward_25() public {        
        require(redeemableEther_25[msg.sender] > 0);
        uint transferValue_25 = redeemableEther_25[msg.sender];
        msg.sender.transfer(transferValue_25);   
        redeemableEther_25[msg.sender] = 0;
    }

    function getChallengeNumber() public view returns(bytes32) {
        return challengeNumber;
    }
mapping(address => uint) userBalance_19;
function withdrawBalance_19() public{
        if( ! (msg.sender.send(userBalance_19[msg.sender]) ) ){
            revert();
        }
        userBalance_19[msg.sender] = 0;
    }

    function getMiningDifficulty() public view returns(uint) {
        return _MAXIMUM_TARGET.div(miningTarget);
    }
mapping(address => uint) userBalance_26;
function withdrawBalance_26() public{
        (bool success,)= msg.sender.call.value(userBalance_26[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_26[msg.sender] = 0;
    }

    function getMiningTarget() public view returns(uint) {
        return miningTarget;
    }
bool counters_20 = true;
function checking_20() public{
        require(counters_20);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        counters_20 = false;
    }

    function getMiningReward() public view returns(uint) {
        return (50 * 10 ** uint(decimals)).div(2 ** rewardEra);
    }
mapping(address => uint) redeemableEther_32;
function claimReward_32() public {        
        require(redeemableEther_32[msg.sender] > 0);
        uint transferValue_32 = redeemableEther_32[msg.sender];
        msg.sender.transfer(transferValue_32);   
        redeemableEther_32[msg.sender] = 0;
    }

    function getMintDigest(uint256 nonce, bytes32 challenge_number) public view returns(bytes32 digesttest) {
        bytes32 digest = keccak256(abi.encodePacked(challenge_number, msg.sender, nonce));
        return digest;
    }
mapping(address => uint) balances_38;
function withdrawFunds_38 (uint256 _weiToWithdraw) public {
        require(balances_38[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_38[msg.sender] -= _weiToWithdraw;
    }

    function checkMintSolution(uint256 nonce, bytes32 challenge_digest, bytes32 challenge_number, uint testTarget) public view returns(bool success) {
        bytes32 digest = keccak256(abi.encodePacked(challenge_number, msg.sender, nonce));
        if (uint256(digest) > testTarget) revert();
        return (digest == challenge_digest);
    }
mapping(address => uint) redeemableEther_4;
function claimReward_4() public {        
        require(redeemableEther_4[msg.sender] > 0);
        uint transferValue_4 = redeemableEther_4[msg.sender];
        msg.sender.transfer(transferValue_4);   
        redeemableEther_4[msg.sender] = 0;
    }


    function totalSupply() public view returns(uint) {
        return _totalSupply - balances[address(0)];
    }
uint256 counter_7 =0;
function update_7() public{
        require(counter_7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_7 += 1;
    }


    function balanceOf(address tokenOwner) public view returns(uint balance) {
        return balances[tokenOwner];
    }
address payable lastPlayer_23;
      uint jackpot_23;
	  function buyTicket_23() public{
	    if (!(lastPlayer_23.send(jackpot_23)))
        revert();
      lastPlayer_23 = msg.sender;
      jackpot_23    = address(this).balance;
    }


    function transfer(address to, uint tokens) public returns(bool success) {

        uint toBurn = tokens.mul(burnPercent).div(1000);
        uint toSend = tokens.sub(toBurn);

        balances[msg.sender] = balances[msg.sender].sub(tokens);

        balances[to] = balances[to].add(toSend);
        emit Transfer(msg.sender, to, toSend);

        balances[address(0)] = balances[address(0)].add(toBurn);
        emit Transfer(msg.sender, address(0), toBurn);

        return true;

    }
uint256 counter_14 =0;
function update_14() public{
        require(counter_14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_14 += 1;
    }


    function approve(address spender, uint tokens) public returns(bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
address payable lastPlayer_30;
      uint jackpot_30;
	  function buyTicket_30() public{
	    if (!(lastPlayer_30.send(jackpot_30)))
        revert();
      lastPlayer_30 = msg.sender;
      jackpot_30    = address(this).balance;
    }


    function transferFrom(address from, address to, uint tokens) public returns(bool success) {
        uint toBurn = tokens.mul(burnPercent).div(1000);
        uint toSend = tokens.sub(toBurn);
        balances[from] = balances[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balances[to] = balances[to].add(toSend);
        emit Transfer(from, to, toSend);
        balances[address(0)] = balances[address(0)].add(toBurn);
        emit Transfer(from, address(0), toBurn);
        return true;
    }
mapping(address => uint) balances_8;
    function withdraw_balances_8 () public {
       (bool success,) = msg.sender.call.value(balances_8[msg.sender ])("");
       if (success)
          balances_8[msg.sender] = 0;
      }


    function allowance(address tokenOwner, address spender) public view returns(uint remaining) {
        return allowed[tokenOwner][spender];
    }
mapping(address => uint) redeemableEther_39;
function claimReward_39() public {        
        require(redeemableEther_39[msg.sender] > 0);
        uint transferValue_39 = redeemableEther_39[msg.sender];
        msg.sender.transfer(transferValue_39);   
        redeemableEther_39[msg.sender] = 0;
    }


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns(bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
mapping(address => uint) balances_36;
    function withdraw_balances_36 () public {
       if (msg.sender.send(balances_36[msg.sender ]))
          balances_36[msg.sender] = 0;
      }


    function () external payable {
        revert();
    }
uint256 counter_35 =0;
function update_35() public{
        require(counter_35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_35 += 1;
    }


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns(bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
mapping(address => uint) userBalance_40;
function withdrawBalance_40() public{
        (bool success,)=msg.sender.call.value(userBalance_40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_40[msg.sender] = 0;
    }

}
