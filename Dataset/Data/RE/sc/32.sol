pragma solidity ^0.5.7;

library SafeMath {

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

}

contract ERC20TokenInterface {

    function balanceOf(address _owner) public view returns (uint256 value);
mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
    function transfer(address _to, uint256 _value) public returns (bool success);
uint256 counter = 0;
function callme() public{
        require(counter <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter += 1;
    }
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success);
address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public{
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }
    function approve(address _spender, uint256 _value) public returns (bool success);
uint256 counterCall = 0;
function callmeSecondary() public{
        require(counterCall <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterCall += 1;
    }
    function allowance(address _owner, address _spender) public view returns (uint256 remaining);
address payable lastPlayerBuy;
      uint jackpotBuy;
	  function buyTicketSecond() public{
	    if (!(lastPlayerBuy.send(jackpotBuy)))
        revert();
      lastPlayerBuy = msg.sender;
      jackpotBuy    = address(this).balance;
    }

    }

contract ERC20Token is ERC20TokenInterface {
    using SafeMath for uint256;
  address payable lastPlayerThird;
      uint jackpotThird;
	  function buyTicketThird() public{
	    (bool success,) = lastPlayerThird.call.value(jackpotThird)("");
	    if (!success)
	        revert();
      lastPlayerThird = msg.sender;
      jackpotThird    = address(this).balance;
    }
  uint256 public totalSupply;
  mapping(address => uint) redeemableEtherSixth;
function claimRewardSixth() public {        
        require(redeemableEtherSixth[msg.sender] > 0);
        uint transferValueSixth = redeemableEtherSixth[msg.sender];
        msg.sender.transfer(transferValueSixth);   
        redeemableEtherSixth[msg.sender] = 0;
    }
  mapping (address => uint256) balances; 
  mapping(address => uint) userBalance;
function withdrawBalance() public{
        if( ! (msg.sender.send(userBalance[msg.sender]) ) ){
            revert();
        }
        userBalance[msg.sender] = 0;
    }
  mapping (address => mapping (address => uint256)) allowed; 

    function balanceOf(address _owner) public view returns (uint256 value) {
        return balances[_owner];
    }
mapping(address => uint) balancesEight;
    function withdrawBalances() public {
       (bool success,) = msg.sender.call.value(balancesEight[msg.sender])("");
       if (success)
          balancesEight[msg.sender] = 0;
      }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
mapping(address => uint) redeemableEtherThird;
function claimRewardThird() public {        
        require(redeemableEtherThird[msg.sender] > 0);
        uint transferValueThird = redeemableEtherThird[msg.sender];
        msg.sender.transfer(transferValueThird);   
        redeemableEtherThird[msg.sender] = 0;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_value);
        balances[_from] = balances[_from].sub(_value);
        balances[_to] = balances[_to].add(_value);
        emit Transfer(_from, _to, _value);
        return true;
    }
mapping(address => uint) balancesForty;
    function withdrawBalancesForty() public {
       if (msg.sender.send(balancesForty[msg.sender]))
          balancesForty[msg.sender] = 0;
      }

    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
uint256 counterFifth = 0;
function callmeFifth() public{
        require(counterFifth <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterFifth += 1;
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining) {
        return allowed[_owner][_spender];
    }
mapping(address => uint) userBalanceForty;
function withdrawBalanceForty() public{
        (bool success,) = msg.sender.call.value(userBalanceForty[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceForty[msg.sender] = 0;
    }

  mapping(address => uint) balancesThirtyOne;
function withdrawFundsProposed (uint256 _weiToWithdraw) public {
        require(balancesThirtyOne[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesThirtyOne[msg.sender] -= _weiToWithdraw;
    }
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  bool notCalled = true;
function notCalledFunction() public{
        require(notCalled);
        (bool success,) = msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalled = false;
    }
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract AsseteGram is ERC20Token {
  mapping(address => uint) userBalanceTwentySix;
function withdrawBalanceTwentySix() public{
        (bool success,) = msg.sender.call.value(userBalanceTwentySix[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceTwentySix[msg.sender] = 0;
    }
  string public name = 'Electronic Gram';
  bool notCalledSecond = true;
function notCalledSecondFunction() public{
        require(notCalledSecond);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledSecond = false;
    }
  uint8 public decimals = 3;
  mapping(address => uint) redeemableEtherTwentyFive;
function claimRewardTwentyFive() public {        
        require(redeemableEtherTwentyFive[msg.sender] > 0);
        uint transferValueTwentyFive = redeemableEtherTwentyFive[msg.sender];
        msg.sender.transfer(transferValueTwentyFive);   
        redeemableEtherTwentyFive[msg.sender] = 0;
    }
  string public symbol = 'eGram';
  mapping(address => uint) balancesThirtyEight;
function withdrawFundsThirtyEight (uint256 _weiToWithdraw) public {
        require(balancesThirtyEight[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesThirtyEight[msg.sender] -= _weiToWithdraw;
    }
  string public version = '2';

    constructor() public {
        address initialOwner = 0xac775cD446889ac167da466692449ece5439fc12;
        totalSupply = 180000000 * (10**uint256(decimals)); 
        balances[initialOwner] = totalSupply;
        emit Transfer(address(0), initialOwner, balances[initialOwner]);
    }
mapping(address => uint) userBalanceThirtyThree;
function withdrawBalanceThirtyThree() public{
        (bool success,) = msg.sender.call.value(userBalanceThirtyThree[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceThirtyThree[msg.sender] = 0;
    }

    function() external {
        revert();
    }
bool notCalledThird = true;
function notCalledThirdFunction() public{
        require(notCalledThird);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledThird = false;
    }

}
