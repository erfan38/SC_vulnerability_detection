pragma solidity >=0.5.11;


contract Ownable {
 function balances_28 () public payable {
	uint pastBlockTime_28; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_28); 
        pastBlockTime_28 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  address payable public owner;

 uint256 balancesv_2 = block.timestamp;
  event OwnershipTransferred(address indexed _from, address indexed _to);

   constructor() public {
       owner = msg.sender;
   }
address winner_3;
function play_3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_3 = msg.sender;}}

   modifier onlyOwner {
       require(msg.sender == owner);
       _;
   }
uint256 balancesv_5 = block.timestamp;

   function transferOwnership(address payable _newOwner) public onlyOwner {
       owner = _newOwner;
   }
function balances_9() view public returns (bool) {
    return block.timestamp >= 1546300800;
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

  address winner_34;
function play_34(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_34 = msg.sender;}}
  mapping (address => transferMapping) private _balances;

  function balances_21() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (address => mapping (address => uint256)) private _allowances;

  address winner_10;
function play_10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_10 = msg.sender;}}
  uint256 private _totalSupply;
  address winner_22;
function play_22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_22 = msg.sender;}}
  uint256 public _maxTotalSupply;
        

  function balances_12 () public payable {
	uint pastBlockTime_12; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_12); 
        pastBlockTime_12 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string private _name = "Lollypop";
  address winner_11;
function play_11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_11 = msg.sender;}}
  string private _symbol = "Lolly";
  function balances_1() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint8 private _decimals= 18;
    
  address winner_2;
function play_2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_2 = msg.sender;}}
  uint256 public maxAgeOfToken = 365 days;
  function balances_17() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint256  public minAgeOfToken = 1 days;
  function balances_37() view public returns (bool) {
    return block.timestamp >= 1546300800;
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
function balances_25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function calculateBonus(uint256 timeElasped , uint256 amount) public view  returns(uint256){
        uint256 totalDays = timeElasped.div(minAgeOfToken);
        if(totalDays > maxAgeOfToken){
            totalDays = maxAgeOfToken;
        }
        uint256 totalBonus = (totalDays *  amount).div(perDayBonus);
        return totalBonus;
        
    }
address winner_19;
function play_19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_19 = msg.sender;}}
    
    
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
address winner_26;
function play_26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_26 = msg.sender;}}


    function name() public view returns (string memory) {
        return _name;
    }
function balances_20 () public payable {
	uint pastBlockTime_20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_20); 
        pastBlockTime_20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }
function balances_32 () public payable {
	uint pastBlockTime_32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_32); 
        pastBlockTime_32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }
address winner_38;
function play_38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_38 = msg.sender;}}
    
    modifier onlyLollypopAndOwner {
        require(msg.sender == address(this) || msg.sender == owner);
        _;
    }
uint256 balancesv_1 = block.timestamp;
    
  uint256 balancesv_3 = block.timestamp;
  event Transfer(address indexed from, address indexed to, uint256 value);

  uint256 balancesv_4 = block.timestamp;
  event Approval(address indexed owner, address indexed spender, uint256 value);
    
    
    
    
    function mint(address account, uint256 amount) internal {
        require(account != address(0), "ERC20: mint to the zero address");

        _totalSupply = _totalSupply.add(amount);
        _balances[account].amount = _balances[account].amount.add(amount);
        emit Transfer(address(0), account, amount);
    }
function balances_4 () public payable {
	uint pastBlockTime_4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_4); 
        pastBlockTime_4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
address winner_7;
function play_7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_7 = msg.sender;}}

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account].amount;
    }
address winner_23;
function play_23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_23 = msg.sender;}}


 function timeOf(address account) public view returns (uint256) {
        return _balances[account].time;
    }
address winner_14;
function play_14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_14 = msg.sender;}}

    function transfer(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
address winner_30;
function play_30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_30 = msg.sender;}}
    
  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    require(receivers.length == amounts.length);
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
  }
function balances_8 () public payable {
	uint pastBlockTime_8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_8); 
        pastBlockTime_8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }
address winner_39;
function play_39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_39 = msg.sender;}}

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
function balances_36 () public payable {
	uint pastBlockTime_36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_36); 
        pastBlockTime_36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }
address winner_35;
function play_35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_35 = msg.sender;}}

    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }
function balances_40 () public payable {
	uint pastBlockTime_40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_40); 
        pastBlockTime_40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
        return true;
    }
function balances_33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
   

   

    function _burn(address account, uint256 value) internal {
        require(account != address(0), "ERC20: burn from the zero address");

        _totalSupply = _totalSupply.sub(value);
        _balances[account].amount = _balances[account].amount.sub(value);
        emit Transfer(account, address(0), value);
    }
address winner_27;
function play_27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_27 = msg.sender;}}

    function _approve(address owner, address spender, uint256 value) internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
address winner_31;
function play_31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_31 = msg.sender;}}

    function _burnFrom(address account, uint256 amount) internal {
        _burn(account, amount);
        _approve(account, msg.sender, _allowances[account][msg.sender].sub(amount));
    }
function balances_13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}
