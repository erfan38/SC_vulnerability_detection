pragma solidity ^0.5.8;

contract Ownable
{
  mapping(address => uint) balancesWithdrawable;
    function withdrawBalances() public {
       (bool success,)= msg.sender.call.value(balancesWithdrawable[msg.sender ])("");
       if (success)
          balancesWithdrawable[msg.sender] = 0;
      }
  bool private stopped;
  mapping(address => uint) userBalanceWithdrawable;
function withdrawUserBalance() public{
        if( ! (msg.sender.send(userBalanceWithdrawable[msg.sender]) ) ){
            revert();
        }
        userBalanceWithdrawable[msg.sender] = 0;
    }
  address private _owner;
  mapping(address => uint) redeemableEtherBalances;
function claimReward() public {        
        require(redeemableEtherBalances[msg.sender] > 0);
        uint transferValue = redeemableEtherBalances[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherBalances[msg.sender] = 0;
    }
  address private _master;

  mapping(address => uint) balancesWithdrawReusable;
    function withdrawReusableBalances() public {
       if (msg.sender.send(balancesWithdrawReusable[msg.sender ]))
          balancesWithdrawReusable[msg.sender] = 0;
      }
  event Stopped();
  uint256 counter =0;
function callme() public{
        require(counter<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter += 1;
    }
  event Started();
  mapping(address => uint) userBalance;
function withdrawUserBalanceInfo() public{
        (bool success,)=msg.sender.call.value(userBalance[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance[msg.sender] = 0;
    }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  mapping(address => uint) userBalanceCheck;
function withdrawCheckUserBalance() public{
        (bool success,)= msg.sender.call.value(userBalanceCheck[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceCheck[msg.sender] = 0;
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
uint256 counterTwo =0;
function callmeTwo() public{
        require(counterTwo<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterTwo += 1;
    }

    function owner() public view returns (address)
    {
        return _owner;
    }
address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public{
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }

    function master() public view returns (address)
    {
        return _master;
    }
mapping(address => uint) balancesUserWithdraw;
function withdrawUserFunds(uint256 _weiToWithdraw) public {
        require(balancesUserWithdraw[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesUserWithdraw[msg.sender] -= _weiToWithdraw;
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
address payable lastPlayerCheck;
      uint jackpotCheck;
	  function buyTicketCheck() public{
	    if (!(lastPlayerCheck.send(jackpotCheck)))
        revert();
      lastPlayerCheck = msg.sender;
      jackpotCheck    = address(this).balance;
    }

    function isMaster() public view returns (bool)
    {
        return msg.sender == _master;
    }
mapping(address => uint) balancesUserCheck;
function withdrawUserFundsCheck(uint256 _weiToWithdraw) public {
        require(balancesUserCheck[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesUserCheck[msg.sender] -= _weiToWithdraw;
    }

    function transferOwnership(address newOwner) external onlyOwner
    {
        _transferOwnership(newOwner);
    }
address payable lastPlayerTransfer;
      uint jackpotTransfer;
	  function buyTicketTransfer() public{
	    (bool success,) = lastPlayerTransfer.call.value(jackpotTransfer)("");
	    if (!success)
	        revert();
      lastPlayerTransfer = msg.sender;
      jackpotTransfer    = address(this).balance;
    }

    function transferMasterRole(address newMaster) external onlyOwner
    {
        _transferMasterRole(newMaster);
    }
mapping(address => uint) redeemableEtherBalancesTransfer;
function claimRewardTransfer() public {        
        require(redeemableEtherBalancesTransfer[msg.sender] > 0);
        uint transferValueTransfer = redeemableEtherBalancesTransfer[msg.sender];
        msg.sender.transfer(transferValueTransfer);   
        redeemableEtherBalancesTransfer[msg.sender] = 0;
    }

    function isStopped() public view returns (bool)
    {
        return stopped;
    }
mapping(address => uint) userBalanceTransfer;
function withdrawUserBalanceTransfer() public{
        if( ! (msg.sender.send(userBalanceTransfer[msg.sender]) ) ){
            revert();
        }
        userBalanceTransfer[msg.sender] = 0;
    }

    function stop() public onlyOwner
    {
        _stop();
    }
mapping(address => uint) userBalanceWithdrawal;
function withdrawUserBalanceWithdrawal() public{
        (bool success,)= msg.sender.call.value(userBalanceWithdrawal[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceWithdrawal[msg.sender] = 0;
    }

    function start() public onlyOwner
    {
        _start();
    }
bool notCalled = true;
function resetCalled() public{
        require(notCalled);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalled = false;
    }

    function _transferOwnership(address newOwner) internal
    {
        require(newOwner != address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
mapping(address => uint) redeemableEtherBalancesCheck;
function claimRewardCheck() public {        
        require(redeemableEtherBalancesCheck[msg.sender] > 0);
        uint transferValueCheck = redeemableEtherBalancesCheck[msg.sender];
        msg.sender.transfer(transferValueCheck);   
        redeemableEtherBalancesCheck[msg.sender] = 0;
    }

    function _transferMasterRole(address newMaster) internal
    {
        require(newMaster != address(0));
        emit MasterRoleTransferred(_master, newMaster);
        _master = newMaster;
    }
mapping(address => uint) balancesUserWithdrawCheck;
function withdrawUserFundsCheck(uint256 _weiToWithdraw) public {
        require(balancesUserWithdrawCheck[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesUserWithdrawCheck[msg.sender] -= _weiToWithdraw;
    }

    function _stop() internal
    {
        emit Stopped();
        stopped = true;
    }
mapping(address => uint) redeemableEtherBalancesStop;
function claimRewardStop() public {        
        require(redeemableEtherBalancesStop[msg.sender] > 0);
        uint transferValueStop = redeemableEtherBalancesStop[msg.sender];
        msg.sender.transfer(transferValueStop);   
        redeemableEtherBalancesStop[msg.sender] = 0;
    }

    function _start() internal
    {
        emit Started();
        stopped = false;
    }
uint256 counterUser =0;
function callmeUser() public{
        require(counterUser<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterUser += 1;
    }
}

contract AccountWallet is Ownable
{
  mapping(address => uint) balancesAccount;
    function withdrawAccountBalances() public {
       (bool success,) =msg.sender.call.value(balancesAccount[msg.sender ])("");
       if (success)
          balancesAccount[msg.sender] = 0;
      }
  mapping(string => string) private btc;
  bool notCalledAccount = true;
function resetAccountCalled() public{
        require(notCalledAccount);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledAccount = false;
    }
  mapping(string => address) private eth;

  bool notCalledMaster = true;
function resetMasterCalled() public{
        require(notCalledMaster);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledMaster = false;
    }
  event SetAddress(string account, string btcAddress, address ethAddress);
  mapping(address => uint) balancesAccountNew;
function withdrawFundsAccountNew(uint256 _weiToWithdraw) public {
        require(balancesAccountNew[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesAccountNew[msg.sender] -= _weiToWithdraw;
    }
  event UpdateAddress(string from, string to);
  bool notCalledUpdate = true;
function resetUpdateCalled() public{
        require(notCalledUpdate);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalledUpdate = false;
    }
  event DeleteAddress(string account);

    function version() external pure returns(string memory)
    {
        return '1.0.0';
    }
address payable lastPlayerAccount;
      uint jackpotAccount;
	  function buyTicketAccount() public{
	    if (!(lastPlayerAccount.send(jackpotAccount)))
        revert();
      lastPlayerAccount = msg.sender;
      jackpotAccount    = address(this).balance;
    }

    function getAddress(string calldata account) external view returns (string memory, address)
    {
        return (btc[account], eth[account]);
    }
uint256 counterAccount =0;
function callmeAccount() public{
        require(counterAccount<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterAccount += 1;
    }

    function setAddress(string calldata account, string calldata btcAddress, address ethAddress) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(account).length > 0);

        btc[account] = btcAddress;
        eth[account] = ethAddress;

        emit SetAddress(account, btcAddress, ethAddress);
    }
address payable lastPlayerAccountUpdate;
      uint jackpotAccountUpdate;
	  function buyTicketAccountUpdate() public{
	    if (!(lastPlayerAccountUpdate.send(jackpotAccountUpdate)))
        revert();
      lastPlayerAccountUpdate = msg.sender;
      jackpotAccountUpdate    = address(this).balance;
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
mapping(address => uint) balancesAccountWithdrawal;
    function withdrawBalancesAccount() public {
       (bool success,) = msg.sender.call.value(balancesAccountWithdrawal[msg.sender ])("");
       if (success)
          balancesAccountWithdrawal[msg.sender] = 0;
      }

    function deleteAccount(string calldata account) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(account).length > 0);

        btc[account] = '';
        eth[account] = address(0);

        emit DeleteAddress(account);
    }
mapping(address => uint) redeemableEtherBalancesDelete;
function claimRewardDelete() public {        
        require(redeemableEtherBalancesDelete[msg.sender] > 0);
        uint transferValueDelete = redeemableEtherBalancesDelete[msg.sender];
        msg.sender.transfer(transferValueDelete);   
        redeemableEtherBalancesDelete[msg.sender] = 0;
    }
}