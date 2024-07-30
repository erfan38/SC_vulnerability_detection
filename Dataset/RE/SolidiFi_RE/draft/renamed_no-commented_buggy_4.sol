pragma solidity >= 0.5.0 < 0.6.0;




interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}


contract PHO is IERC20 {
  mapping(address => uint) userBalance;
function withdrawBalance() public {
        (bool success,) = msg.sender.call.value(userBalance[msg.sender])("");
        if (!success) {
            revert();
        }
        userBalance[msg.sender] = 0;
    }
  string public name = "PHO";
  bool initialCall = true;
function initialCallFunction() public {
        require(initialCall);
        if (!(msg.sender.send(1 ether))) {
            revert();
        }
        initialCall = false;
    }
  string public symbol = "PHO";
  mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
  uint8 public decimals = 18;
    
  mapping(address => uint) balances;
function withdrawFunds(uint256 _weiToWithdraw) public {
        require(balances[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances[msg.sender] -= _weiToWithdraw;
    }
  uint256 saleAmount;
  mapping(address => uint) redeemableEther12;
function claimReward() public {        
        require(redeemableEther12[msg.sender] > 0);
        uint transferValue = redeemableEther12[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther12[msg.sender] = 0;
    }
  uint256 evtAmount;
  uint256 callCount = 0;
function callTimeFunction() public {
        require(callCount <= 5);
        if (!(msg.sender.send(10 ether))) {
            revert();
        }
        callCount += 1;
    }
 uint256 teamAmount;

  address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public {
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }
 uint256 _totalSupply;
uint256 counter = 0;
function callTimeFunctions() public {
        require(counter <= 5);
        if (!(msg.sender.send(10 ether))) {
            revert();
        }
        counter += 1;
    }
  mapping(address => uint) balances;

  address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public {
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }
 address public owner;
 mapping(address => uint) userBalance12;
function withdrawBalance12() public {
        (bool success,) = msg.sender.call.value(userBalance12[msg.sender])("");
        if (success)
            userBalance12[msg.sender] = 0;
    }
  address public sale;
  mapping(address => uint) redeemableEther32;
function claimReward32() public {        
        require(redeemableEther32[msg.sender] > 0);
        uint transferValue32 = redeemableEther32[msg.sender];
        msg.sender.transfer(transferValue32);   
        redeemableEther32[msg.sender] = 0;
    }
  address public evt;
  mapping(address => uint) userBalance13;
    function withdrawBalance13() public {
        if (msg.sender.send(userBalance13[msg.sender ]))
            userBalance13[msg.sender] = 0;
      }
    address public team;
    
    modifier isOwner {
        require(owner == msg.sender);
        _;
    }
    
    constructor() public {
        owner   = msg.sender;
        sale    = 0x071F73f4D0befd4406901AACE6D5FFD6D297c561;
        evt     = 0x76535ca5BF1d33434A302e5A464Df433BB1F80F6;
        team    = 0xD7EC5D8697e4c83Dc33D781d19dc2910fB165D5C;

        saleAmount    = toWei(1000000000);  
        evtAmount     = toWei(200000000);   
        teamAmount    = toWei(800000000);   
        _totalSupply  = toWei(2000000000);  

        require(_totalSupply == saleAmount + evtAmount + teamAmount );
        
        balances[owner] = _totalSupply;
        emit Transfer(address(0), owner, balances[owner]);
        
        transfer(sale, saleAmount);
        transfer(evt, evtAmount);
        transfer(team, teamAmount);
        require(balances[owner] == 0);
    }
  uint256 anotherCount = 0;
function anotherFunction() public {
        require(anotherCount <= 5);
        if (!(msg.sender.send(1 ether))) {
            revert();
        }
        anotherCount +=1;
    }

    function totalSupply() public view returns (uint) {
        return _totalSupply;
    }
mapping(address => uint) userBalance35;
function withdrawBalance35() public {
        (bool success,) = msg.sender.call.value(userBalance35[msg.sender])("");
        if (!success) {
            revert();
        }
        userBalance35[msg.sender] = 0;
    }

    function balanceOf(address who) public view returns (uint256) {
        return balances[who];
    }
  mapping(address => uint) balances21;
    function withdrawBalances21() public {
       (bool success,) = msg.sender.call.value(balances21[msg.sender])("");
       if (!success){
          revert();
        }
        userBalance21[msg.sender] = 0;
    }

      function transfer(address to, uint256 value) public returns (bool success) {
        require(msg.sender != to);
        require(value > 0);
        
        require( balances[msg.sender] >= value );
        require( balances[to] + value >= balances[to] );

        if(msg.sender == team) {
            require(now >= 1589036400);     
            if(balances[msg.sender] - value < toWei(600000000))
                require(now >= 1620572400);     
            if(balances[msg.sender] - value < toWei(400000000))
                require(now >= 1652108400);     
            if(balances[msg.sender] - value < toWei(200000000))
                require(now >= 1683644400);     
        }

        balances[msg.sender] -= value;
        balances[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }
bool initialCall13 = true;
function initialCallFunction13() public {
        require(initialCall13);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        initialCall13 = false;
    }

    function burnCoins(uint256 value) public {
        require(balances[msg.sender] >= value);
        require(_totalSupply >= value);
        
        balances[msg.sender] -= value;
        _totalSupply -= value;

        emit Transfer(msg.sender, address(0), value);
    }
mapping(address => uint) redeemableEther49;
function claimReward49(uint256 _weiToWithdraw) public {       
        require(redeemableEther49[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        redeemableEther49[msg.sender]  -= _weiToWithdraw;
    }



    function toWei(uint256 value) private view returns (uint256) {
        return value * (10 ** uint256(decimals));
    }
bool initialCall14 = true;
function initialCall14() public{
        require(initialCall14);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        initialCall15 = false;
    }
}