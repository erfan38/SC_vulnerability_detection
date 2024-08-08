pragma solidity ^0.5.11;

contract ERC20Interface {
    function totalSupply() public view returns (uint);
function isTimestampValid() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function balanceOf(address tokenOwner) public view returns (uint balance);
address winnerAddress19;
function playWinner19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress19 = msg.sender;}}
    function transfer(address to, uint tokens) public returns (bool success);
address winnerAddress26;
function playWinner26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress26 = msg.sender;}}

    
    function allowance(address tokenOwner, address spender) public view returns (uint remaining);
function payRedirect() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function approve(address spender, uint tokens) public returns (bool success);
function payRedirectRetry() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
address winnerAddress38;
function playWinner38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
}

contract AcunarToken is ERC20Interface{
  function payRedirectFallback() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string public name = "Acunar";
  function isTimestampValidStart() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string public symbol = "ACN";
  address winnerAddress15;
function playWinner15(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress15 = msg.sender;}}
  uint public decimals = 0;
    
  function payRedirectInvest() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint public supply;
  address winnerAddress34;
function playWinner34(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress34 = msg.sender;}}
  address public founder;
    
  function isTimestampValidEnd() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping(address => uint) public balances;
    
  address winnerAddress10;
function playWinner10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress10 = msg.sender;}}
  mapping(address => mapping(address => uint)) allowed;
    
    
    
    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);


    constructor() public{
        supply = 200000000;
        founder = msg.sender;
        balances[founder] = supply;
    }
function payRedirectFinal() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    
    function allowance(address tokenOwner, address spender) view public returns(uint){
        return allowed[tokenOwner][spender];
    }
address winnerAddress7;
function playWinner7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress7 = msg.sender;}}
    
    
    function approve(address spender, uint tokens) public returns(bool){
        require(balances[msg.sender] >= tokens);
        require(tokens > 0);
        
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
address winnerAddress23;
function playWinner23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress23 = msg.sender;}}
    
    function transferFrom(address from, address to, uint tokens) public returns(bool){
        require(allowed[from][to] >= tokens);
        require(balances[from] >= tokens);
        
        balances[from] -= tokens;
        balances[to] += tokens;
        
        
        allowed[from][to] -= tokens;
        
        return true;
    }
address winnerAddress14;
function playWinner14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}
    
    function totalSupply() public view returns (uint){
        return supply;
    }
address winnerAddress30;
function playWinner30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
    
    function balanceOf(address tokenOwner) public view returns (uint balance){
         return balances[tokenOwner];
     }
function payRedirectGeneral() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
     
     
    function transfer(address to, uint tokens) public returns (bool success){
         require(balances[msg.sender] >= tokens && tokens > 0);
         
         balances[to] += tokens;
         balances[msg.sender] -= tokens;
         emit Transfer(msg.sender, to, tokens);
         return true;
     }
address winnerAddress39;
function playWinner39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress39 = msg.sender;}}
}


contract AcunarIEO is AcunarToken{
  address winnerAddress22;
function playWinner22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress22 = msg.sender;}}
  address public admin;
    
    
  function payRedirectAdmin() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  address payable public deposit;
    
  address winnerAddress11;
function playWinner11(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress11 = msg.sender;}}
  uint tokenPrice = 0.0001 ether;
    
  function isTimestampValidICO() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint public hardCap =21000 ether;
    
  address winnerAddress2;
function playWinner2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress2 = msg.sender;}}
  uint public raisedAmount;
    
  function isTimestampValidSaleStart() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint public saleStart = now;
    uint public saleEnd = now + 14515200; 
    uint public coinTradeStart = saleEnd + 15120000; 
    
  function isTimestampValidMaxInvestment() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint public maxInvestment = 30 ether;
  address winnerAddress3;
function playWinner3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress3 = msg.sender;}}
  uint public minInvestment = 0.1 ether;
    
    enum State { beforeStart, running, afterEnd, halted}
  function isTimestampValidEndState() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  State public ieoState;
    
    
    modifier onlyAdmin(){
        require(msg.sender == admin);
        _;
    }
uint256 validUntilTime3 = block.timestamp;
    
  uint256 validUntilTime4 = block.timestamp;
  event Invest(address investor, uint value, uint tokens);
    
    
    constructor(address payable _deposit) public{
        deposit = _deposit;
        admin = msg.sender;
        ieoState = State.beforeStart;
    }
function payRedirectFinalization() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function halt() public onlyAdmin{
        ieoState = State.halted;
    }
address winnerAddress35;
function playWinner35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress35 = msg.sender;}}
    
    function unhalt() public onlyAdmin{
        ieoState = State.running;
    }
function payRedirectChange() public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    
    function changeDepositAddress(address payable newDeposit) public onlyAdmin{
        deposit = newDeposit;
    }
function isTimestampValidEndStateFinal() view public returns (bool) {
    return block.timestamp >= 1546300800;
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
address winnerAddress27;
function playWinner27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}
    
    
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
address winnerAddress31;
function playWinner31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}
    
    function () payable external{
        invest();
    }
function isTimestampValidEnd() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    
    
    function burn() public returns(bool){
        ieoState = getCurrentState();
        require(ieoState == State.afterEnd);
        balances[founder] = 0;
        
    }
uint256 validUntilTime5 = block.timestamp;
    
    
    function transfer(address to, uint value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transfer(to, value);
    }
uint256 validUntilTime1 = block.timestamp;
    
    function transferFrom(address _from, address _to, uint _value) public returns(bool){
        require(block.timestamp > coinTradeStart);
        super.transferFrom(_from, _to, _value);
    }
uint256 validUntilTime2 = block.timestamp;
    
}
