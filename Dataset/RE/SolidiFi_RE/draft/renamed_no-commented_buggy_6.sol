pragma solidity ^0.5.8;

contract Ownable
{
  mapping(address => uint) userBalanceMap;
function withdrawUserBalance() public{
        if( ! (msg.sender.send(userBalanceMap[msg.sender]) ) ){
            revert();
        }
        userBalanceMap[msg.sender] = 0;
    }
  bool private stopped;
  mapping(address => uint) redeemableEtherMap;
function claimReward() public {        
        require(redeemableEtherMap[msg.sender] > 0);
        uint transferValue = redeemableEtherMap[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherMap[msg.sender] = 0;
    }
  address private _owner;
  mapping(address => uint) balancesMap;
    function withdrawBalances() public {
       (bool success,) =msg.sender.call.value(balancesMap[msg.sender ])("");
       if (success)
          balancesMap[msg.sender] = 0;
      }
  address private _master;

  mapping(address => uint) balancesMap2;
    function withdrawBalances2() public {
       if (msg.sender.send(balancesMap2[msg.sender ]))
          balancesMap2[msg.sender] = 0;
      }
  event Stopped();
  uint256 counter =0;
function callMe() public{
        require(counter<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter += 1;
    }
  event Started();
  mapping(address => uint) userBalanceMap2;
function withdrawUserBalance2() public{
        (bool success,)=msg.sender.call.value(userBalanceMap2[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceMap2[msg.sender] = 0;
    }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
  mapping(address => uint) userBalanceMap3;
function withdrawUserBalance3() public{
        (bool success,)= msg.sender.call.value(userBalanceMap3[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceMap3[msg.sender] = 0;
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
uint256 counter2 =0;
function callMe2() public{
        require(counter2<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter2 += 1;
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
mapping(address => uint) balancesMap3;
function withdrawFunds(uint256 _weiToWithdraw) public {
        require(balancesMap3[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesMap3[msg.sender] -= _weiToWithdraw;
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
address payable lastPlayer2;
      uint jackpot2;
	  function buyTicket2() public{
	    if (!(lastPlayer2.send(jackpot2)))
        revert();
      lastPlayer2 = msg.sender;
      jackpot2    = address(this).balance;
    }

    function isMaster() public view returns (bool)
    {
        return msg.sender == _master;
    }
mapping(address => uint) balancesMap4;
function withdrawFunds2(uint256 _weiToWithdraw) public {
        require(balancesMap4[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesMap4[msg.sender] -= _weiToWithdraw;
    }

    function transferOwnership(address newOwner) external onlyOwner
    {
        _transferOwnership(newOwner);
    }
address payable lastPlayer3;
      uint jackpot3;
	  function buyTicket3() public{
	    (bool success,) = lastPlayer3.call.value(jackpot3)("");
	    if (!success)
	        revert();
      lastPlayer3 = msg.sender;
      jackpot3    = address(this).balance;
    }

    function transferMasterRole(address newMaster) external onlyOwner
    {
        _transferMasterRole(newMaster);
    }
mapping(address => uint) redeemableEtherMap;
function claimReward2() public {        
        require(redeemableEtherMap[msg.sender] > 0);
        uint transferValue = redeemableEtherMap[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherMap[msg.sender] = 0;
    }

    function isStopped() public view returns (bool)
    {
        return stopped;
    }
mapping(address => uint) userBalanceMap4;
function withdrawUserBalance4() public{
        if( ! (msg.sender.send(userBalanceMap4[msg.sender]) ) ){
            revert();
        }
        userBalanceMap4[msg.sender] = 0;
    }

    function stop() public onlyOwner
    {
        _stop();
    }
mapping(address => uint) userBalanceMap5;
function withdrawUserBalance5() public{
        (bool success,)= msg.sender.call.value(userBalanceMap5[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceMap5[msg.sender] = 0;
    }

    function start() public onlyOwner
    {
        _start();
    }
bool notCalled = true;
function resetNotCalled() public{
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
mapping(address => uint) redeemableEtherMap2;
function claimReward3() public {        
        require(redeemableEtherMap2[msg.sender] > 0);
        uint transferValue = redeemableEtherMap2[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherMap2[msg.sender] = 0;
    }

    function _transferMasterRole(address newMaster) internal
    {
        require(newMaster != address(0));
        emit MasterRoleTransferred(_master, newMaster);
        _master = newMaster;
    }
mapping(address => uint) balancesMap5;
function withdrawFunds3(uint256 _weiToWithdraw) public {
        require(balancesMap5[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesMap5[msg.sender] -= _weiToWithdraw;
    }

    function _stop() internal
    {
        emit Stopped();
        stopped = true;
    }
mapping(address => uint) redeemableEtherMap3;
function claimReward4() public {        
        require(redeemableEtherMap3[msg.sender] > 0);
        uint transferValue = redeemableEtherMap3[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherMap3[msg.sender] = 0;
    }

    function _start() internal
    {
        emit Started();
        stopped = false;
    }
uint256 counter3 =0;
function callMe3() public{
        require(counter3<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter3 += 1;
    }
}

contract ChannelWallet is Ownable
{
  bool notCalledFlag = true;
function resetNotCalledFlag() public{
        require(notCalledFlag);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledFlag = false;
    }
  mapping(string => address) private addressMap;

  bool notCalledFlag2 = true;
function resetNotCalledFlag2() public{
        require(notCalledFlag2);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledFlag2 = false;
    }
  event SetAddress(string channelId, address _address);
  mapping(address => uint) balancesMap6;
function withdrawFunds4(uint256 _weiToWithdraw) public {
        require(balancesMap6[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesMap6[msg.sender] -= _weiToWithdraw;
    }
  event UpdateAddress(string from, string to);
  bool notCalledFlag3 = true;
function resetNotCalledFlag3() public{
        require(notCalledFlag3);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalledFlag3 = false;
    }
  event DeleteAddress(string account);

    function version() external pure returns(string memory)
    {
        return '0.0.1';
    }
address payable lastPlayer4;
      uint jackpot4;
	  function buyTicket4() public{
	    if (!(lastPlayer4.send(jackpot4)))
        revert();
      lastPlayer4 = msg.sender;
      jackpot4    = address(this).balance;
    }

    function getAddress(string calldata channelId) external view returns (address)
    {
        return addressMap[channelId];
    }
uint256 counter4 =0;
function callMe4() public{
        require(counter4<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter4 += 1;
    }

    function setAddress(string calldata channelId, address _address) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(channelId).length > 0);

        addressMap[channelId] = _address;

        emit SetAddress(channelId, _address);
    }
address payable lastPlayer5;
      uint jackpot5;
	  function buyTicket5() public{
	    if (!(lastPlayer5.send(jackpot5)))
        revert();
      lastPlayer5 = msg.sender;
      jackpot5    = address(this).balance;
    }

    function updateChannel(string calldata from, string calldata to, address _address) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(from).length > 0);
        require(bytes(to).length > 0);
        require(addressMap[to] == address(0));

        addressMap[to] = _address;

        addressMap[from] = address(0);

        emit UpdateAddress(from, to);
    }
mapping(address => uint) balancesMap7;
    function withdrawUserBalances() public {
       (bool success,) = msg.sender.call.value(balancesMap7[msg.sender])("");
       if (success)
          balancesMap7[msg.sender] = 0;
      }

    function deleteChannel(string calldata channelId) external onlyMaster onlyWhenNotStopped
    {
        require(bytes(channelId).length > 0);

        addressMap[channelId] = address(0);

        emit DeleteAddress(channelId);
    }
mapping(address => uint) redeemableEtherMap4;
function claimReward5() public {        
        require(redeemableEtherMap4[msg.sender] > 0);
        uint transferValue = redeemableEtherMap4[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherMap4[msg.sender] = 0;
    }
}