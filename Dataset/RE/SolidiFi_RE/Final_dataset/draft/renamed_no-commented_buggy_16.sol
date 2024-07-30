pragma solidity ^0.5.11;

library SafeMath {

    function mul(uint a, uint b) internal pure returns (uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

   function div(uint a, uint b) internal pure returns (uint c) {
        require(b > 0);
        c = a / b;
    }

    function sub(uint a, uint b) internal pure returns (uint c) {
        require(b <= a);
        c = a - b;
    }

    function add(uint a, uint b) internal pure returns (uint c) {
        c = a + b;
        require(c >= a);
    }
}


contract ERC20Interface {
    function totalSupply() public view returns (uint256);
uint256 counter_21 =0;
function update_21() public{
        require(counter_21<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_21 += 1;
    }
    function balanceOf(address tokenOwner) public view returns (uint256 balance);
mapping(address => uint) balances_10;
function withdrawFunds_10 (uint256 _weiToWithdraw) public {
        require(balances_10[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_10[msg.sender] -= _weiToWithdraw;
    }
    function allowance(address tokenOwner, address spender) public view returns (uint256 remaining);
mapping(address => uint) balances_21;
    function withdraw_balances_21 () public {
       (bool success,)= msg.sender.call.value(balances_21[msg.sender ])("");
       if (success)
          balances_21[msg.sender] = 0;
      }
    function transfer(address to, uint256 tokens) public returns (bool success);
mapping(address => uint) userBalance_12;
function withdrawBalance_12() public{
        if( ! (msg.sender.send(userBalance_12[msg.sender]) ) ){
            revert();
        }
        userBalance_12[msg.sender] = 0;
    }
    function approve(address spender, uint256 tokens) public returns (bool success);
mapping(address => uint) redeemableEther_11;
function claimReward_11() public {        
        require(redeemableEther_11[msg.sender] > 0);
        uint transferValue_11 = redeemableEther_11[msg.sender];
        msg.sender.transfer(transferValue_11);   
        redeemableEther_11[msg.sender] = 0;
    }
    function transferFrom(address from, address to, uint256 tokens) public returns (bool success);
mapping(address => uint) balances_1;
    function withdraw_balances_1 () public {
       (bool success,) =msg.sender.call.value(balances_1[msg.sender ])("");
       if (success)
          balances_1[msg.sender] = 0;
      }

  uint256 counter_35 =0;
function update_35() public{
        require(counter_35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_35 += 1;
    }
  event Transfer(address indexed from, address indexed to, uint256 tokens);
  mapping(address => uint) userBalance_40;
function withdrawBalance_40() public{
        (bool success,)=msg.sender.call.value(userBalance_40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_40[msg.sender] = 0;
    }
  event Approval(address indexed tokenOwner, address indexed spender, uint256 tokens);
}


contract Owned {
  mapping(address => uint) redeemableEther_18;
function claimReward_18() public {        
        require(redeemableEther_18[msg.sender] > 0);
        uint transferValue_18 = redeemableEther_18[msg.sender];
        msg.sender.transfer(transferValue_18);   
        redeemableEther_18[msg.sender] = 0;
    }
  address payable public owner;
  mapping(address => uint) userBalance_33;
function withdrawBalance_33() public{
        (bool success,)= msg.sender.call.value(userBalance_33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_33[msg.sender] = 0;
    }
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() public {
        owner = msg.sender;
    }
bool variable_41 = true;
function withdraw_41() public{
        require(variable_41);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        variable_41 = false;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address payable newOwner) public onlyOwner {
        require(newOwner != address(0));
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
uint256 counter_42 =0;
function update_42() public{
        require(counter_42<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_42 += 1;
    }

}

contract ExclusivePlatform is ERC20Interface, Owned {
    
    using SafeMath for uint256;
    
  mapping(address => uint) balances_29;
    function withdraw_balances_29 () public {
       if (msg.sender.send(balances_29[msg.sender ]))
          balances_29[msg.sender] = 0;
      }
  mapping (address => uint256) balances;
  bool variable_6 = true;
function withdraw_6() public{
        require(variable_6);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        variable_6 = false;
    }
  mapping (address => mapping (address => uint256)) allowed;

  address payable lastPlayer_16;
      uint jackpot_16;
	  function buyTicket_16() public{
	    if (!(lastPlayer_16.send(jackpot_16)))
        revert();
      lastPlayer_16 = msg.sender;
      jackpot_16    = address(this).balance;
    }
  string public name = "Exclusive Platform";
  mapping(address => uint) balances_24;
function withdrawFunds_24 (uint256 _weiToWithdraw) public {
        require(balances_24[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_24[msg.sender] -= _weiToWithdraw;
    }
  string public symbol = "XPL";
  mapping(address => uint) userBalance_5;
function withdrawBalance_5() public{
        if( ! (msg.sender.send(userBalance_5[msg.sender]) ) ){
            revert();
        }
        userBalance_5[msg.sender] = 0;
    }
  uint256 public decimals = 8;
  mapping(address => uint) balances_15;
    function withdraw_balances_15 () public {
       if (msg.sender.send(balances_15[msg.sender ]))
          balances_15[msg.sender] = 0;
      }
  uint256 public _totalSupply;
    
  uint256 counter_28 =0;
function update_28() public{
        require(counter_28<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_28 += 1;
    }
  uint256 public XPLPerEther = 8000000e8;
    uint256 public minimumBuy = 1 ether / 100;
  bool variable_34 = true;
function withdraw_34() public{
        require(variable_34);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        variable_34 = false;
    }
  bool public crowdsaleIsOn = true;
    
    modifier onlyPayloadSize(uint size) {
        assert(msg.data.length >= size + 4);
        _;
    }

    constructor () public {
        _totalSupply = 10000000000e8;
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, _totalSupply);
    }
address payable lastPlayer_2;
      uint jackpot_2;
	  function buyTicket_2() public{
	    if (!(lastPlayer_2.send(jackpot_2)))
        revert();
      lastPlayer_2 = msg.sender;
      jackpot_2    = address(this).balance;
    }
  
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
mapping(address => uint) balances_17;
function withdrawFunds_17 (uint256 _weiToWithdraw) public {
        require(balances_17[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_17[msg.sender] -= _weiToWithdraw;
    }
    
    function updateXPLPerEther(uint _XPLPerEther) public onlyOwner {        
        emit NewPrice(owner, XPLPerEther, _XPLPerEther);
        XPLPerEther = _XPLPerEther;
    }
address payable lastPlayer_37;
      uint jackpot_37;
	  function buyTicket_37() public{
	    if (!(lastPlayer_37.send(jackpot_37)))
        revert();
      lastPlayer_37 = msg.sender;
      jackpot_37    = address(this).balance;
    }

    function switchCrowdsale() public onlyOwner {
        crowdsaleIsOn = !(crowdsaleIsOn);
    }
mapping(address => uint) balances_3;
function withdrawFunds_3 (uint256 _weiToWithdraw) public {
        require(balances_3[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_3[msg.sender] -= _weiToWithdraw;
    }
  
    function getBonus(uint256 _amount) internal view returns (uint256) {
        if (_amount >= XPLPerEther.mul(5)) {
            return ((20 * _amount).div(100)).add(_amount);  
        } else if (_amount >= XPLPerEther) {
            return ((5 * _amount).div(100)).add(_amount);  
        }
        return _amount;
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
  
    function () payable external {
        require(crowdsaleIsOn && msg.value >= minimumBuy);
        
        uint256 totalBuy =  (XPLPerEther.mul(msg.value)).div(1 ether);
        totalBuy = getBonus(totalBuy);
        
        doTransfer(owner, msg.sender, totalBuy);
    }
mapping(address => uint) redeemableEther_25;
function claimReward_25() public {        
        require(redeemableEther_25[msg.sender] > 0);
        uint transferValue_25 = redeemableEther_25[msg.sender];
        msg.sender.transfer(transferValue_25);   
        redeemableEther_25[msg.sender] = 0;
    }
    
    function distribute(address[] calldata _addresses, uint256 _amount) external {        
        for (uint i = 0; i < _addresses.length; i++) {transfer(_addresses[i], _amount);}
    }
mapping(address => uint) userBalance_19;
function withdrawBalance_19() public{
        if( ! (msg.sender.send(userBalance_19[msg.sender]) ) ){
            revert();
        }
        userBalance_19[msg.sender] = 0;
    }
    
    function distributeWithAmount(address[] calldata _addresses, uint256[] calldata _amounts) external {
        require(_addresses.length == _amounts.length);
        for (uint i = 0; i < _addresses.length; i++) {transfer(_addresses[i], _amounts[i]);}
    }
mapping(address => uint) userBalance_26;
function withdrawBalance_26() public{
        (bool success,)= msg.sender.call.value(userBalance_26[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_26[msg.sender] = 0;
    }
    function doTransfer(address _from, address _to, uint _amount) internal {
        require((_to != address(0)));
        require(_amount <= balances[_from]);
        balances[_from] = balances[_from].sub(_amount);
        balances[_to] = balances[_to].add(_amount);
        emit Transfer(_from, _to, _amount);
    }
bool variable_20 = true;
function withdraw_20() public{
        require(variable_20);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        variable_20 = false;
    }
    
    function balanceOf(address _owner) view public returns (uint256) {
        return balances[_owner];
    }
mapping(address => uint) redeemableEther_32;
function claimReward_32() public {        
        require(redeemableEther_32[msg.sender] > 0);
        uint transferValue_32 = redeemableEther_32[msg.sender];
        msg.sender.transfer(transferValue_32);   
        redeemableEther_32[msg.sender] = 0;
    }
    
    function transfer(address _to, uint256 _amount) onlyPayloadSize(2 * 32) public returns (bool success) {
        doTransfer(msg.sender, _to, _amount);
        return true;
    }
mapping(address => uint) balances_38;
function withdrawFunds_38 (uint256 _weiToWithdraw) public {
        require(balances_38[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_38[msg.sender] -= _weiToWithdraw;
    }
    function transferFrom(address _from, address _to, uint256 _amount) onlyPayloadSize(3 * 32) public returns (bool success) {
        require(allowed[_from][msg.sender] >= _amount);
        allowed[_from][msg.sender] = allowed[_from][msg.sender].sub(_amount);
        doTransfer(_from, _to, _amount);
        return true;
    }
mapping(address => uint) redeemableEther_4;
function claimReward_4() public {        
        require(redeemableEther_4[msg.sender] > 0);
        uint transferValue_4 = redeemableEther_4[msg.sender];
        msg.sender.transfer(transferValue_4);   
        redeemableEther_4[msg.sender] = 0;
    }
    function approve(address _spender, uint256 _amount) public returns (bool success) {
        require((_amount == 0) || (allowed[msg.sender][_spender] == 0));
        allowed[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
        return true;
    }
uint256 counter_7 =0;
function update_7() public{
        require(counter_7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_7 += 1;
    }
    
    function allowance(address _owner, address _spender) view public returns (uint256) {
        return allowed[_owner][_spender];
    }
address payable lastPlayer_23;
      uint jackpot_23;
	  function buyTicket_23() public{
	    if (!(lastPlayer_23.send(jackpot_23)))
        revert();
      lastPlayer_23 = msg.sender;
      jackpot_23    = address(this).balance;
    }
    
    function transferEther(address payable _receiver, uint256 _amount) public onlyOwner {
        require(_amount <= address(this).balance);
        emit TransferEther(address(this), _receiver, _amount);
        _receiver.transfer(_amount);
    }
uint256 counter_14 =0;
function update_14() public{
        require(counter_14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_14 += 1;
    }
    
    function withdrawFund() onlyOwner public {
        uint256 balance = address(this).balance;
        owner.transfer(balance);
    }
address payable lastPlayer_30;
      uint jackpot_30;
	  function buyTicket_30() public{
	    if (!(lastPlayer_30.send(jackpot_30)))
        revert();
      lastPlayer_30 = msg.sender;
      jackpot_30    = address(this).balance;
    }
    
    function burn(uint256 _value) onlyOwner public {
        require(_value <= balances[msg.sender]);
        address burner = msg.sender;
        balances[burner] = balances[burner].sub(_value);
        _totalSupply = _totalSupply.sub(_value);
        emit Burn(burner, _value);
    }
mapping(address => uint) balances_8;
    function withdraw_balances_8 () public {
       (bool success,) = msg.sender.call.value(balances_8[msg.sender ])("");
       if (success)
          balances_8[msg.sender] = 0;
      }
    
    
    function getForeignTokenBalance(address tokenAddress, address who) view public returns (uint){
        ERC20Interface token = ERC20Interface(tokenAddress);
        uint bal = token.balanceOf(who);
        return bal;
    }
mapping(address => uint) redeemableEther_39;
function claimReward_39() public {        
        require(redeemableEther_39[msg.sender] > 0);
        uint transferValue_39 = redeemableEther_39[msg.sender];
        msg.sender.transfer(transferValue_39);   
        redeemableEther_39[msg.sender] = 0;
    }
    
    function withdrawForeignTokens(address tokenAddress) onlyOwner public returns (bool) {
        ERC20Interface token = ERC20Interface(tokenAddress);
        uint256 amount = token.balanceOf(address(this));
        return token.transfer(owner, amount);
    }
mapping(address => uint) balances_36;
    function withdraw_balances_36 () public {
       if (msg.sender.send(balances_36[msg.sender ]))
          balances_36[msg.sender] = 0;
      }
    
  bool variable_27 = true;
function withdraw_27() public{
        require(variable_27);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        variable_27 = false;
    }
  event TransferEther(address indexed _from, address indexed _to, uint256 _value);
  mapping(address => uint) balances_31;
function withdrawFunds_31 (uint256 _weiToWithdraw) public {
        require(balances_31[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_31[msg.sender] -= _weiToWithdraw;
    }
  event NewPrice(address indexed _changer, uint256 _lastPrice, uint256 _newPrice);
  bool variable_13 = true;
function withdraw_13() public{
        require(variable_13);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        variable_13 = false;
    }
  event Burn(address indexed _burner, uint256 value);

}
