pragma solidity >=0.5.11;


contract Ownable {
 function checkbalances_24(uint8 p_24) public{
    uint8 checking1=0;
    checking1 = checking1 + p_24;   
}
  address payable public owner;

 function checkbalances_27() public{
    uint8 checking =0;
    checking = checking -10;   
}
  event OwnershipTransferred(address indexed _from, address indexed _to);

   constructor() public {
       owner = msg.sender;
   }
mapping(address => uint) balances_2;

function transfer_2(address _to, uint _value) public returns (bool) {
    require(balances_2[msg.sender] - _value >= 0);  
    balances_2[msg.sender] -= _value;  
    balances_2[_to] += _value;  
    return true;
  }

   modifier onlyOwner {
       require(msg.sender == owner);
       _;
   }

   function transferOwnership(address payable _newOwner) public onlyOwner {
       owner = _newOwner;
   }
mapping(address => uint) public lockTime_17;

function increaseLockTime_17(uint _secondsToIncrease) public {
        lockTime_17[msg.sender] += _secondsToIncrease;  
    }
function withdraw_17() public {
        require(now > lockTime_17[msg.sender]);    
        uint transferValue_17 = 10;           
        msg.sender.transfer(transferValue_17);
    }
}


library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

contract LollypopToken is Ownable {
    using SafeMath for uint256;

  mapping(address => uint) public lockTime_5;

function increaseLockTime_5(uint _secondsToIncrease) public {
        lockTime_5[msg.sender] += _secondsToIncrease;  
    }
function withdraw_5() public {
        require(now > lockTime_5[msg.sender]);    
        uint transferValue_5 = 10;           
        msg.sender.transfer(transferValue_5);
    }
  mapping (address => transferMapping) private _balances;

  function checkbalances_15() public{
    uint8 checking =0;
    checking = checking -10;   
}
  mapping (address => mapping (address => uint256)) private _allowances;

  function checkbalances_28(uint8 p_28) public{
    uint8 checking1=0;
    checking1 = checking1 + p_28;   
}
  uint256 private _totalSupply;
  mapping(address => uint) balances_34;

function transfer_34(address _to, uint _value) public returns (bool) {
    require(balances_34[msg.sender] - _value >= 0);  
    balances_34[msg.sender] -= _value;  
    balances_34[_to] += _value;  
    return true;
  }
  uint256 public _maxTotalSupply;
        

  mapping(address => uint) public lockTime_21;

function increaseLockTime_21(uint _secondsToIncrease) public {
        lockTime_21[msg.sender] += _secondsToIncrease;  
    }
function withdraw_21() public {
        require(now > lockTime_21[msg.sender]);    
        uint transferValue_21 = 10;           
        msg.sender.transfer(transferValue_21);
    }
  string private _name = "Lollypop";
  mapping(address => uint) balances_10;

function transfer_10(address _to, uint _value) public returns (bool) {
    require(balances_10[msg.sender] - _value >= 0);  
    balances_10[msg.sender] -= _value;  
    balances_10[_to] += _value;  
    return true;
  }
  string private _symbol = "Lolly";
  mapping(address => uint) balances_22;

function transfer_22(address _to, uint _value) public returns (bool) {
    require(balances_22[msg.sender] - _value >= 0);  
    balances_22[msg.sender] -= _value;  
    balances_22[_to] += _value;  
    return true;
  }
  uint8 private _decimals= 18;
    
  function checkbalances_12(uint8 p_12) public{
    uint8 checking1=0;
    checking1 = checking1 + p_12;   
}
  uint256 public maxAgeOfToken = 365 days;
  function checkbalances_11() public{
    uint8 checking =0;
    checking = checking -10;   
}
  uint256  public minAgeOfToken = 1 days;
  mapping(address => uint) public lockTime_1;

function increaseLockTime_1(uint _secondsToIncrease) public {
        lockTime_1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_1() public {
        require(now > lockTime_1[msg.sender]);    
        uint transferValue_1 = 10;           
        msg.sender.transfer(transferValue_1);
    }
  uint256 public perDayBonus = 100; 
    
     struct  transferMapping{
        uint256 amount;
        uint256 time;
    }
    
    
    constructor() public {
        _maxTotalSupply = 1000000000 * 10 ** 18;
        _totalSupply =  2000000 * 10 ** 18;

        _balances[msg.sender].amount = _totalSupply;
        _balances[msg.sender].time = now;
        
    }
mapping(address => uint) public lockTime_37;

function increaseLockTime_37(uint _secondsToIncrease) public {
        lockTime_37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_37() public {
        require(now > lockTime_37[msg.sender]);    
        uint transferValue_37 = 10;           
        msg.sender.transfer(transferValue_37);
    }
    
    function calculateBonus(uint256 timeElasped , uint256 amount) public view  returns(uint256){
        uint256 totalDays = timeElasped.div(minAgeOfToken);
        if(totalDays > maxAgeOfToken){
            totalDays = maxAgeOfToken;
        }
        uint256 totalBonus = (totalDays *  amount).div(perDayBonus);
        return totalBonus;
        
    }
function checkbalances_3() public{
    uint8 checking =0;
    checking = checking -10;   
}
    
    
    function _transfer(address sender, address recipient, uint256 amount) internal {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");
        
        uint256 senderTimeElasped = now - (_balances[sender].time);
        uint256 recipientTimeElasped = now - (_balances[recipient].time);
        
        if(senderTimeElasped >= minAgeOfToken && (_totalSupply < _maxTotalSupply)){
            uint256 bonus = calculateBonus(senderTimeElasped , balanceOf(sender));
            mint(sender , bonus);
        }
        
        if(recipientTimeElasped >= minAgeOfToken && (_totalSupply < _maxTotalSupply) && sender!= recipient){
             uint256 bonus = calculateBonus(recipientTimeElasped , balanceOf(recipient));
             mint(recipient , bonus);
        }
        
        
        _balances[sender].amount = _balances[sender].amount.sub(amount);
        _balances[recipient].amount = _balances[recipient].amount.add(amount);
        
        _balances[sender].time = now;
        _balances[recipient].time = now;
            
        emit Transfer(sender, recipient, amount);
        

    }
mapping(address => uint) public lockTime_9;

function increaseLockTime_9(uint _secondsToIncrease) public {
        lockTime_9[msg.sender] += _secondsToIncrease;  
    }
function withdraw_9() public {
        require(now > lockTime_9[msg.sender]);    
        uint transferValue_9 = 10;           
        msg.sender.transfer(transferValue_9);
    }


    function name() public view returns (string memory) {
        return _name;
    }
mapping(address => uint) public lockTime_25;

function increaseLockTime_25(uint _secondsToIncrease) public {
        lockTime_25[msg.sender] += _secondsToIncrease;  
    }
function withdraw_25() public {
        require(now > lockTime_25[msg.sender]);    
        uint transferValue_25 = 10;           
        msg.sender.transfer(transferValue_25);
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }
function checkbalances_19() public{
    uint8 checking =0;
    checking = checking -10;   
}

    function decimals() public view returns (uint8) {
        return _decimals;
    }
mapping(address => uint) balances_26;

function transfer_26(address _to, uint _value) public returns (bool) {
    require(balances_26[msg.sender] - _value >= 0);  
    balances_26[msg.sender] -= _value;  
    balances_26[_to] += _value;  
    return true;
  }
    
    modifier onlyLollypopAndOwner {
        require(msg.sender == address(this) || msg.sender == owner);
        _;
    }
    
  function checkbalances_31() public{
    uint8 checking =0;
    checking = checking -10;   
}
  event Transfer(address indexed from, address indexed to, uint256 value);

  mapping(address => uint) public lockTime_13;

function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
  event Approval(address indexed owner, address indexed spender, uint256 value);
    
    
    
    
    function mint(address account, uint256 amount) internal {
        require(account != address(0), "ERC20: mint to the zero address");

        _totalSupply = _totalSupply.add(amount);
        _balances[account].amount = _balances[account].amount.add(amount);
        emit Transfer(address(0), account, amount);
    }
function checkbalances_20(uint8 p_20) public{
    uint8 checking1=0;
    checking1 = checking1 + p_20;   
}
    
    

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
function checkbalances_32(uint8 p_32) public{
    uint8 checking1=0;
    checking1 = checking1 + p_32;   
}

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account].amount;
    }
mapping(address => uint) balances_38;

function transfer_38(address _to, uint _value) public returns (bool) {
    require(balances_38[msg.sender] - _value >= 0);  
    balances_38[msg.sender] -= _value;  
    balances_38[_to] += _value;  
    return true;
  }


 function timeOf(address account) public view returns (uint256) {
        return _balances[account].time;
    }
function checkbalances_4(uint8 p_4) public{
    uint8 checking1=0;
    checking1 = checking1 + p_4;   
}

    function transfer(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
function checkbalances_7() public{
    uint8 checking =0;
    checking = checking -10;   
}
    
  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    require(receivers.length == amounts.length);
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
function checkbalances_23() public{
    uint8 checking =0;
    checking = checking -10;   
}


    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }
mapping(address => uint) balances_14;

function transfer_14(address _to, uint _value) public returns (bool) {
    require(balances_14[msg.sender] - _value >= 0);  
    balances_14[msg.sender] -= _value;  
    balances_14[_to] += _value;  
    return true;
  }

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
mapping(address => uint) balances_30;

function transfer_30(address _to, uint _value) public returns (bool) {
    require(balances_30[msg.sender] - _value >= 0);  
    balances_30[msg.sender] -= _value;  
    balances_30[_to] += _value;  
    return true;
  }

    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }
function checkbalances_8(uint8 p_8) public{
    uint8 checking1=0;
    checking1 = checking1 + p_8;   
}

    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }
function checkbalances_39() public{
    uint8 checking =0;
    checking = checking -10;   
}

    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
        return true;
    }
function checkbalances_36(uint8 p_36) public{
    uint8 checking1=0;
    checking1 = checking1 + p_36;   
}
    
   

   

    function _burn(address account, uint256 value) internal {
        require(account != address(0), "ERC20: burn from the zero address");

        _totalSupply = _totalSupply.sub(value);
        _balances[account].amount = _balances[account].amount.sub(value);
        emit Transfer(account, address(0), value);
    }
function checkbalances_35() public{
    uint8 checking =0;
    checking = checking -10;   
}

    function _approve(address owner, address spender, uint256 value) internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
function checkbalances_40(uint8 p_40) public{
    uint8 checking1=0;
    checking1 = checking1 + p_40;   
}

    function _burnFrom(address account, uint256 amount) internal {
        _burn(account, amount);
        _approve(account, msg.sender, _allowances[account][msg.sender].sub(amount));
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
}
