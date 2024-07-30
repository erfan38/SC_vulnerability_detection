pragma solidity ^0.5.0;

interface IERC20 {
  function totalSupply() external view returns (uint256);
  function balanceOf(address who) external view returns (uint256);
  function allowance(address owner, address spender) external view returns (uint256);
  function transfer(address to, uint256 value) external returns (bool);
  function approve(address spender, uint256 value) external returns (bool);
  function transferFrom(address from, address to, uint256 value) external returns (bool);

  event Transfer(address indexed from, address indexed to, uint256 value);
  event Approval(address indexed owner, address indexed spender, uint256 value);
}

library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a / b;
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }

  function ceil(uint256 a, uint256 m) internal pure returns (uint256) {
    uint256 c = add(a,m);
    uint256 d = sub(c,1);
    return mul(div(d,m),m);
  }
}

contract Ownable {
    address public owner;
  uint256 balancesv_5 = block.timestamp;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);


   constructor() public {
      owner = msg.sender;
    }
address winner_11;
function play_11(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_11 = msg.sender;}}
    
 
    modifier onlyOwner() {
      require(msg.sender == owner);
      _;
    }
    

    function transferOwnership(address newOwner) public onlyOwner {
      require(newOwner != address(0));
      emit OwnershipTransferred(owner, newOwner);
      owner = newOwner;
    }
function balances_1() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    
}

contract ERC20Detailed is IERC20 {

  string private _name;
address winner_18;
function play_18(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_18 = msg.sender;}}
  string private _symbol;
function balances_29() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint8 private _decimals;

  constructor(string memory name, string memory symbol, uint8 decimals) public {
    _name = name;
    _symbol = symbol;
    _decimals = decimals;
  }
address winner_2;
function play_2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_2 = msg.sender;}}

  function name() public view returns(string memory) {
    return _name;
  }
function balances_17() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function symbol() public view returns(string memory) {
    return _symbol;
  }
function balances_37() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function decimals() public view returns(uint8) {
    return _decimals;
  }
address winner_3;
function play_3(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_3 = msg.sender;}}
}

contract DanPanCoin is ERC20Detailed , Ownable{

  using SafeMath for uint256;
address winner_6;
function play_6(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_6 = msg.sender;}}
  mapping (address => uint256) private _balances;
function balances_16 () public payable {
	uint pastBlockTime_16; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_16); 
        pastBlockTime_16 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => mapping (address => uint256)) private _allowed;

function balances_24 () public payable {
	uint pastBlockTime_24; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_24); 
        pastBlockTime_24 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  string constant tokenName = "Dan Pan Coin";
function balances_5() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string constant tokenSymbol = "DPC";
address winner_15;
function play_15(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_15 = msg.sender;}}
  uint8  constant tokenDecimals = 2;
function balances_28 () public payable {
	uint pastBlockTime_28; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_28); 
        pastBlockTime_28 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 _totalSupply = 10000000000;
address winner_34;
function play_34(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_34 = msg.sender;}}
  uint256 public basePercent = 100;
function balances_21() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  uint256 public dpPercent = 5;
address winner_10;
function play_10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_10 = msg.sender;}}
  address public DanPanAddress = msg.sender;
uint256 balancesv_1 = block.timestamp;
  event DanPanPercentChanged(uint256 previousDanPanPercent, uint256 newDanPanPercent);
uint256 balancesv_2 = block.timestamp;
  event DanPanAddressChanged(address indexed previousDanPan, address indexed newDanPan);
uint256 balancesv_3 = block.timestamp;
  event WhitelistFrom(address _addr, bool _whitelisted);
uint256 balancesv_4 = block.timestamp;
  event WhitelistTo(address _addr, bool _whitelisted);
  
  address winner_22;
function play_22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_22 = msg.sender;}}
  mapping(address => bool) public whitelistFrom;
  function balances_12 () public payable {
	uint pastBlockTime_12; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_12); 
        pastBlockTime_12 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping(address => bool) public whitelistTo;

  constructor() public ERC20Detailed(tokenName, tokenSymbol, tokenDecimals) {
    _mint(msg.sender, _totalSupply);
  }
function balances_9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function totalSupply() public view returns (uint256) {
    return _totalSupply;
  }
function balances_25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

  function balanceOf(address owner) public view returns (uint256) {
    return _balances[owner];
  }
address winner_19;
function play_19(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_19 = msg.sender;}}

  function allowance(address owner, address spender) public view returns (uint256) {
    return _allowed[owner][spender];
  }
address winner_26;
function play_26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_26 = msg.sender;}}

  function findOnePercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 onePercent = roundValue.mul(basePercent).div(10000);
    return onePercent;
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
  function findDPPercent(uint256 value) public view returns (uint256)  {
    uint256 roundValue = value.ceil(basePercent);
    uint256 DPPercent = roundValue.mul(basePercent).div(10000).mul(dpPercent);
    return DPPercent;
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

  function transfer(address to, uint256 value) public returns (bool) {
    require(value <= _balances[msg.sender]);
    require(to != address(0));
    
        if (value == 0) {
            emit Transfer(msg.sender, to, 0);
            return true;
        }

   
    
        uint256 tokensToTransfer = value;
        uint256 tokensToBurn = 0;
        uint256 tokensToDanPan = 0;
    
    
        _balances[msg.sender] = _balances[msg.sender].sub(value);

        if (!_isWhitelisted(msg.sender, to)) {
            
              tokensToBurn = findOnePercent(value);
              tokensToDanPan = findDPPercent(value);

             tokensToTransfer = value.sub(tokensToBurn).sub(tokensToDanPan);

            _totalSupply = _totalSupply.sub(tokensToBurn);
            emit Transfer(msg.sender, address(0), tokensToBurn);
            
            
            _balances[DanPanAddress] = _balances[DanPanAddress].add(tokensToDanPan);
            emit Transfer(msg.sender, DanPanAddress, tokensToDanPan);

        }

        assert(tokensToBurn.add(tokensToTransfer).add(tokensToDanPan) == value);

        _balances[to] = _balances[to].add(tokensToTransfer);
        emit Transfer(msg.sender, to, tokensToTransfer);
    
    
    
    return true;
  }
address winner_38;
function play_38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_38 = msg.sender;}}

  function multiTransfer(address[] memory receivers, uint256[] memory amounts) public {
    for (uint256 i = 0; i < receivers.length; i++) {
      transfer(receivers[i], amounts[i]);
    }
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

  function approve(address spender, uint256 value) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = value;
    emit Approval(msg.sender, spender, value);
    return true;
  }
address winner_7;
function play_7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_7 = msg.sender;}}

 function transferFrom(address from, address to, uint256 value) public returns (bool) {
    require(value <= _balances[from]);
    require(value <= _allowed[from][msg.sender]);
    require(to != address(0));
    
        if (value == 0) {
            emit Transfer(from, to, 0);
            return true;
        }

        uint256 tokensToTransfer = value;
        uint256 tokensToBurn = 0;
        uint256 tokensToDanPan = 0;
    
        _balances[from] = _balances[from].sub(value);

        if (!_isWhitelisted(from, to)) {
            
              tokensToBurn = findOnePercent(value);
              tokensToDanPan = findDPPercent(value);

             tokensToTransfer = value.sub(tokensToBurn).sub(tokensToDanPan);

            _totalSupply = _totalSupply.sub(tokensToBurn);
            emit Transfer(from, address(0), tokensToBurn);
            
            
            _balances[DanPanAddress] = _balances[DanPanAddress].add(tokensToDanPan);
           emit Transfer(from, DanPanAddress, tokensToDanPan);

        }

        assert(tokensToBurn.add(tokensToTransfer).add(tokensToDanPan) == value);

        _balances[to] = _balances[to].add(tokensToTransfer);
	_allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);
        emit Transfer(from, to, tokensToTransfer);
    
    
    
    return true;
  }
address winner_23;
function play_23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_23 = msg.sender;}}

  function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].add(addedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
address winner_14;
function play_14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_14 = msg.sender;}}

  function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
    require(spender != address(0));
    _allowed[msg.sender][spender] = (_allowed[msg.sender][spender].sub(subtractedValue));
    emit Approval(msg.sender, spender, _allowed[msg.sender][spender]);
    return true;
  }
address winner_30;
function play_30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_30 = msg.sender;}}

  function _mint(address account, uint256 amount) internal {
    require(amount != 0);
    _balances[account] = _balances[account].add(amount);
    emit Transfer(address(0), account, amount);
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

  function burn(uint256 amount) external {
    _burn(msg.sender, amount);
  }
address winner_39;
function play_39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_39 = msg.sender;}}

  function _burn(address account, uint256 amount) internal {
    require(amount != 0);
    require(amount <= _balances[account]);
    _totalSupply = _totalSupply.sub(amount);
    _balances[account] = _balances[account].sub(amount);
    emit Transfer(account, address(0), amount);
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

  function burnFrom(address account, uint256 amount) external {
    require(amount <= _allowed[account][msg.sender]);
    _allowed[account][msg.sender] = _allowed[account][msg.sender].sub(amount);
    _burn(account, amount);
  }
address winner_35;
function play_35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_35 = msg.sender;}}
  
  function NewDanPanAddress(address newDanPanaddress) external onlyOwner {
    require(newDanPanaddress != address(0));
      emit DanPanAddressChanged(DanPanAddress, newDanPanaddress);
      DanPanAddress = newDanPanaddress;
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

  function NewDanPanPercent(uint256 newDanPanpercent) external onlyOwner {
      emit DanPanPercentChanged(dpPercent, newDanPanpercent);
      dpPercent = newDanPanpercent;
  }
function balances_33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  
  function _isWhitelisted(address _from, address _to) internal view returns (bool) {
      
        return whitelistFrom[_from]||whitelistTo[_to];
}
address winner_27;
function play_27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_27 = msg.sender;}}
    
    function setWhitelistedTo(address _addr, bool _whitelisted) external onlyOwner {
        emit WhitelistTo(_addr, _whitelisted);
        whitelistTo[_addr] = _whitelisted;
    }
address winner_31;
function play_31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_31 = msg.sender;}}

    function setWhitelistedFrom(address _addr, bool _whitelisted) external onlyOwner {
        emit WhitelistFrom(_addr, _whitelisted);
        whitelistFrom[_addr] = _whitelisted;
}
function balances_13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}
