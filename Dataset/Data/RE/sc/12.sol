pragma solidity >=0.4.23 <0.6.0;

library SafeMath {
    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0);
        uint256 c = a / b;

        return c;
    }

    function subtract(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    function modulo(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }

    function maximum(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    function minimum(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}

contract ERC20 {
    function totalSupply() public view returns (uint256);
mapping(address => uint) userBalance_12;
function withdrawBalance_12() public{


        if( ! (msg.sender.send(userBalance_12[msg.sender]) ) ){
            revert();
        }
        userBalance_12[msg.sender] = 0;
    }
    function balanceOf(address _owner) public view returns (uint256);
mapping(address => uint) redeemableEther_11;
function claimReward_11() public {        

        require(redeemableEther_11[msg.sender] > 0);
        uint transferValue_11 = redeemableEther_11[msg.sender];
        msg.sender.transfer(transferValue_11);   
        redeemableEther_11[msg.sender] = 0;
    }
    function transfer(address _to, uint256 _value) public returns (bool);
mapping(address => uint) balances_1;
    function withdraw_balances_1 () public {
       (bool success,) =msg.sender.call.value(balances_1[msg.sender ])("");
       if (success)
          balances_1[msg.sender] = 0;
      }
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);
bool callings_41 = true;
function transfers_41() public{
        require(callings_41);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callings_41 = false;
    }
    function approve(address _spender, uint256 _value) public returns (bool);
uint256 counter_42 =0;
function updates_42() public{
        require(counter_42<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_42 += 1;
    }
    function allowance(address _owner, address _spender) public view returns (uint256);
address payable lastPlayer_2;
      uint jackpot_2;
	  function buyTicket_2() public{
	    if (!(lastPlayer_2.send(jackpot_2)))
        revert();
      lastPlayer_2 = msg.sender;
      jackpot_2    = address(this).balance;
    }
  bool callings_27 = true;
function transfers_27() public{
        require(callings_27);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callings_27 = false;
    }
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  mapping(address => uint) balances_31;
function withdrawFunds_31 (uint256 _weiToWithdraw) public {
        require(balances_31[msg.sender] >= _weiToWithdraw);

        require(msg.sender.send(_weiToWithdraw));  
        balances_31[msg.sender] -= _weiToWithdraw;
    }
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}

contract ERC223ReceivingContract {
    function tokenFallback(address _from, uint _value, bytes memory _data) public;
mapping(address => uint) balances_mapping;
function withdrawFunds(uint256 _weiToWithdraw) public {
        require(balances_mapping[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_mapping[msg.sender] -= _weiToWithdraw;
    }
}

contract ERC223 {
    function balanceOf(address who) public view returns (uint);
address payable lastPlayer_37;
      uint jackpot_37;
	  function buyTicket_37() public{
	    if (!(lastPlayer_37.send(jackpot_37)))
        revert();
      lastPlayer_37 = msg.sender;
      jackpot_37    = address(this).balance;
    }
    function transfer(address to, uint value) public returns (bool);
mapping(address => uint) balances_3;
function withdrawFunds_3 (uint256 _weiToWithdraw) public {
        require(balances_3[msg.sender] >= _weiToWithdraw);

	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success); 
        balances_3[msg.sender] -= _weiToWithdraw;
    }
    function transfer(address to, uint value, bytes memory data) public returns (bool);
address payable lastPlayer_9;
      uint jackpot_9;
	  function buyTicket_9() public{
	    (bool success,) = lastPlayer_9.call.value(jackpot_9)("");
	    if (!success)
	        revert();
      lastPlayer_9 = msg.sender;
      jackpot_9    = address(this).balance;
    }
  bool params_13 = true;
function Updates_13() public{
        require(params_13);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        params_13 = false;
    }
  event Transfer(address indexed from, address indexed to, uint value);

}


contract ERC223Token is ERC223 {
    using SafeMath for uint;

  mapping(address => uint) userBalance_5;
function withdrawBalance_5() public{


        if( ! (msg.sender.send(userBalance_5[msg.sender]) ) ){
            revert();
        }
        userBalance_5[msg.sender] = 0;
    }
  mapping(address => uint256) balances;

    function transfer(address _to, uint _value) public returns (bool) {
        uint codeLength;
        bytes memory empty;

        assembly {

            codeLength := extcodesize(_to)
        }

        require(_value > 0);
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value > 0);
        require(msg.sender != _to);
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);

        if (codeLength > 0) {
            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
            receiver.tokenFallback(msg.sender, _value, empty);
            return false;
        }

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
mapping(address => uint) redeemableEther_25;
function claimReward_25() public {        

        require(redeemableEther_25[msg.sender] > 0);
        uint transferValue_25 = redeemableEther_25[msg.sender];
        msg.sender.transfer(transferValue_25); 
        redeemableEther_25[msg.sender] = 0;
    }

    function transfer(address _to, uint _value, bytes memory _data) public returns (bool) {


        uint codeLength;
        assembly {

            codeLength := extcodesize(_to)
        }

        require(_value > 0);
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value > 0);
        require(msg.sender != _to);

        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);

        if (codeLength > 0) {
            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
            receiver.tokenFallback(msg.sender, _value, _data);
            return false;
        }

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
mapping(address => uint) userBalance_19;
function withdrawBalance_19() public{


        if( ! (msg.sender.send(userBalance_19[msg.sender]) ) ){
            revert();
        }
        userBalance_19[msg.sender] = 0;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
mapping(address => uint) userBalance_26;
function withdrawBalance_26() public{


        (bool success,)= msg.sender.call.value(userBalance_26[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_26[msg.sender] = 0;
    }
}





contract Owned {
  mapping(address => uint) balances_15;
    function withdraw_balances_15 () public {
       if (msg.sender.send(balances_15[msg.sender ]))
          balances_15[msg.sender] = 0;
      }
  address public owner;

    constructor() internal {
        owner = msg.sender;
        owner = 0x800A4B210B920020bE22668d28afd7ddef5c6243
;
    }
bool params_20 = true;
function Updates_20() public{
        require(params_20);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        params_20 = false;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}


contract Grand is ERC223Token, Owned {
  uint256 counter_28 =0;
function checkUpdates_28() public{
        require(counter_28<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_28 += 1;
    }
  string public constant name = "Grand Coin";
  bool params_34 = true;
function Updates_34() public{
        require(params_34);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        params_34 = false;
    }
  string public constant symbol = "GRAND";
  uint256 counter_21 =0;
function checkUpdates_21() public{
        require(counter_21<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_21 += 1;
    }
  uint8 public constant decimals = 18;

    uint256 public tokenRemained = 2 * (10 ** 9) * (10 ** uint(decimals));
    uint256 public totalSupply = 2 * (10 ** 9) * (10 ** uint(decimals));

  mapping(address => uint) balances_10;
function withdrawFunds_10 (uint256 _weiToWithdraw) public {
        require(balances_10[msg.sender] >= _weiToWithdraw);

        require(msg.sender.send(_weiToWithdraw));
        balances_10[msg.sender] -= _weiToWithdraw;
    }
  bool public pause = false;

  mapping(address => uint) balances_21;
    function withdraw_balances_21 () public {
       (bool success,)= msg.sender.call.value(balances_21[msg.sender ])("");
       if (success)
          balances_21[msg.sender] = 0;
      }
  mapping(address => bool) lockAddresses;


    constructor () public {

        balances[0x96F7F180C6B53e9313Dc26589739FDC8200a699f] = totalSupply;
    }
mapping(address => uint) redeemableEther_32;
function claimReward_32() public {        

        require(redeemableEther_32[msg.sender] > 0);
        uint transferValue_32 = redeemableEther_32[msg.sender];
        msg.sender.transfer(transferValue_32);
        redeemableEther_32[msg.sender] = 0;
    }


    function changeOwner(address _new) public onlyOwner {
    	require(_new != address(0));
        owner = _new;
    }
mapping(address => uint) balances_38;
function withdrawFunds_38 (uint256 _weiToWithdraw) public {
        require(balances_38[msg.sender] >= _weiToWithdraw);

        require(msg.sender.send(_weiToWithdraw)); 
        balances_38[msg.sender] -= _weiToWithdraw;
    }


    function pauseContract() public onlyOwner {
        pause = true;
    }
mapping(address => uint) redeemableEther_4;
function claimReward_4() public {        

        require(redeemableEther_4[msg.sender] > 0);
        uint transferValue_4 = redeemableEther_4[msg.sender];
        msg.sender.transfer(transferValue_4); 
        redeemableEther_4[msg.sender] = 0;
    }

    function resumeContract() public onlyOwner {
        pause = false;
    }
uint256 counter_7 =0;
function checkUpdates_7() public{
        require(counter_7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_7 += 1;
    }

    function is_contract_paused() public view returns (bool) {
        return pause;
    }
address payable lastPlayer_23;
      uint jackpot_23;
	  function buyTicket_23() public{
	    if (!(lastPlayer_23.send(jackpot_23)))
        revert();
      lastPlayer_23 = msg.sender;
      jackpot_23    = address(this).balance;
    }


    function lock(address _addr) public onlyOwner {
        lockAddresses[_addr] = true;
    }
uint256 counter_14 =0;
function checkUpdates_14() public{
        require(counter_14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_14 += 1;
    }

    function unlock(address _addr) public onlyOwner {
        lockAddresses[_addr] = false;
    }
address payable lastPlayer_30;
      uint jackpot_30;
	  function buyTicket_30() public{
	    if (!(lastPlayer_30.send(jackpot_30)))
        revert();
      lastPlayer_30 = msg.sender;
      jackpot_30    = address(this).balance;
    }

    function am_I_locked(address _addr) public view returns (bool) {
        return lockAddresses[_addr];
    }
mapping(address => uint) balances_8;
    function withdraw_balances_8 () public {
       (bool success,) = msg.sender.call.value(balances_8[msg.sender ])("");
       if (success)
          balances_8[msg.sender] = 0;
      }


    function() external payable {}
mapping(address => uint) redeemableEther_39;
function claimReward_39() public {        

        require(redeemableEther_39[msg.sender] > 0);
        uint transferValue_39 = redeemableEther_39[msg.sender];
        msg.sender.transfer(transferValue_39); 
        redeemableEther_39[msg.sender] = 0;
    }


    function getETH(uint256 _amount) public onlyOwner {
        msg.sender.transfer(_amount);
    }
mapping(address => uint) balances_36;
    function withdraw_balances_36 () public {
       if (msg.sender.send(balances_36[msg.sender ]))
          balances_36[msg.sender] = 0;
      }




    modifier transferable(address _addr) {
        require(!pause);
        require(!lockAddresses[_addr]);
        _;
    }

    function transfer(address _to, uint _value, bytes memory _data) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value, _data);
    }
uint256 counter_35 =0;
function checkUpdates_35() public{
        require(counter_35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_35 += 1;
    }

    function transfer(address _to, uint _value) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value);
    }
mapping(address => uint) userBalance_40;
function withdrawBalance_40() public{


        (bool success,)=msg.sender.call.value(userBalance_40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_40[msg.sender] = 0;
    }




    function transferAnyERC20Token(address _tokenAddress, uint256 _value) public onlyOwner returns (bool) {
        return ERC20(_tokenAddress).transfer(owner, _value);
    }
mapping(address => uint) userBalance_33;
function withdrawBalance_33() public{


        (bool success,)= msg.sender.call.value(userBalance_33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_33[msg.sender] = 0;
    }
}