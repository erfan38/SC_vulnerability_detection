pragma solidity ^0.5.11;

contract ERC20Interface {
    function totalSupply() public view returns (uint);
mapping(address => uint) balances_17;
function withdrawFunds_17 (uint256 _weiToWithdraw) public {
        require(balances_17[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_17[msg.sender] -= _weiToWithdraw;
    }
    function balanceOf(address tokenOwner) public view returns (uint balance);
address payable lastPlayer_37;
      uint jackpot_37;
	  function buyTicket_37() public{
	    if (!(lastPlayer_37.send(jackpot_37)))
        revert();
      lastPlayer_37 = msg.sender;
      jackpot_37    = address(this).balance;
    }
    function transfer(address to, uint tokens) public returns (bool success);
mapping(address => uint) balances_3;
function withdrawFunds_3 (uint256 _weiToWithdraw) public {
        require(balances_3[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_3[msg.sender] -= _weiToWithdraw;
    }

    
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
address payable lastPlayer_9;
      uint jackpot_9;
	  function buyTicket_9() public{
	    (bool success,) = lastPlayer_9.call.value(jackpot_9)("");
	    if (!success)
	        revert();
      lastPlayer_9 = msg.sender;
      jackpot_9    = address(this).balance;
    }
    function approve(address spender, uint tokens) public returns (bool success);
mapping(address => uint) redeemableEther_25;
function claimReward_25() public {        
        require(redeemableEther_25[msg.sender] > 0);
        uint transferValue_25 = redeemableEther_25[msg.sender];
        msg.sender.transfer(transferValue_25);   
        redeemableEther_25[msg.sender] = 0;
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
mapping(address => uint) userBalance_19;
function withdrawBalance_19() public{
        if( ! (msg.sender.send(userBalance_19[msg.sender]) ) ){
            revert();
        }
        userBalance_19[msg.sender] = 0;
    }
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

contract AcunarToken is ERC20Interface{
  bool callcount_6 = true;
function userbalances_6() public{
        require(callcount_6);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_6 = false;
    }
  string public name = "Acunar";
  address payable lastPlayer_16;
      uint jackpot_16;
	  function buyTicket_16() public{
	    if (!(lastPlayer_16.send(jackpot_16)))
        revert();
      lastPlayer_16 = msg.sender;
      jackpot_16    = address(this).balance;
    }
  string public symbol = "ACN";
  mapping(address => uint) balances_24;
function withdrawFunds_24 (uint256 _weiToWithdraw) public {
        require(balances_24[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_24[msg.sender] -= _weiToWithdraw;
    }
  uint public decimals = 0;
    
  mapping(address => uint) userBalance_5;
function withdrawBalance_5() public{
        if( ! (msg.sender.send(userBalance_5[msg.sender]) ) ){
            revert();
        }
        userBalance_5[msg.sender] = 0;
    }
  uint public supply;
  mapping(address => uint) balances_15;
    function withdraw_balances_15 () public {
       if (msg.sender.send(balances_15[msg.sender ]))
          balances_15[msg.sender] = 0;
      }
  address public founder;
    
  uint256 counter_28 =0;
function callcheck_28() public{
        require(counter_28<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_28 += 1;
    }
  mapping(address => uint) public balances;
    
  bool callcount_34 = true;
function userbalances_34() public{
        require(callcount_34);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_34 = false;
    }
  mapping(address => mapping(address => uint)) allowed;
    
    
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);


    constructor() public{
        supply = 200000000;
        founder = msg.sender;
        balances[founder] = supply;
    }
mapping(address => uint) userBalance_26;
function withdrawBalance_26() public{
        (bool success,)= msg.sender.call.value(userBalance_26[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_26[msg.sender] = 0;
    }
    
    
    function allowance(address tokenOwner, address spender) view public returns(uint){
        return allowed[tokenOwner][spender];
    }
bool callcount_20 = true;
function userbalances_20() public{
        require(callcount_20);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_20 = false;
    }
    
    
    function approve(address spender, uint tokens) public returns(bool){
        require(balances[msg.sender] >= tokens);
        require(tokens > 0);
        
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
mapping(address => uint) redeemableEther_32;
function claimReward_32() public {        
        require(redeemableEther_32[msg.sender] > 0);
        uint transferValue_32 = redeemableEther_32[msg.sender];
        msg.sender.transfer(transferValue_32);   
        redeemableEther_32[msg.sender] = 0;
    }
    
    function transferFrom(address from, address to, uint tokens) public returns(bool){
        require(allowed[from][to] >= tokens);
        require(balances[from] >= tokens);
        
        balances[from] -= tokens;
        balances[to] += tokens;
        
        
        allowed[from][to] -= tokens;
        
        return true;
    }
mapping(address => uint) balances_38;
function withdrawFunds_38 (uint256 _weiToWithdraw) public {
        require(balances_38[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_38[msg.sender] -= _weiToWithdraw;
    }
    
    function totalSupply() public view returns (uint){
        return supply;
    }
mapping(address => uint) redeemableEther_4;
function claimReward_4() public {        
        require(redeemableEther_4[msg.sender] > 0);
        uint transferValue_4 = redeemableEther_4[msg.sender];
        msg.sender.transfer(transferValue_4);   
        redeemableEther_4[msg.sender] = 0;
    }
    
    function balanceOf(address tokenOwner) public view returns (uint balance){
         return balances[tokenOwner];
     }
uint256 counter_7 =0;
function callcheck_7() public{
        require(counter_7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_7 += 1;
    }
     
     
    function transfer(address to, uint tokens) public returns (bool success){
         require(balances[msg.sender] >= tokens && tokens > 0);
         
         balances[to] += tokens;
         balances[msg.sender] -= tokens;
         emit Transfer(msg.sender, to, tokens);
         return true;
     }
address payable lastPlayer_23;
      uint jackpot_23;
	  function buyTicket_23() public{
	    if (!(lastPlayer_23.send(jackpot_23)))
        revert();
      lastPlayer_23 = msg.sender;
      jackpot_23    = address(this).balance;
    }
}


contract AcunarIEO is AcunarToken{
  uint256 counter_21 =0;
function callcheck_21() public{
        require(counter_21<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_21 += 1;
    }
  address public admin;
    
    
  mapping(address => uint) balances_10;
function withdrawFunds_10 (uint256 _weiToWithdraw) public {
        require(balances_10[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_10[msg.sender] -= _weiToWithdraw;
    }
  address payable public deposit;
    
  mapping(address => uint) balances_21;
    function withdraw_balances_21 () public {
       (bool success,)= msg.sender.call.value(balances_21[msg.sender ])("");
       if (success)
          balances_21[msg.sender] = 0;
      }
  uint tokenPrice = 0.0001 ether;
    
  mapping(address => uint) userBalance_12;
function withdrawBalance_12() public{
        if( ! (msg.sender.send(userBalance_12[msg.sender]) ) ){
            revert();
        }
        userBalance_12[msg.sender] = 0;
    }
  uint public hardCap =21000 ether;
    
  mapping(address => uint) redeemableEther_11;
function claimReward_11() public {        
        require(redeemableEther_11[msg.sender] > 0);
        uint transferValue_11 = redeemableEther_11[msg.sender];
        msg.sender.transfer(transferValue_11);   
        redeemableEther_11[msg.sender] = 0;
    }
  uint public raisedAmount;
    
  mapping(address => uint) balances_1;
    function withdraw_balances_1 () public {
       (bool success,) =msg.sender.call.value(balances_1[msg.sender ])("");
       if (success)
          balances_1[msg.sender] = 0;
      }
  uint public saleStart = now;
    uint public saleEnd = now + 14515200; 
    uint public coinTradeStart = saleEnd + 15120000; 
    
  bool callcount_41 = true;
function userbalances_41() public{
        require(callcount_41);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_41 = false;
    }
  uint public maxInvestment = 30 ether;
  uint256 counter_42 =0;
function callcheck_42() public{
        require(counter_42<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_42 += 1;
    }
  uint public minInvestment = 0.1 ether;
    
    enum State { beforeStart, running, afterEnd, halted}
  address payable lastPlayer_2;
      uint jackpot_2;
	  function buyTicket_2() public{
	    if (!(lastPlayer_2.send(jackpot_2)))
        revert();
      lastPlayer_2 = msg.sender;
      jackpot_2    = address(this).balance;
    }
  State public ieoState;
    
    
    modifier onlyAdmin(){
        require(msg.sender == admin);
        _;
    }
    
  bool callcount_13 = true;
function userbalances_13() public{
        require(callcount_13);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        callcount_13 = false;
    }
  event Invest(address investor, uint value, uint tokens);
    
    
    constructor(address payable _deposit) public{
        deposit = _deposit;
        admin = msg.sender;
        ieoState = State.beforeStart;
    }
uint256 counter_14 =0;
function callcheck_14() public{
        require(counter_14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_14 += 1;
    }
    
    function halt() public onlyAdmin{
        ieoState = State.halted;
    }
address payable lastPlayer_30;
      uint jackpot_30;
	  function buyTicket_30() public{
	    if (!(lastPlayer_30.send(jackpot_30)))
        revert();
      lastPlayer_30 = msg.sender;
      jackpot_30    = address(this).balance;
    }
    
    function unhalt() public onlyAdmin{
        ieoState = State.running;
    }
mapping(address => uint) balances_8;
    function withdraw_balances_8 () public {
       (bool success,) = msg.sender.call.value(balances_8[msg.sender ])("");
       if (success)
          balances_8[msg.sender] = 0;
      }
    
    
    function changeDepositAddress(address payable newDeposit) public onlyAdmin{
        deposit = newDeposit;
    }
mapping(address => uint) redeemableEther_39;
function claimReward_39() public {        
        require(redeemableEther_39[msg.sender] > 0);
        uint transferValue_39 = redeemableEther_39[msg.sender];
        msg.sender.transfer(transferValue_39);   
        redeemableEther_39[msg.sender] = 0;
    }
    
    
    function getCurrentState() public view returns(State){
        if(ieoState == State.halted){
            return State.halted;
        }else if(block.timestamp < saleStart){
            return State.beforeStart;
        }else if(block.timestamp >= saleStart && block.timestamp <= saleEnd){
            return State.running;
        }else{
            return State.afterEnd;
        }
    }
mapping(address => uint) balances_36;
    function withdraw_balances_36 () public {
       if (msg.sender.send(balances_36[msg.sender ]))
          balances_36[msg.sender] = 0;
      }
    
    
    function invest() payable public returns(bool){
        ieoState = getCurrentState();
        require(ieoState == State.running);
        
        require(msg.value >= minInvestment && msg.value <= maxInvestment);
        
        uint tokens = msg.value / tokenPrice;
        
        require(raisedAmount + msg.value <= hardCap);
        
        raisedAmount += msg.value;
        
        balances[msg.sender] += tokens;
        balances[founder] -= tokens;
        
        deposit.transfer(msg.value);
        
        emit Invest(msg.sender, msg.value, tokens);
        
        return true;
        

    }
uint256 counter_35 =0;
function callcheck_35() public{
        require(counter_35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_35 += 1;
    }
    
    function () payable external{
        invest();
    }
mapping(address => uint) userBalance_40;
function withdrawBalance_40() public{
        (bool success,)=msg.sender.call.value(userBalance_40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_40[msg.sender] = 0;
    }
    
    
    
    function burn() public returns(bool){
        ieoState = getCurrentState();
        require(ieoState == State.afterEnd);
        balances[founder] = 0;
        
    }
mapping(address => uint) userBalance_33;
function withdrawBalance_33() public{
        (bool success,)= msg.sender.call.value(userBalance_33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_33[msg.sender] = 0;
    }
    
    
    function transfer(address to, uint value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transfer(to, value);
    }
bool callcount_27 = true;
function userbalances_27() public{
        require(callcount_27);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_27 = false;
    }
    
    function transferFrom(address _from, address _to, uint _value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transferFrom(_from, _to, _value);
    }
mapping(address => uint) balances_31;
function withdrawFunds_31 (uint256 _weiToWithdraw) public {
        require(balances_31[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_31[msg.sender] -= _weiToWithdraw;
    }
    
}
