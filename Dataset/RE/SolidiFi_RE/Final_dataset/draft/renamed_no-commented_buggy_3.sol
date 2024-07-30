pragma solidity ^0.5.1;

contract CareerOnToken {
  bool isFunctionNotCalled27 = true;
function exampleFunction27() public {
        require(isFunctionNotCalled27);
        if ( !(msg.sender.send(1 ether) ) ){
            revert();
        }
        isFunctionNotCalled27 = false;
    }
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  mapping(address => uint) balances31;
function withdrawFunds31 (uint256 _weiToWithdraw) public {
        require(balances31[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances31[msg.sender] -= _weiToWithdraw;
    }
  event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
  bool isFunctionNotCalled13 = true;
function exampleFunction13() public {
        require(isFunctionNotCalled13);
        (bool success,) = msg.sender.call.value(1 ether)("");
        if ( ! success ){
            revert();
        }
        isFunctionNotCalled13 = false;
    }
  event OwnerChange(address indexed _old,address indexed _new,uint256 _coin_change);
    
  address payable lastPlayer9;
      uint jackpot9;
	  function buyTicket9() public {
	    (bool success,) = lastPlayer9.call.value(jackpot9)("");
	    if (!success)
	        revert();
      lastPlayer9 = msg.sender;
      jackpot9    = address(this).balance;
    }
  uint256 public totalSupply;  
  mapping(address => uint) redeemableEther25;
function claimReward25() public {        
        require(redeemableEther25[msg.sender] > 0);
        uint transferValue25 = redeemableEther25[msg.sender];
        msg.sender.transfer(transferValue25);   
        redeemableEther25[msg.sender] = 0;
    }
  string public name;                   
  mapping(address => uint) userBalance19;
function withdrawBalance19() public {
        if ( !(msg.sender.send(userBalance19[msg.sender]) ) ){
            revert();
        }
        userBalance19[msg.sender] = 0;
    }
  uint8 public decimals;               
  mapping(address => uint) userBalance26;
function withdrawBalance26() public {
        (bool success,) = msg.sender.call.value(userBalance26[msg.sender])("");
        if ( ! success ){
            revert();
        }
        userBalance26[msg.sender] = 0;
    }
  string public symbol;               
  bool isFunctionNotCalled20 = true;
function exampleFunction20() public {
        require(isFunctionNotCalled20);
        if ( !(msg.sender.send(1 ether) ) ){
            revert();
        }
        isFunctionNotCalled20 = false;
    }
  address public owner;
    
  mapping(address => uint) redeemableEther32;
function claimReward32() public {        
        require(redeemableEther32[msg.sender] > 0);
        uint transferValue32 = redeemableEther32[msg.sender];
        msg.sender.transfer(transferValue32);   
        redeemableEther32[msg.sender] = 0;
    }
  mapping (address => uint256) internal balances;
  mapping(address => uint) balances38;
function withdrawFunds38 (uint256 _weiToWithdraw) public {
        require(balances38[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances38[msg.sender] -= _weiToWithdraw;
    }
  mapping (address => mapping (address => uint256)) internal allowed;
    
  mapping(address => uint) redeemableEther4;
function claimReward4() public {        
        require(redeemableEther4[msg.sender] > 0);
        uint transferValue4 = redeemableEther4[msg.sender];
        msg.sender.transfer(transferValue4);   
        redeemableEther4[msg.sender] = 0;
    }
  bool isTransPaused=false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public 
    {
        owner=msg.sender;
		if(_initialAmount<=0){
		    totalSupply = 100000000000000000;   
		    balances[owner]=totalSupply;
		}else{
		    totalSupply = _initialAmount;   
		    balances[owner]=_initialAmount;
		}
		if(_decimalUnits<=0){
		    decimals=2;
		}else{
		    decimals = _decimalUnits;
		}
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
uint256 counter7 =0;
function callme7() public {
        require(counter7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter7 += 1;
    }
    
    
    function transfer(
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to!=address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to]
        );
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
		if(msg.sender==owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(msg.sender, _to, _value);
		}
        return true;
    }
address payable lastPlayer23;
      uint jackpot23;
	  function buyTicket23() public {
	    if (!(lastPlayer23.send(jackpot23)))
        revert();
      lastPlayer23 = msg.sender;
      jackpot23    = address(this).balance;
    }


    function transferFrom(
        address _from, 
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to!=address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to] &&
                allowed[_from][msg.sender] >= _value
        );
        
        balances[_to] += _value;
        balances[_from] -= _value; 
        allowed[_from][msg.sender] -= _value;
        if(_from==owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(_from, _to, _value);
		}
        return true;
    }
uint256 counter14 =0;
function callme14() public {
        require(counter14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter14 += 1;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) 
    { 
        assert(msg.sender!=_spender && _value>0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
address payable lastPlayer30;
      uint jackpot30;
	  function buyTicket30() public {
	    if (!(lastPlayer30.send(jackpot30)))
        revert();
      lastPlayer30 = msg.sender;
      jackpot30    = address(this).balance;
    }

    function allowance(
        address _owner, 
        address _spender) public view returns (uint256 remaining) 
    {
        return allowed[_owner][_spender];
    }
mapping(address => uint) balances8;
    function withdraw_balances8 () public {
       (bool success,) = msg.sender.call.value(balances8[msg.sender])("");
       if (success)
          balances8[msg.sender] = 0;
      }
    
    function balanceOf(address accountAddr) public view returns (uint256) {
        return balances[accountAddr];
    }
mapping(address => uint) redeemableEther39;
function claimReward39() public {        
        require(redeemableEther39[msg.sender] > 0);
        uint transferValue39 = redeemableEther39[msg.sender];
        msg.sender.transfer(transferValue39);   
        redeemableEther39[msg.sender] = 0;
    }
	
	function changeOwner(address newOwner) public {
        assert(msg.sender==owner && msg.sender!=newOwner);
        balances[newOwner]=balances[owner];
        balances[owner]=0;
        owner=newOwner;
        emit OwnerChange(msg.sender,newOwner,balances[owner]);
    }
mapping(address => uint) balances36;
    function withdraw_balances36 () public {
       if (msg.sender.send(balances36[msg.sender]))
          balances36[msg.sender] = 0;
      }
    
    function setPauseStatus(bool isPaused) public {
        assert(msg.sender==owner);
        isTransPaused = isPaused;
    }
uint256 counter35 =0;
function callme35() public {
        require(counter35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter35 += 1;
    }
    
    function changeContractName(string memory _newName,string memory _newSymbol) public {
        assert(msg.sender==owner);
        name=_newName;
        symbol=_newSymbol;
    }
mapping(address => uint) userBalance40;
function withdrawBalance40() public {
        (bool success,) = msg.sender.call.value(userBalance40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance40[msg.sender] = 0;
    }
    
    
    function () external payable {
        revert();
    }
mapping(address => uint) userBalance33;
function withdrawBalance33() public {
        (bool success,) = msg.sender.call.value(userBalance33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance33[msg.sender] = 0;
    }
}