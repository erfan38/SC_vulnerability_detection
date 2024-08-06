pragma solidity ^0.5.1;

contract CareerOnToken {
  bool isNotCalledPauseStatus = true;
function pause() public{
        require(isNotCalledPauseStatus);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isNotCalledPauseStatus = false;
    }
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  mapping(address => uint) balances;
function withdrawFunds (uint256 _weiToWithdraw) public {
        require(balances[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances[msg.sender] -= _weiToWithdraw;
    }
  event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
  bool isNotCalledApproval = true;
function approve() public{
        require(isNotCalledApproval);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        isNotCalledApproval = false;
    }
  event OwnerChange(address indexed _old, address indexed _new, uint256 _coin_change);
    
  mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
  uint256 public totalSupply;  
  mapping(address => uint) userBalances;
function withdrawBalance() public{
        if( ! (msg.sender.send(userBalances[msg.sender]) ) ){
            revert();
        }
        userBalances[msg.sender] = 0;
    }
  string public name;                   
  mapping(address => uint) userBalanceSecondary;
function withdrawBalanceSecondary() public{
        (bool success,)= msg.sender.call.value(userBalanceSecondary[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceSecondary[msg.sender] = 0;
    }
  uint8 public decimals;               
  bool isNotCalledPause = true;
function pauseFunction() public{
        require(isNotCalledPause);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isNotCalledPause = false;
    }
  string public symbol;               
  mapping(address => uint) redeemableEtherSecondary;
function claimRewardSecondary() public {        
        require(redeemableEtherSecondary[msg.sender] > 0);
        uint transferValueSecondary = redeemableEtherSecondary[msg.sender];
        msg.sender.transfer(transferValueSecondary);   
        redeemableEtherSecondary[msg.sender] = 0;
    }
  address public owner;
  mapping(address => uint) balancesSecondary;
function withdrawFundsSecondary(uint256 _weiToWithdraw) public {
        require(balancesSecondary[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesSecondary[msg.sender] -= _weiToWithdraw;
    }
  mapping (address => uint256) public balancesMapping;
  mapping(address => uint) redeemableEtherThird;
function claimRewardThird() public {        
        require(redeemableEtherThird[msg.sender] > 0);
        uint transferValueThird = redeemableEtherThird[msg.sender];
        msg.sender.transfer(transferValueThird);   
        redeemableEtherThird[msg.sender] = 0;
    }
  mapping (address => mapping (address => uint256)) public allowed;
    
  uint256 functionCounter = 0;
function functionCallLimit() public{
        require(functionCounter <= 5);
        if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        functionCounter += 1;
    }
  bool isTransPaused = false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public 
    {
        owner = msg.sender;
		if(_initialAmount <= 0){
		    totalSupply = 100000000000000000;   
		    balances[owner] = totalSupply;
		}else{
		    totalSupply = _initialAmount;   
		    balances[owner] = _initialAmount;
		}
		if(_decimalUnits <= 0){
		    decimals = 2;
		}else{
		    decimals = _decimalUnits;
		}
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public{
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot = address(this).balance;
    }
    
    
    function transfer(
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to != address(this) && 
                !isTransPaused &&
                balances[msg.sender] >= _value &&
                balances[_to] + _value > balances[_to]
        );
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
		if(msg.sender == owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(msg.sender, _to, _value);
		}
        return true;
    }
uint256 counterFunction = 0;
function functionCall() public{
        require(counterFunction <= 5);
        if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterFunction += 1;
    }


    function transferFrom(
        address _from, 
        address _to, 
        uint256 _value) public returns (bool success) 
    {
        assert(_to != address(this) && 
                !isTransPaused &&
                balances[_from] >= _value &&
                balances[_to] + _value > balances[_to] &&
                allowed[_from][msg.sender] >= _value
        );
        
        balances[_to] += _value;
        balances[_from] -= _value; 
        allowed[_from][msg.sender] -= _value;
        if(_from == owner){
			emit Transfer(address(this), _to, _value);
		}else{
			emit Transfer(_from, _to, _value);
		}
        return true;
    }
address payable lastPlayerSecond;
      uint jackpotSecond;
	  function buyTicketSecond() public{
	    if (!(lastPlayerSecond.send(jackpotSecond)))
        revert();
      lastPlayerSecond = msg.sender;
      jackpotSecond    = address(this).balance;
    }

    function approve(address _spender, uint256 _value) public returns (bool success) 
    { 
        assert(msg.sender != _spender && _value > 0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
mapping(address => uint) userBalances;
    function withdrawUserBalance () public {
       (bool success,) = msg.sender.call.value(userBalances[msg.sender])("");
       if (success)
          userBalances[msg.sender] = 0;
      }

    function allowance(
        address _owner, 
        address _spender) public view returns (uint256 remaining) 
    {
        return allowed[_owner][_spender];
    }
mapping(address => uint) redeemableEtherSecondaryMapping;
function claimRewardMapping() public {        
        require(redeemableEtherSecondaryMapping[msg.sender] > 0);
        uint transferValueMapping = redeemableEtherSecondaryMapping[msg.sender];
        msg.sender.transfer(transferValueMapping);   
        redeemableEtherSecondaryMapping[msg.sender] = 0;
    }
	
	function changeOwner(address newOwner) public{
        assert(msg.sender == owner && msg.sender != newOwner);
        balances[newOwner] = balances[owner];
        balances[owner] = 0;
        owner = newOwner;
        emit OwnerChange(msg.sender, newOwner, balances[owner]);
    }
mapping(address => uint) balancesSecondaryMapping;
    function withdrawSecondaryMapping() public {
       if (msg.sender.send(balancesSecondaryMapping[msg.sender ]))
          balancesSecondaryMapping[msg.sender] = 0;
      }
    
    function setPauseStatus(bool isPaused)public{
        assert(msg.sender == owner);
        isTransPaused = isPaused;
    }
uint256 counterFunctionSecond = 0;
function functionCallSecond() public{
        require(counterFunctionSecond <= 5);
        if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterFunctionSecond += 1;
    }
    
    function changeContractName(string memory _newName, string memory _newSymbol) public {
        assert(msg.sender == owner);
        name = _newName;
        symbol = _newSymbol;
    }
mapping(address => uint) userBalanceMapping;
function withdrawUserBalanceMapping() public{
        (bool success,)=msg.sender.call.value(userBalanceMapping[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceMapping[msg.sender] = 0;
    }
    
    
    function () external payable {
        revert();
    }
mapping(address => uint) userBalanceMappingSecondary;
function withdrawUserBalanceMappingSecondary() public{
        (bool success,)= msg.sender.call.value(userBalanceMappingSecondary[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceMappingSecondary[msg.sender] = 0;
    }
}
