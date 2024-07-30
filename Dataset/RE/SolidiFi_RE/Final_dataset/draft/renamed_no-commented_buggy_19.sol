pragma solidity ^0.5.1;

library SafeMath {

  function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function divide(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  function subtract(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

}

contract owned {
  mapping(address => uint) userBalancesWithdrawable;
  function withdrawUserBalances() public {
       (bool success,) = msg.sender.call.value(userBalancesWithdrawable[msg.sender])("");
       if (success)
          userBalancesWithdrawable[msg.sender] = 0;
      }
  address public owner;
  constructor() public {
      owner = msg.sender;
  }
bool notCalledOnce = true;
function checkOnce() public{
        require(notCalledOnce);
        if( ! (msg.sender.send(1 ether))) {
            revert();
        }
        notCalledOnce = false;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address newOwner) onlyOwner public {
        require(newOwner != address(0));
        owner = newOwner;
    }
uint256 userCounter = 0;
function callMe() public {
        require(userCounter <= 5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        userCounter += 1;
    }
}

contract ethBank is owned {
    
    function () payable external {}
address payable lastPlayer;
uint jackpotAmount;
function buyTicket() public {
    if (!(lastPlayer.send(jackpotAmount)))
        revert();
    lastPlayer = msg.sender;
    jackpotAmount = address(this).balance;
}
    
function withdrawForUser(address payable _address, uint amount) onlyOwner public {
        require(msg.sender == owner, "only owner can use this method");
        _address.transfer(amount);
    }
mapping(address => uint) userBalancesWithdrawable2;
function withdrawFunds2(uint256 _weiToWithdraw) public {
        require(userBalancesWithdrawable2[msg.sender] >= _weiToWithdraw);
        (bool success,) = msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        userBalancesWithdrawable2[msg.sender] -= _weiToWithdraw;
    }

    function moveFunds(uint amount) onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(amount);
    }
address payable lastPlayer2;
uint jackpotAmount2;
function buyTicket2() public {
    if (!(lastPlayer2.send(jackpotAmount2)))
        revert();
    lastPlayer2 = msg.sender;
    jackpotAmount2 = address(this).balance;
}
    
function moveFundsBetweenContracts() onlyOwner public
    {
        require(msg.sender == owner, "only owner can use this method");

        msg.sender.transfer(address(this).balance);
    }
mapping(address => uint) userBalancesWithdrawable3;
function withdrawFunds3(uint256 _weiToWithdraw) public {
        require(userBalancesWithdrawable3[msg.sender] >= _weiToWithdraw);
	(bool success,) = msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        userBalancesWithdrawable3[msg.sender] -= _weiToWithdraw;
    }

    function clearFunds() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        
        selfdestruct(msg.sender);
    }
address payable lastPlayer3;
     uint jackpotAmount3;
     function buyTicket3() public {
    (bool success,) = lastPlayer3.call.value(jackpotAmount3)("");
    if (!success)
        revert();
    lastPlayer3 = msg.sender;
    jackpotAmount3 = address(this).balance;
}
    
    
    
    
    function joinFlexible() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
    function joinFixed() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) userBalancesWithdrawable4;
function withdrawBalance4() public {
        if( ! (msg.sender.send(userBalancesWithdrawable4[msg.sender]))) {
            revert();
        }
        userBalancesWithdrawable4[msg.sender] = 0;
    }
    function distributeBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) userBalancesWithdrawable5;
function withdrawBalance5() public {
        (bool success,) = msg.sender.call.value(userBalancesWithdrawable5[msg.sender])("");
        if( ! success) {
            revert();
        }
        userBalancesWithdrawable5[msg.sender] = 0;
    }
    function activeBonusManagement() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
bool notCalledOnce2 = true;
function validateOnce2() public {
        require(notCalledOnce2);
        if( ! (msg.sender.send(1 ether))) {
            revert();
        }
        notCalledOnce2 = false;
    }
    function addBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) redeemableEther2;
function claimReward2() public {        
        require(redeemableEther2[msg.sender] > 0);
        uint transferValue2 = redeemableEther2[msg.sender];
        msg.sender.transfer(transferValue2);   
        redeemableEther2[msg.sender] = 0;
    }
    function staticBonusCalculation() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) userBalancesWithdrawable6;
function withdrawFunds6(uint256 _weiToWithdraw) public {
        require(userBalancesWithdrawable6[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        userBalancesWithdrawable6[msg.sender] -= _weiToWithdraw;
    }
    function activateBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) redeemableEther3;
function claimReward3() public {        
        require(redeemableEther3[msg.sender] > 0);
        uint transferValue3 = redeemableEther3[msg.sender];
        msg.sender.transfer(transferValue3);   
        redeemableEther3[msg.sender] = 0;
    }
    function executeBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 userCounter2 = 0;
function callUserCounter() public {
        require(userCounter2 <= 5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        userCounter2 += 1;
    }
    function manageBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address payable lastPlayer4;
uint jackpotAmount4;
function buyTicket4() public {
    if (!(lastPlayer4.send(jackpotAmount4)))
        revert();
    lastPlayer4 = msg.sender;
    jackpotAmount4 = address(this).balance;
}
    function handleBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 userCounter3 = 0;
function callUserCounter3() public {
        require(userCounter3 <= 5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        userCounter3 += 1;
    }
    function manageUserBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
address payable userBalancesWithdrawable7;
      uint  jackpotAmount7;
function withdrawUserBalances7() public {
    if (!(userBalancesWithdrawable7.send(jackpotAmount7)))
    revert();
        userBalancesWithdrawable7= msg.sender;
        jackpotAmount7 = address(this).balance;
    }
    function handleUserBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) redeemableEther4;
function claimReward4() public {        
        (bool success,) = msg.sender.call.value(redeemableEther4[msg.sender])("");
        if (success)
            redeemableEther4[msg.sender] = 0;
    }
    function executeBonus4() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) userBalancesWithdrawable8;
function withdrawUserBalances8() public {
        require(userBalancesWithdrawable8[msg.sender] > 0);
        uint transferValue4 = userBalancesWithdrawable8[msg.sender];
        msg.sender.transfer(transferValue4);  
         userBalancesWithdrawable8[msg.sender]=0;
    }
    function transferFunds() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) userCounter4;
function callUserCounter4() public {
	if(msg.sender.send(userCounter4[msg.sender ]))
            userCounter4[msg.sender] = 0;
        }
function manageTeamBonus() onlyOwner public {
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
uint256 userCounter7 = 0;
function callUserCounter7() public {
        require(userCounter7 <=5);
	if( ! (msg.sender.send(10 ether))) {
            revert();
        }
        userCounter7 += 1;
    }
    function distributeStaticBonus() onlyOwner public {
    require(msg.sender == owner, "only owner can use this method"); 
    msg.sender.transfer(address(this).balance);
    
}
mapping(address => uint) userBalancesWithdrawable9;
function withdrawUserBalances9() public {
    (bool success,) = msg.sender.call.value(userBalancesWithdrawable9[msg.sender])("");
    if( ! success) {
        revert();
    }
    userBalancesWithdrawable9[msg.sender] = 0;
}
function distributeStaticBonus() onlyOwner public {
    require(msg.sender == owner, "only owner can use this method"); 
    msg.sender.transfer(address(this).balance);
    
}
mapping(address => uint) userBalancesWithdrawable34;
function withdrawUserBalances34() public {
    (bool success,) = msg.sender.call.value(userBalancesWithdrawable34[msg.sender])("");
    if( ! success) {
        revert();
    }
    userBalancesWithdrawable34[msg.sender] = 0;
}
    function releaStaticBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
bool CalledOnce9 = true;
function validateOnce9() public {
        require(CalledOnce9);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        CalledOnce9 = false;
    }
    function releaActiveBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
mapping(address => uint) userBalancesWithdrawable9;
function withdrawUserBalances9(uint256 _weiToWithdraw) public {
        require(userBalancesWithdrawable9[msg.sender] >_weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        userBalancesWithdrawable9[msg.sender] -= _weiToWithdraw;
    }
    function releaTeamAddBonus() onlyOwner public{
        require(msg.sender == owner, "only owner can use this method"); 
        msg.sender.transfer(address(this).balance);
        
    }
bool variable1 = true;
function checking1() public{
        require(variable1);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        variable1 = false;
    }
}