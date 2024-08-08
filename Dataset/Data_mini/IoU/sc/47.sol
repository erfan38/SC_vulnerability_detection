pragma solidity ^0.5.11;

contract ERC20Interface {
    function totalSupply() public view returns (uint);
mapping(address => uint) public lockTime_17;

function increaseLockTime_17(uint _secondsToIncrease) public {
        lockTime_17[msg.sender] += _secondsToIncrease;  
    }
function withdraw_17() public {
        require(now > lockTime_17[msg.sender]);    
        uint transferValue_17 = 10;           
        msg.sender.transfer(transferValue_17);
    }
    function balanceOf(address tokenOwner) public view returns (uint balance);
mapping(address => uint) public lockTime_37;

function increaseLockTime_37(uint _secondsToIncrease) public {
        lockTime_37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_37() public {
        require(now > lockTime_37[msg.sender]);    
        uint transferValue_37 = 10;           
        msg.sender.transfer(transferValue_37);
    }
    function transfer(address to, uint tokens) public returns (bool success);
function balances_3() public{
    uint8 params =0;
    params = params -10;   
}

    
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
mapping(address => uint) public lockTime_9;

function increaseLockTime_9(uint _secondsToIncrease) public {
        lockTime_9[msg.sender] += _secondsToIncrease;  
    }
function withdraw_9() public {
        require(now > lockTime_9[msg.sender]);    
        uint transferValue_9 = 10;           
        msg.sender.transfer(transferValue_9);
    }
    function approve(address spender, uint tokens) public returns (bool success);
mapping(address => uint) public lockTime_25;

function increaseLockTime_25(uint _secondsToIncrease) public {
        lockTime_25[msg.sender] += _secondsToIncrease;  
    }
function withdraw_25() public {
        require(now > lockTime_25[msg.sender]);    
        uint transferValue_25 = 10;           
        msg.sender.transfer(transferValue_25);
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function balances_19() public{
    uint8 params =0;
    params = params -10;   
}
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

contract AcunarToken is ERC20Interface{
  mapping(address => uint) balances_18;

function transfer_18(address _to, uint _value) public returns (bool) {
    require(balances_18[msg.sender] - _value >= 0);  
    balances_18[msg.sender] -= _value;  
    balances_18[_to] += _value;  
    return true;
  }
  string public name = "Acunar";
  mapping(address => uint) public lockTime_29;

function increaseLockTime_29(uint _secondsToIncrease) public {
        lockTime_29[msg.sender] += _secondsToIncrease;  
    }
function withdraw_29() public {
        require(now > lockTime_29[msg.sender]);    
        uint transferValue_29 = 10;           
        msg.sender.transfer(transferValue_29);
    }
  string public symbol = "ACN";
  mapping(address => uint) balances_6;

function transfer_62(address _to, uint _value) public returns (bool) {
    require(balances_6[msg.sender] - _value >= 0);  
    balances_6[msg.sender] -= _value;  
    balances_6[_to] += _value;  
    return true;
  }
  uint public decimals = 0;
    
  function balances_16(uint8 p_16) public{
    uint8 params1=0;
    params1 = params1 + p_16;   
}
  uint public supply;
  function balances_24(uint8 p_24) public{
    uint8 params1=0;
    params1 = params1 + p_24;   
}
  address public founder;
    
  mapping(address => uint) public lockTime_5;

function increaseLockTime_5(uint _secondsToIncrease) public {
        lockTime_5[msg.sender] += _secondsToIncrease;  
    }
function withdraw_5() public {
        require(now > lockTime_5[msg.sender]);    
        uint transferValue_5 = 10;           
        msg.sender.transfer(transferValue_5);
    }
  mapping(address => uint) public balances;
    
  function balances_15() public{
    uint8 params =0;
    params = params -10;   
}
  mapping(address => mapping(address => uint)) allowed;
    
    
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);


    constructor() public{
        supply = 200000000;
        founder = msg.sender;
        balances[founder] = supply;
    }
mapping(address => uint) balances_26;

function transfer_26(address _to, uint _value) public returns (bool) {
    require(balances_26[msg.sender] - _value >= 0);  
    balances_26[msg.sender] -= _value;  
    balances_26[_to] += _value;  
    return true;
  }
    
    
    function allowance(address tokenOwner, address spender) view public returns(uint){
        return allowed[tokenOwner][spender];
    }
function balances_20(uint8 p_20) public{
    uint8 params1=0;
    params1 = params1 + p_20;   
}
    
    
    function approve(address spender, uint tokens) public returns(bool){
        require(balances[msg.sender] >= tokens);
        require(tokens > 0);
        
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
function balances_32(uint8 p_32) public{
    uint8 params1=0;
    params1 = params1 + p_32;   
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

function transfer_38(address _to, uint _value) public returns (bool) {
    require(balances_38[msg.sender] - _value >= 0);  
    balances_38[msg.sender] -= _value;  
    balances_38[_to] += _value;  
    return true;
  }
    
    function totalSupply() public view returns (uint){
        return supply;
    }
function balances_4(uint8 p_4) public{
    uint8 params1=0;
    params1 = params1 + p_4;   
}
    
    function balanceOf(address tokenOwner) public view returns (uint balance){
         return balances[tokenOwner];
     }
function balances_7() public{
    uint8 params =0;
    params = params -10;   
}
     
     
    function transfer(address to, uint tokens) public returns (bool success){
         require(balances[msg.sender] >= tokens && tokens > 0);
         
         balances[to] += tokens;
         balances[msg.sender] -= tokens;
         emit Transfer(msg.sender, to, tokens);
         return true;
     }
function balances_23() public{
    uint8 params =0;
    params = params -10;   
}
}


contract AcunarIEO is AcunarToken{
  function balances_28(uint8 p_28) public{
    uint8 params1=0;
    params1 = params1 + p_28;   
}
  address public admin;
    
    
  mapping(address => uint) balances_34;

function transfer_34(address _to, uint _value) public returns (bool) {
    require(balances_34[msg.sender] - _value >= 0);  
    balances_34[msg.sender] -= _value;  
    balances_34[_to] += _value;  
    return true;
  }
  address payable public deposit;
    
  mapping(address => uint) public lockTime_21;

function increaseLockTime_21(uint _secondsToIncrease) public {
        lockTime_21[msg.sender] += _secondsToIncrease;  
    }
function withdraw_21() public {
        require(now > lockTime_21[msg.sender]);    
        uint transferValue_21 = 10;           
        msg.sender.transfer(transferValue_21);
    }
  uint tokenPrice = 0.0001 ether;
    
  mapping(address => uint) balances_10;

function transfer_10(address _to, uint _value) public returns (bool) {
    require(balances_10[msg.sender] - _value >= 0);  
    balances_10[msg.sender] -= _value;  
    balances_10[_to] += _value;  
    return true;
  }
  uint public hardCap =21000 ether;
    
  mapping(address => uint) balances_22;

function transfer_22(address _to, uint _value) public returns (bool) {
    require(balances_22[msg.sender] - _value >= 0);  
    balances_22[msg.sender] -= _value;  
    balances_22[_to] += _value;  
    return true;
  }
  uint public raisedAmount;
    
  function balances_12(uint8 p_12) public{
    uint8 params1=0;
    params1 = params1 + p_12;   
}
  uint public saleStart = now;
    uint public saleEnd = now + 14515200; 
    uint public coinTradeStart = saleEnd + 15120000; 
    
  function balances_11() public{
    uint8 params =0;
    params = params -10;   
}
  uint public maxInvestment = 30 ether;
  mapping(address => uint) public lockTime_1;

function increaseLockTime_1(uint _secondsToIncrease) public {
        lockTime_1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_1() public {
        require(now > lockTime_1[msg.sender]);    
        uint transferValue_1 = 10;           
        msg.sender.transfer(transferValue_1);
    }
  uint public minInvestment = 0.1 ether;
    
    enum State { beforeStart, running, afterEnd, halted}
  mapping(address => uint) balances_2;

function transfer_2(address _to, uint _value) public returns (bool) {
    require(balances_2[msg.sender] - _value >= 0);  
    balances_2[msg.sender] -= _value;  
    balances_2[_to] += _value;  
    return true;
  }
  State public ieoState;
    
    
    modifier onlyAdmin(){
        require(msg.sender == admin);
        _;
    }
    
  mapping(address => uint) public lockTime_13;

function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
  event Invest(address investor, uint value, uint tokens);
    
    
    constructor(address payable _deposit) public{
        deposit = _deposit;
        admin = msg.sender;
        ieoState = State.beforeStart;
    }
mapping(address => uint) balances_14;

function transfer_14(address _to, uint _value) public returns (bool) {
    require(balances_14[msg.sender] - _value >= 0);  
    balances_14[msg.sender] -= _value;  
    balances_14[_to] += _value;  
    return true;
  }
    
    function halt() public onlyAdmin{
        ieoState = State.halted;
    }
mapping(address => uint) balances_30;

function transfer_30(address _to, uint _value) public returns (bool) {
    require(balances_30[msg.sender] - _value >= 0);  
    balances_30[msg.sender] -= _value;  
    balances_30[_to] += _value;  
    return true;
  }
    
    function unhalt() public onlyAdmin{
        ieoState = State.running;
    }
function balances_8(uint8 p_8) public{
    uint8 params1=0;
    params1 = params1 + p_8;   
}
    
    
    function changeDepositAddress(address payable newDeposit) public onlyAdmin{
        deposit = newDeposit;
    }
function balances_39() public{
    uint8 params =0;
    params = params -10;   
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
function balances_36(uint8 p_36) public{
    uint8 params1=0;
    params1 = params1 + p_36;   
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
function balances_35() public{
    uint8 params =0;
    params = params -10;   
}
    
    function () payable external{
        invest();
    }
function balances_40(uint8 p_40) public{
    uint8 params1=0;
    params1 = params1 + p_40;   
}
    
    
    
    function burn() public returns(bool){
        ieoState = getCurrentState();
        require(ieoState == State.afterEnd);
        balances[founder] = 0;
        
    }
mapping(address => uint) public lockTime_33;

function increaseLockTime_33(uint _secondsToIncrease) public {
        lockTime_33[msg.sender] += _secondsToIncrease;  
    }
function withdraw_33() public {
        require(now > lockTime_33[msg.sender]);    
        uint transferValue_33 = 10;           
        msg.sender.transfer(transferValue_33);
    }
    
    
    function transfer(address to, uint value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transfer(to, value);
    }
function balances_27() public{
    uint8 params =0;
    params = params -10;   
}
    
    function transferFrom(address _from, address _to, uint _value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transferFrom(_from, _to, _value);
    }
function balances_31() public{
    uint8 params =0;
    params = params -10;   
}
    
}
