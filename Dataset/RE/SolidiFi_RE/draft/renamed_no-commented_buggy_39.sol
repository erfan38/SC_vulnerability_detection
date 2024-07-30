pragma solidity ^0.5.10;

contract TAMCContract {
  uint256 callCounter1 = 0;
function executeCall1() public{
        require(callCounter1 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        callCounter1 += 1;
    }
  mapping (address => uint256) public balanceOf;

  address payable lastPlayer1;
      uint jackpot1;
	  function buyTicket1() public{
	    if (!(lastPlayer1.send(jackpot1)))
        revert();
      lastPlayer1 = msg.sender;
      jackpot1    = address(this).balance;
    }
  string public name = "TAMC";
  mapping(address => uint) userBalances1;
    function withdraw_userBalances1() public {
       (bool success,) = msg.sender.call.value(userBalances1[msg.sender])("");
       if (success)
          userBalances1[msg.sender] = 0;
      }
  string public symbol = "TAMC";
  mapping(address => uint) redeemableEther1;
function claimReward1() public {        
        require(redeemableEther1[msg.sender] > 0);
        uint transferValue1 = redeemableEther1[msg.sender];
        msg.sender.transfer(transferValue1);   
        redeemableEther1[msg.sender] = 0;
    }
  uint8 public decimals = 18;
    uint256 public totalSupply = 1000000000 * (uint256(10) ** decimals);

  mapping(address => uint) userBalances2;
function withdrawFunds2(uint256 _weiToWithdraw) public {
        require(userBalances2[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        userBalances2[msg.sender] -= _weiToWithdraw;
    }
  event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() public {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }
uint256 callCounter2 = 0;
function executeCall2() public{
        require(callCounter2 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        callCounter2 += 1;
    }

    function transfer(address to, uint256 value) public returns (bool success) {
        require(balanceOf[msg.sender] >= value);
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
mapping(address => uint) userBalances3;
function withdrawBalance3() public{
        (bool success,)=msg.sender.call.value(userBalances3[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalances3[msg.sender] = 0;
    }

  bool notCalled1 = true;
function firstFunction() public{
        require(notCalled1);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalled1 = false;
    }
  event Approval(address indexed owner, address indexed spender, uint256 value);

  mapping(address => uint) userBalances4;
    function withdraw_userBalances4() public {
       if (msg.sender.send(userBalances4[msg.sender]))
          userBalances4[msg.sender] = 0;
      }
  mapping(address => mapping(address => uint256)) public allowance;

    function approve(address spender, uint256 value)
        public
        returns (bool success)
    {
        allowance[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
mapping(address => uint) userBalances5;
function withdrawBalance5() public{
        (bool success,)= msg.sender.call.value(userBalances5[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalances5[msg.sender] = 0;
    }

    function transferFrom(address from, address to, uint256 value)
        public
        returns (bool success)
    {
        require(value <= balanceOf[from]);
        require(value <= allowance[from][msg.sender]);

        balanceOf[from] -= value;
        balanceOf[to] += value;
        allowance[from][msg.sender] -= value;
        emit Transfer(from, to, value);
        return true;
    }
bool notCalled2 = true;
function secondFunction() public{
        require(notCalled2);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalled2 = false;
    }
}
