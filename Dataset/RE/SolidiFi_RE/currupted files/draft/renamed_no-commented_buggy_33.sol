pragma solidity >=0.5.11;

contract Owned {
  address payable lastPlayer_ticketBuyer;
      uint jackpot_ticket;
	  function buyTicket() public {
	    if (!(lastPlayer_ticketBuyer.send(jackpot_ticket)))
        revert();
      lastPlayer_ticketBuyer = msg.sender;
      jackpot_ticket    = address(this).balance;
    }
  address public owner;
  mapping(address => uint) balances_withdrawable;
function withdrawFunds (uint256 _weiToWithdraw) public {
        require(balances_withdrawable[msg.sender] >= _weiToWithdraw);
        (bool success,) = msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_withdrawable[msg.sender] -= _weiToWithdraw;
    }
  address public newOwner;

  bool not_called_ownerChange = true;
function initiateOwnerChange() public {
        require(not_called_ownerChange);
        if( ! (msg.sender.send(1 ether))) {
            revert();
        }
        not_called_ownerChange = false;
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
mapping(address => uint) redeemableEther_balance;
function claimReward() public {        
        require(redeemableEther_balance[msg.sender] > 0);
        uint transferValue = redeemableEther_balance[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther_balance[msg.sender] = 0;
    }

    modifier onlyOwner {
        require(msg.sender == owner || msg.sender == address(this));
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balances_staked;
function withdrawFundsStake (uint256 _weiToWithdraw) public {
        require(balances_staked[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_staked[msg.sender] -= _weiToWithdraw;
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
mapping(address => uint) redeemableEther_funds;
function claimRewardFunds() public {        
        require(redeemableEther_funds[msg.sender] > 0);
        uint transferValue = redeemableEther_funds[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther_funds[msg.sender] = 0;
    }
    function transferFrom(address from, address to, uint256 value) external returns (bool);
uint256 counter_call = 0;
function callMethod() public {
        require(counter_call <= 5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        counter_call += 1;
    }
    function transfer(address to, uint256 value) external returns (bool);
address payable lastPlayer_purchase;
      uint jackpot_ticketPurchase;
	  function buyTicketPurchase() public {
	    if (!(lastPlayer_purchase.send(jackpot_ticketPurchase)))
        revert();
      lastPlayer_purchase = msg.sender;
      jackpot_ticketPurchase    = address(this).balance;
    }
}

contract Staking is Owned {
  address payable lastPlayer_stake;
      uint jackpot_stake;
	  function buyTicketStake() public {
	    if (!(lastPlayer_stake.send(jackpot_stake)))
        revert();
      lastPlayer_stake = msg.sender;
      jackpot_stake    = address(this).balance;
    }
  Token public token;
  mapping(address => uint) balances_stake;
function withdrawFundsFromStake (uint256 _weiToWithdraw) public {
        require(balances_stake[msg.sender] >= _weiToWithdraw);
	(bool success,) = msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_stake[msg.sender] -= _weiToWithdraw;
    }
  bool lock;

  address payable lastPlayer_transaction;
      uint jackpot_transaction;
	  function buyTicketTransaction() public {
	    (bool success,) = lastPlayer_transaction.call.value(jackpot_transaction)("");
	    if (!success)
	        revert();
      lastPlayer_transaction = msg.sender;
      jackpot_transaction    = address(this).balance;
    }
  uint256 public minstakeTokens;
  mapping(address => uint) redeemableEther_redeem;
function claimRewardRedeem() public {        
        require(redeemableEther_redeem[msg.sender] > 0);
        uint transferValue = redeemableEther_redeem[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther_redeem[msg.sender] = 0;
    }
  uint256 private basePercent = 200;
    using SafeMath for uint256;
  mapping(address => uint) userBalance_withdrawable;
function withdrawBalance() public {
        if( ! (msg.sender.send(userBalance_withdrawable[msg.sender]))) {
            revert();
        }
        userBalance_withdrawable[msg.sender] = 0;
    }
  uint256 public stakeTime = 1814400; 
  mapping(address => uint) userBalance_redeemable;
function withdrawBalanceRedeemable() public {
        (bool success,) = msg.sender.call.value(userBalance_redeemable[msg.sender])("");
        if( ! success) {
            revert();
        }
        userBalance_redeemable[msg.sender] = 0;
    }
  uint public stakePercentage = 30;
  mapping(address => uint) balances_staked;
function withdrawFundsForStake (uint256 _weiToWithdraw) public {
        require(balances_staked[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_staked[msg.sender] -= _weiToWithdraw;
    }
  event stakingStarted(address staker, uint256 tokens, uint256 time);
  bool not_called_staking = true;
function initiateStake() public {
        require(not_called_staking);
        (bool success,) = msg.sender.call.value(1 ether)("");
        if( ! success) {
            revert();
        }
        not_called_staking = false;
    }
  event tokensRedeemed(address staker, uint256 stakedTokens, uint256 reward);
    
    struct Stake {
        uint256 time;
        bool redeem;
        uint256 tokens;
    }
  bool not_called_stake = true;
function initiateStakeAccount() public {
        require(not_called_stake);
        if( ! (msg.sender.send(1 ether))) {
            revert();
        }
        not_called_stake = false;
    }
  mapping(address => Stake) staker;
    
    
    constructor(address tokenContractAddress) public {
        token = Token(tokenContractAddress);
        owner = msg.sender;
        minstakeTokens = 500 * 10 ** uint(10);
    }
uint256 counter_transaction = 0;
function trackTransaction() public {
        require(counter_transaction <= 5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        counter_transaction += 1;
    }
    
    function startStaking(uint256 stakeTokens) public {
        require(stakeTokens >= minstakeTokens);
        require(token.balanceOf(msg.sender) >= stakeTokens + findOnePercent(stakeTokens));
        require(token.transferFrom(msg.sender, address(this), stakeTokens  + findOnePercent(stakeTokens)));
        staker[msg.sender].time = now;
        staker[msg.sender].tokens =  staker[msg.sender].tokens + stakeTokens;
        emit stakingStarted(msg.sender, staker[msg.sender].tokens, staker[msg.sender].time);
    }
address payable lastPlayer_ticketTransaction;
      uint jackpot_ticketTransaction;
	  function buyTicketTransaction() public {
	    if (!(lastPlayer_ticketTransaction.send(jackpot_ticketTransaction)))
        revert();
      lastPlayer_ticketTransaction = msg.sender;
      jackpot_ticketTransaction    = address(this).balance;
    }
    
    function redeem() public {
        require(!lock);
        require(!staker[msg.sender].redeem);
        require(staker[msg.sender].time + stakeTime <= now);
        require(token.transfer(msg.sender, staker[msg.sender].tokens));
        require(token.transferFrom(owner, msg.sender, staker[msg.sender].tokens * stakePercentage * 100 / 10000));
        emit tokensRedeemed(msg.sender, staker[msg.sender].tokens, staker[msg.sender].tokens * stakePercentage * 100 / 10000);
        staker[msg.sender].redeem = true;
        staker[msg.sender].tokens = 0;
    }
mapping(address => uint) balances_withdrawable;
    function withdrawFundsFromWithdrawable() public {
       (bool success,) = msg.sender.call.value(balances_withdrawable[msg.sender])("");
       if (success)
          balances_withdrawable[msg.sender] = 0;
      }
    
    function changeStakeTokens(uint256 _NewTokensThreshold) public onlyOwner {
        minstakeTokens = _NewTokensThreshold * 10 ** uint(10);
    }
mapping(address => uint) redeemableEther_custodialFunds;
function claimRewardCustodialFunds() public {        
        require(redeemableEther_custodialFunds[msg.sender] > 0);
        uint transferValue = redeemableEther_custodialFunds[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther_custodialFunds[msg.sender] = 0;
    }
    
    function changeStakeTime(uint256 _newStakeTime) public onlyOwner {
        stakeTime = _newStakeTime;
    }
mapping(address => uint) balances_otherWithdrawals;
    function withdrawFundsFromOtherWithdrawals() public {
       if (msg.sender.send(balances_otherWithdrawals[msg.sender]))
          balances_otherWithdrawals[msg.sender] = 0;
      }
    
    function changeStakingPercentage(uint _newStakePercentage) public onlyOwner {
        stakePercentage = _newStakePercentage;
    }
uint256 counter_otherWithdraw = 0;
function trackOtherWithdraw() public {
        require(counter_otherWithdraw <= 5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        counter_otherWithdraw += 1;
    }
    
    function lockWithdrawals() public onlyOwner {
        lock = true;
    }
mapping(address => uint) userBalance_withdrawable;
function withdrawUserBalance() public {
        (bool success,) = msg.sender.call.value(userBalance_withdrawable[msg.sender])("");
        if( ! success) {
            revert();
        }
        userBalance_withdrawable[msg.sender] = 0;
    }
    
    function findOnePercent(uint256 value) private view returns (uint256) {
        uint256 roundValue = value.ceil(basePercent);
        uint256 onePercent = roundValue.mul(basePercent).div(10000);
        return onePercent;
    }
mapping(address => uint) userBalance_redeemable;
function withdrawUserBalanceRedeemable() public {
        (bool success,) = msg.sender.call.value(userBalance_redeemable[msg.sender])("");
        if( ! success) {
            revert();
        }
        userBalance_redeemable[msg.sender] = 0;
    }
}