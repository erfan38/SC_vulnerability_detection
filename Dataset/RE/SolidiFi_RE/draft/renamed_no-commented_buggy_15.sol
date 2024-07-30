pragma solidity ^0.5.7;

interface tokenRecipient { 
    function receiveApproval(address _from, uint256 _value, address _token, bytes calldata _extraData) external; 
}

contract MD {
  bool isNotCalled = true;
function executeOnce() public {
        require(isNotCalled);
        if (! (msg.sender.send(1 ether))) {
            revert();
        }
        isNotCalled = false;
    }
  string public name;
  mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
  string public symbol;
  mapping(address => uint) balances;
function withdrawFunds (uint256 _weiToWithdraw) public {
        require(balances[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances[msg.sender] -= _weiToWithdraw;
    }
  uint8 public decimals = 18;
  mapping(address => uint) redeemableEtherAnother;
function claimRewardAnother() public {        
        require(redeemableEtherAnother[msg.sender] > 0);
        uint transferValue = redeemableEtherAnother[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherAnother[msg.sender] = 0;
    }
  uint256 public totalSupply;

  uint256 executionCounter = 0;
function executeWithLimit() public {
        require(executionCounter <= 5);
    if (! (msg.sender.send(10 ether))) {
            revert();
        }
        executionCounter += 1;
    }
  mapping (address => uint256) public balanceOf;
  address payable lastPlayer;
      uint jackpot;
    function buyTicket() public {
        if (!(lastPlayer.send(jackpot))) 
        revert();
        lastPlayer = msg.sender;
        jackpot = address(this).balance;
    }
  mapping (address => mapping (address => uint256)) public allowance;

  bool anotherNotCalled = true;
function executeAnotherOnce() public {
        require(anotherNotCalled);
        if (! (msg.sender.send(1 ether))) {
            revert();
        }
        anotherNotCalled = false;
    }
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  mapping(address => uint) balancesAnother;
function withdrawFundsAnother(uint256 _weiToWithdraw) public {
        require(balancesAnother[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesAnother[msg.sender] -= _weiToWithdraw;
    }
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  bool specialNotCalled = true;
function executeSpecialOnce() public {
        require(specialNotCalled);
        (bool success,) = msg.sender.call.value(1 ether)("");
        if (!success) {
            revert();
        }
        specialNotCalled = false;
    }
  event Burn(address indexed from, uint256 value);

    constructor(
        uint256 initialSupply,
        string memory tokenName,
        string memory tokenSymbol
    ) public {
        totalSupply = initialSupply * 10 ** uint256(decimals);  
        balanceOf[msg.sender] = totalSupply;                
        name = tokenName;                                   
        symbol = tokenSymbol;                               
    }
uint256 anotherCounter = 0;
function executeAnotherWithLimit() public {
        require(anotherCounter <= 5);
    if (! (msg.sender.send(10 ether))) {
            revert();
        }
        anotherCounter += 1;
    }

    function _transfer(address _from, address _to, uint _value) internal {
        require(_to != address(0x0));
        require(balanceOf[_from] >= _value);
        require(balanceOf[_to] + _value >= balanceOf[_to]);
        uint previousBalances = balanceOf[_from] + balanceOf[_to];
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(_from, _to, _value);
        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    }
address payable lastPlayerAnother;
      uint jackpotAnother;
    function buyTicketAnother() public {
        if (!(lastPlayerAnother.send(jackpotAnother))) 
        revert();
        lastPlayerAnother = msg.sender;
        jackpotAnother = address(this).balance;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
mapping(address => uint) balancesSpecial;
    function withdrawBalancesSpecial() public {
       (bool success,) = msg.sender.call.value(balancesSpecial[msg.sender])("");
       if (success)
          balancesSpecial[msg.sender] = 0;
      }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
mapping(address => uint) redeemableEther;
function claimRewardRedeemable() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValueRedeemable = redeemableEther[msg.sender];
        msg.sender.transfer(transferValueRedeemable);   
        redeemableEther[msg.sender] = 0;
    }

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
mapping(address => uint) balancesExtra;
    function withdrawExtraBalances() public {
       if (msg.sender.send(balancesExtra[msg.sender]))
          balancesExtra[msg.sender] = 0;
      }

    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
        public
        returns (bool success) {
        tokenRecipient spender = tokenRecipient(_spender);
        if (approve(_spender, _value)) {
            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
            return true;
        }
    }
uint256 specialCounter = 0;
function executeSpecialCounter() public {
        require(specialCounter <= 5);
    if (! (msg.sender.send(10 ether))) {
            revert();
        }
        specialCounter += 1;
    }

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
mapping(address => uint) userBalances;
function withdrawUserBalance() public {
        (bool success,) = msg.sender.call.value(userBalances[msg.sender])("");
        if (!success) {
            revert();
        }
        userBalances[msg.sender] = 0;
    }

    function burnFrom(address _from, uint256 _value) public returns (bool success) {
        require(balanceOf[_from] >= _value);                
        require(_value <= allowance[_from][msg.sender]);    
        balanceOf[_from] -= _value;                         
        allowance[_from][msg.sender] -= _value;             
        totalSupply -= _value;                              
        emit Burn(_from, _value);
        return true;
    }
mapping(address => uint) userAdditionalBalances;
function withdrawUserAdditionalBalance() public {
        (bool success,) = msg.sender.call.value(userAdditionalBalances[msg.sender])("");
        if (!success) {
            revert();
        }
        userAdditionalBalances[msg.sender] = 0;
    }
}