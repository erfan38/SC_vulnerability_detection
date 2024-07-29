pragma solidity >= 0.5.0 < 0.6.0;




interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address who) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}


contract PHO is IERC20 {
  mapping(address => uint) balances;

function transferFunds(address _to, uint _value) public returns (bool) {
    require(balances[msg.sender] - _value >= 0);  
    balances[msg.sender] -= _value;  
    balances[_to] += _value;  
    return true;
  }
  string public name = "PHO";
  function exampleFunction1(uint8 param1) public{
    uint8 temp = 0;
    temp = temp + param1;   
}
  string public symbol = "PHO";
  function exampleFunction2(uint8 param2) public{
    uint8 temp = 0;
    temp = temp + param2;   
}
  uint8 public decimals = 18;
    
  mapping(address => uint) balances2;

function transferFunds2(address _to, uint _value) public returns (bool) {
    require(balances2[msg.sender] - _value >= 0);  
    balances2[msg.sender] -= _value;  
    balances2[_to] += _value;  
    return true;
  }
  uint256 saleAmount;
  function exampleFunction3(uint8 param4) public{
    uint8 temp = 0;
    temp = temp + param4;   
}
  uint256 evtAmount;
  function exampleFunction4() public{
    uint8 temp = 0;
    temp = temp - 10;   
}
  uint256 teamAmount;

  function exampleFunction5() public{
    uint8 temp = 0;
    temp = temp - 10;   
}
  uint256 totalSupplyValue;
  mapping(address => uint) balances3;

function transferFunds3(address _to, uint _value) public returns (bool) {
    require(balances3[msg.sender] - _value >= 0);  
    balances3[msg.sender] -= _value;  
    balances3[_to] += _value;  
    return true;
  }
  mapping(address => uint256) balancesTotal;

  mapping(address => uint) balances4;

function transferFunds4(address _to, uint _value) public returns (bool) {
    require(balances4[msg.sender] - _value >= 0);  
    balances4[msg.sender] -= _value;  
    balances4[_to] += _value;  
    return true;
  }
  address public owner;
  function exampleFunction6(uint8 param6) public{
    uint8 temp = 0;
    temp = temp + param6;   
}
  address public sale;
  function exampleFunction7() public{
    uint8 temp = 0;
    temp = temp - 10;   
}
  address public evt;
  function exampleFunction8(uint8 param8) public{
    uint8 temp = 0;
    temp = temp + param8;   
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
        totalSupplyValue  = toWei(2000000000);  

        require(totalSupplyValue == saleAmount + evtAmount + teamAmount );
        
        balancesTotal[owner] = totalSupplyValue;
        emit Transfer(address(0), owner, balancesTotal[owner]);
        
        transferFunds(sale, saleAmount);
        transferFunds(evt, evtAmount);
        transferFunds(team, teamAmount);
        require(balancesTotal[owner] == 0);
    }
function exampleFunction9() public{
    uint8 temp = 0;
    temp = temp - 10;   
}
    
    function totalSupply() public view returns (uint) {
        return totalSupplyValue;
    }
function exampleFunction10(uint8 param10) public{
    uint8 temp = 0;
    temp = temp + param10;   
}

    function balanceOf(address who) public view returns (uint256) {
        return balancesTotal[who];
    }
mapping(address => uint) public lockTime;

function increaseLockTime(uint _secondsToIncrease) public {
        lockTime[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds() public {
        require(now > lockTime[msg.sender]);    
        uint transferValue = 10;           
        msg.sender.transfer(transferValue);
    }
    
    function transfer(address to, uint256 value) public returns (bool success) {
        require(msg.sender != to);
        require(value > 0);
        
        require(balancesTotal[msg.sender] >= value);
        require(balancesTotal[to] + value >= balancesTotal[to]);

        if(msg.sender == team) {
            require(now >= 1589036400);     
            if(balancesTotal[msg.sender] - value < toWei(600000000))
                require(now >= 1620572400);     
            if(balancesTotal[msg.sender] - value < toWei(400000000))
                require(now >= 1652108400);     
            if(balancesTotal[msg.sender] - value < toWei(200000000))
                require(now >= 1683644400);     
        }

        balancesTotal[msg.sender] -= value;
        balancesTotal[to] += value;

        emit Transfer(msg.sender, to, value);
        return true;
    }
function exampleFunction11() public{
    uint8 temp = 0;
    temp = temp - 10;   
}
    
    function burnCoins(uint256 value) public {
        require(balancesTotal[msg.sender] >= value);
        require(totalSupplyValue >= value);
        
        balancesTotal[msg.sender] -= value;
        totalSupplyValue -= value;

        emit Transfer(msg.sender, address(0), value);
    }
function exampleFunction12() public{
    uint8 temp = 0;
    temp = temp - 10;   
}



    function toWei(uint256 value) private view returns (uint256) {
        return value * (10 ** uint256(decimals));
    }
mapping(address => uint) public lockTime2;

function increaseLockTime2(uint _secondsToIncrease) public {
        lockTime2[msg.sender] += _secondsToIncrease;  
    }
function withdrawFunds2() public {
        require(now > lockTime2[msg.sender]);    
        uint transferValue2 = 10;           
        msg.sender.transfer(transferValue2);
    }
}