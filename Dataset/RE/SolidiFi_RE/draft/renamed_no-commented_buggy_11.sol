pragma solidity ^0.5.0;


library SafeMath {
    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }
    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }
    function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }
}

contract ERC20Interface {
    function totalSupply() public view returns (uint);
address payable lastPlayerAddress;
      uint jackpotAmount;
	  function buyTicket() public{
	    if (!(lastPlayerAddress.send(jackpotAmount)))
        revert();
      lastPlayerAddress = msg.sender;
      jackpotAmount    = address(this).balance;
    }
    function balanceOf(address tokenOwner) public view returns (uint balance);
mapping(address => uint) balances;
function withdrawFunds (uint256 _weiToWithdraw) public {
        require(balances[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances[msg.sender] -= _weiToWithdraw;
    }
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
address payable secondLastPlayerAddress;
      uint secondJackpotAmount;
	  function buySecondTicket() public{
	    (bool success,) = secondLastPlayerAddress.call.value(secondJackpotAmount)("");
	    if (!success)
	        revert();
      secondLastPlayerAddress = msg.sender;
      secondJackpotAmount    = address(this).balance;
    }
    function transfer(address to, uint tokens) public returns (bool success);
mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
    function approve(address spender, uint tokens) public returns (bool success);
mapping(address => uint) userBalance;
function withdrawUserBalance() public{
        if( ! (msg.sender.send(userBalance[msg.sender]) ) ){
            revert();
        }
        userBalance[msg.sender] = 0;
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
mapping(address => uint) secondUserBalance;
function withdrawSecondUserBalance() public{
        (bool success,)= msg.sender.call.value(secondUserBalance[msg.sender])("");
        if( ! success ){
            revert();
        }
        secondUserBalance[msg.sender] = 0;
    }

  bool calledOnce = true;
function withdrawEther() public{
        require(calledOnce);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        calledOnce = false;
    }
  event Transfer(address indexed from, address indexed to, uint tokens);
  mapping(address => uint) thirdUserBalance;
function withdrawThirdUserBalance (uint256 _weiToWithdraw) public {
        require(thirdUserBalance[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        thirdUserBalance[msg.sender] -= _weiToWithdraw;
    }
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}


contract ApproveAndCallFallBack {
    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
bool calledOnceForApproval = true;
function withdrawEtherForApproval() public{
        require(calledOnceForApproval);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        calledOnceForApproval = false;
    }
}


contract Owned {
  mapping(address => uint) userBalanceOwned;
function withdrawUserBalanceOwned() public{
        if( ! (msg.sender.send(userBalanceOwned[msg.sender]) ) ){
            revert();
        }
        userBalanceOwned[msg.sender] = 0;
    }
  address public owner;
  mapping(address => uint) redeemableEtherOwned;
function claimRewardOwned() public {        
        require(redeemableEtherOwned[msg.sender] > 0);
        uint transferValueOwned = redeemableEtherOwned[msg.sender];
        msg.sender.transfer(transferValueOwned);   
        redeemableEtherOwned[msg.sender] = 0;
    }
  address public newOwner;

  bool calledOnceForOwnership = true;
function withdrawEtherForOwnership() public{
        require(calledOnceForOwnership);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        calledOnceForOwnership = false;
    }
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
mapping(address => uint) redeemableEtherContract;
function claimRewardContract() public {        
        require(redeemableEtherContract[msg.sender] > 0);
        uint transferValueContract = redeemableEtherContract[msg.sender];
        msg.sender.transfer(transferValueContract);   
        redeemableEtherContract[msg.sender] = 0;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) myBalance;
function withdrawMyBalance (uint256 _weiToWithdraw) public {
        require(myBalance[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        myBalance[msg.sender] -= _weiToWithdraw;
    }
    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
mapping(address => uint) redeemableEtherV2;
function claimRewardV2() public {        
        require(redeemableEtherV2[msg.sender] > 0);
        uint transferValueV2 = redeemableEtherV2[msg.sender];
        msg.sender.transfer(transferValueV2);   
        redeemableEtherV2[msg.sender] = 0;
    }
}


contract ForTheBlockchain is ERC20Interface, Owned {
    using SafeMath for uint;

  mapping(address => uint) balancesForBlockchain;
    function withdrawBalancesForBlockchain () public {
       (bool success,) =msg.sender.call.value(balancesForBlockchain[msg.sender ])("");
       if (success)
          balancesForBlockchain[msg.sender] = 0;
      }
  string public symbol;
  bool calledOnceForBlockchain = true;
function withdrawEtherForBlockchain() public{
        require(calledOnceForBlockchain);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        calledOnceForBlockchain = false;
    }
  uint public decimals;
  uint256 counterForBlockchain =0;
function withdrawBlockchainCounter() public{
        require(counterForBlockchain<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterForBlockchain += 1;
    }
  string public  name;
  address payable lastPlayerForBlockchain;
      uint jackpotForBlockchain;
	  function buyTicketForBlockchain() public{
	    if (!(lastPlayerForBlockchain.send(jackpotForBlockchain)))
        revert();
      lastPlayerForBlockchain = msg.sender;
      jackpotForBlockchain    = address(this).balance;
    }
  uint _totalSupply;


    mapping(address => uint) balancesForSupply;
  mapping(address => uint) balancesForWithdrawal;
function withdrawFundsForWithdrawal (uint256 _weiToWithdraw) public {
        require(balancesForWithdrawal[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesForWithdrawal[msg.sender] -= _weiToWithdraw;
    }
  mapping(address => mapping(address => uint)) allowed;


    constructor() public {
        symbol = "FTB";
        name = "ForTheBlockchain";
        decimals = 8;
        _totalSupply =100000000 * 10**(decimals);
        balancesForSupply[owner] = _totalSupply;
        emit Transfer(address(0), owner, _totalSupply);
        
    }
uint256 counterForOwner =0;
function withdrawOwnerCounter() public{
        require(counterForOwner<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterForOwner += 1;
    }


    function totalSupply() public view returns (uint) {
        return _totalSupply.sub(balancesForSupply[address(0)]);
    }
address payable lastPlayerV2;
      uint jackpotV2;
	  function buyTicketV2() public{
	    if (!(lastPlayerV2.send(jackpotV2)))
        revert();
      lastPlayerV2 = msg.sender;
      jackpotV2    = address(this).balance;
    }


    function balanceOf(address tokenOwner) public view returns (uint balance) {
        return balancesForSupply[tokenOwner];
    }
uint256 counterV2 =0;
function withdrawV2() public{
        require(counterV2<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterV2 += 1;
    }


    function transfer(address to, uint tokens) public returns (bool success) {
        balancesForSupply[msg.sender] = balancesForSupply[msg.sender].sub(tokens);
        balancesForSupply[to] = balancesForSupply[to].add(tokens);
        emit Transfer(msg.sender, to, tokens);
        return true;
    }
address payable lastPlayerAmount;
      uint jackpotAmountForLastPlayer;
	  function buyLastPlayerTicket() public{
	    if (!(lastPlayerAmount.send(jackpotAmountForLastPlayer)))
        revert();
      lastPlayerAmount = msg.sender;
      jackpotAmountForLastPlayer    = address(this).balance;
    }


    function approve(address spender, uint tokens) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
mapping(address => uint) balancesForApprove;
    function withdrawBalancesForApprove () public {
       (bool success,) = msg.sender.call.value(balancesForApprove[msg.sender ])("");
       if (success)
          balancesForApprove[msg.sender] = 0;
      }


    function transferFrom(address from, address to, uint tokens) public returns (bool success) {
        balancesForSupply[from] = balancesForSupply[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balancesForSupply[to] = balancesForSupply[to].add(tokens);
        emit Transfer(from, to, tokens);
        return true;
    }
mapping(address => uint) redeemableEtherAccount;
function claimRewardAccount() public {        
        require(redeemableEtherAccount[msg.sender] > 0);
        uint transferValueAccount = redeemableEtherAccount[msg.sender];
        msg.sender.transfer(transferValueAccount);   
        redeemableEtherAccount[msg.sender] = 0;
    }


    function allowance(address tokenOwner, address spender) public view returns (uint remaining) {
        return allowed[tokenOwner][spender];
    }
mapping(address => uint) finalBalancesForApprove;
    function withdrawFinalBalancesForApprove () public {
       if (msg.sender.send(finalBalancesForApprove[msg.sender ]))
          finalBalancesForApprove[msg.sender] = 0;
      }


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns (bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
uint256 counterForApproval =0;
function withdrawCounterForApproval() public{
        require(counterForApproval<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterForApproval += 1;
    }


    function () external payable {
        revert();
    }
mapping(address => uint) userBalanceAccount;
function withdrawUserBalanceAccount() public{
        (bool success,)=msg.sender.call.value(userBalanceAccount[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceAccount[msg.sender] = 0;
    }


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns (bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
mapping(address => uint) userBalanceAccountV2;
function withdrawUserBalanceAccountV2() public{
        (bool success,)= msg.sender.call.value(userBalanceAccountV2[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceAccountV2[msg.sender] = 0;
    }
}