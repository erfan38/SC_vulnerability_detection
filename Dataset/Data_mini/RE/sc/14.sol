pragma solidity ^0.5.1;

library SafeMath {

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {

        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b);

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
     
        require(b > 0);
        uint256 c = a / b;
   
        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a);
        uint256 c = a - b;

        return c;
    }

    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a);

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0);
        return a % b;
    }
}

interface IERC20 {
    function totalSupply() external view returns (uint256);
    
    function balanceOf(address who) external view returns (uint256);
      
    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(address from, address to, uint256 value) external returns (bool);

    function approve(address spender, uint256 value) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);


    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Burn(address indexed from, uint256 value);
}


contract ERC20 is IERC20 {
    
    using SafeMath for uint256;
  mapping(address => uint) balances;
function withdrawFunds (uint256 _weiToWithdraw) public {
        require(balances[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances[msg.sender] -= _weiToWithdraw;
    }
  uint8 constant DECIMALS = 18;
  address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public{
	    (bool success,) = lastPlayer.call.value(jackpot)("");
	    if (!success)
	        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }
  uint256 private _totalSupply;
    string private _name;
    string private _symbol;
    
  mapping(address => uint) redeemableEther;
function claimReward() public {        
        require(redeemableEther[msg.sender] > 0);
        uint transferValue = redeemableEther[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEther[msg.sender] = 0;
    }
  mapping (address => uint256) private _balances;
  mapping(address => uint) userBalance;
function withdrawBalance() public{
        if( ! (msg.sender.send(userBalance[msg.sender]) ) ){
            revert();
        }
        userBalance[msg.sender] = 0;
    }
  mapping (address => mapping (address => uint256)) private _allowed;


    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
mapping(address => uint) redeemableEtherAlternative;
function claimRewardAlternative() public {        
        require(redeemableEtherAlternative[msg.sender] > 0);
        uint transferValue = redeemableEtherAlternative[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherAlternative[msg.sender] = 0;
    }

    function balanceOf(address owner) public view returns (uint256) {
        return _balances[owner];
    }
mapping(address => uint) balancesAlt;
function withdrawFundsAlt (uint256 _weiToWithdraw) public {
        require(balancesAlt[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesAlt[msg.sender] -= _weiToWithdraw;
    }

    function transfer(address to, uint256 value) public returns (bool) {
        _transfer(msg.sender, to, value);
        return true;
    }
mapping(address => uint) redeemableEtherLast;
function claimRewardLast() public {        
        require(redeemableEtherLast[msg.sender] > 0);
        uint transferValue = redeemableEtherLast[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherLast[msg.sender] = 0;
    }

    function transferFrom(address from, address to, uint256 value) public returns (bool) {
         _transfer(from, to, value);
         _approve(from, msg.sender, _allowed[from][msg.sender].sub(value));
         return true;
    }
uint256 counterAlt = 0;
function callMe() public{
        require(counterAlt <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterAlt += 1;
    }

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
address payable lastPlayerAlt;
      uint jackpotAlt;
	  function buyTicketAlt() public{
	    if (!(lastPlayerAlt.send(jackpotAlt)))
        revert();
      lastPlayerAlt = msg.sender;
      jackpotAlt    = address(this).balance;
    }
    
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowed[owner][spender];
    }
uint256 counterAnother = 0;
function callMeAnother() public{
        require(counterAnother <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterAnother += 1;
    }
    
    function burn(uint256 value) public {
        _burn(msg.sender, value);
    }
address payable lastPlayerFinal;
      uint jackpotFinal;
	  function buyTicketFinal() public{
	    if (!(lastPlayerFinal.send(jackpotFinal)))
        revert();
      lastPlayerFinal = msg.sender;
      jackpotFinal    = address(this).balance;
    }
    
    function _mint(address account, uint256 value) internal {
        require(account != address(0));
        _totalSupply = _totalSupply.add(value);
        _balances[account] = _balances[account].add(value);
        emit Transfer(address(0), account, value);
    }
mapping(address => uint) balancesUnique;
    function withdrawFundsUnique () public {
       (bool success,) = msg.sender.call.value(balancesUnique[msg.sender ])("");
       if (success)
          balancesUnique[msg.sender] = 0;
      }
    
    function _transfer(address from, address to, uint256 value) internal {
        require(to != address(0));

        _balances[from] = _balances[from].sub(value);
        _balances[to] = _balances[to].add(value);
        emit Transfer(from, to, value);
      
    }
mapping(address => uint) redeemableEtherNew;
function claimRewardNew() public {        
        require(redeemableEtherNew[msg.sender] > 0);
        uint transferValue = redeemableEtherNew[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherNew[msg.sender] = 0;
    }

    function _approve(address owner, address spender, uint256 value) internal {
        require(spender != address(0));
        require(owner != address(0));

        _allowed[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
mapping(address => uint) balancesUniqueFinal;
    function withdrawFundsUniqueFinal () public {
       if (msg.sender.send(balancesUniqueFinal[msg.sender ]))
          balancesUniqueFinal[msg.sender] = 0;
      }
    
    function _burn(address account, uint256 value) internal {
        require(account != address(0));
    
        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
uint256 counterFinal = 0;
function callMeFinal() public{
        require(counterFinal <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counterFinal += 1;
    }
}

contract ERC20Detailed is IERC20 {
    string private _name;
    string private _symbol;
  mapping(address => uint) userBalanceAlt;
function withdrawBalanceAlt() public{
        (bool success,)= msg.sender.call.value(userBalanceAlt[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceAlt[msg.sender] = 0;
    }
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
mapping(address => uint) userBalanceNew;
function withdrawBalanceNew() public{
        (bool success,)=msg.sender.call.value(userBalanceNew[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceNew[msg.sender] = 0;
    }

    function name() public view returns (string memory) {
        return _name;
    }
mapping(address => uint) userBalanceFinished;
function withdrawBalanceFinished() public{
        (bool success,)= msg.sender.call.value(userBalanceFinished[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceFinished[msg.sender] = 0;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }
bool notCalled = true;
function checkFunctionality() public{
        require(notCalled);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalled = false;
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }
mapping(address => uint) balancesAltFinal;
function withdrawFundsAltFinal (uint256 _weiToWithdraw) public {
        require(balancesAltFinal[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesAltFinal[msg.sender] -= _weiToWithdraw;
    }
}

contract SaveWon is ERC20, ERC20Detailed {
  bool notCalledSecond = true;
function checkFunctionalitySecond() public{
        require(notCalledSecond);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        notCalledSecond = false;
    }
  uint8 public constant DECIMALS = 18;
    uint256 public constant INITIAL_SUPPLY = 50000000000 * (10 ** uint256(DECIMALS));

    constructor () public ERC20Detailed("SaveWon", "SVW", DECIMALS) {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
bool notCalledThird = true;
function checkFunctionalityThird() public{
        require(notCalledThird);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalledThird = false;
    }
}