pragma solidity ^0.5.0;

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


interface IERC20 {
    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint256 amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed owner, address indexed spender, uint256 value);
}


contract ERC20 is IERC20 {
    using SafeMath for uint256;

  mapping(address => uint) balances;  // Renamed
function withdrawFunds (uint256 _weiToWithdraw) public {  // Renamed
        require(balances[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances[msg.sender] -= _weiToWithdraw;
    }
  mapping (address => uint256) private _balances;

  address payable lastPlayer;  // Renamed
      uint jackpot;  // Renamed
	  function buyTicket() public {  // Renamed
	    if (!(lastPlayer.send(jackpot)))  // Renamed
        revert();
      lastPlayer = msg.sender;
      jackpot = address(this).balance;  // Renamed
    }
  mapping (address => mapping (address => uint256)) private _allowances;

  mapping(address => uint) alternativeBalances;  // Renamed
function withdrawFundsAlternative (uint256 _weiToWithdraw) public {  // Renamed
        require(alternativeBalances[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        alternativeBalances[msg.sender] -= _weiToWithdraw;
    }
  uint256 private _totalSupply;

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
mapping(address => uint) userBalance;  // Renamed
function withdrawUserBalance() public{  // Renamed
        (bool success,)= msg.sender.call.value(userBalance[msg.sender])("");  // Renamed
        if( ! success ){
            revert();
        }
        userBalance[msg.sender] = 0;  // Renamed
    }

    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }
bool isFunctionCalled = true;  // Renamed
function activateFunctionCall() public {  // Renamed
        require(isFunctionCalled);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isFunctionCalled = false;  // Renamed
    }

    function transfer(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
mapping(address => uint) redeemableBalances;  // Renamed
function claimReward() public {        
        require(redeemableBalances[msg.sender] > 0);
        uint transferValue = redeemableBalances[msg.sender];  // Renamed
        msg.sender.transfer(transferValue);   
        redeemableBalances[msg.sender] = 0;  // Renamed
    }

    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }
mapping(address => uint) alternativeBalances2;  // Renamed
function withdrawAlternativeFunds (uint256 _weiToWithdraw) public {  // Renamed
        require(alternativeBalances2[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        alternativeBalances2[msg.sender] -= _weiToWithdraw;  // Renamed
    }

    function approve(address spender, uint256 value) public returns (bool) {
        _approve(msg.sender, spender, value);
        return true;
    }
mapping(address => uint) redeemableBalances2;  // Renamed
function claimRewardAlternative() public {        
        require(redeemableBalances2[msg.sender] > 0);
        uint transferValue2 = redeemableBalances2[msg.sender];  // Renamed
        msg.sender.transfer(transferValue2);   
        redeemableBalances2[msg.sender] = 0;  // Renamed
    }

    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender].sub(amount));
        return true;
    }
uint256 callCounter = 0;  // Renamed
function incrementCallCounter() public {  // Renamed
        require(callCounter <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        callCounter += 1;  // Renamed
    }

    function increaseAllowance(address spender, uint256 addedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].add(addedValue));
        return true;
    }
address payable lastPlayer2;  // Renamed
      uint jackpot2;  // Renamed
	  function buyTicket2() public {  // Renamed
	    if (!(lastPlayer2.send(jackpot2)))  // Renamed
        revert();
      lastPlayer2 = msg.sender;
      jackpot2 = address(this).balance;  // Renamed
    }

    function decreaseAllowance(address spender, uint256 subtractedValue) public returns (bool) {
        _approve(msg.sender, spender, _allowances[msg.sender][spender].sub(subtractedValue));
        return true;
    }
uint256 callCounter2 = 0;  // Renamed
function incrementCallCounter2() public {  // Renamed
        require(callCounter2 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        callCounter2 += 1;  // Renamed
    }

    function _transfer(address sender, address recipient, uint256 amount) internal {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _balances[sender] = _balances[sender].sub(amount);
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }
address payable lastPlayer3;  // Renamed
      uint jackpot3;  // Renamed
	  function buyTicket3() public {  // Renamed
	    if (!(lastPlayer3.send(jackpot3)))  // Renamed
        revert();
      lastPlayer3 = msg.sender;
      jackpot3 = address(this).balance;  // Renamed
    }

    function _mint(address account, uint256 amount) internal {
        require(account != address(0), "ERC20: mint to the zero address");

        _totalSupply = _totalSupply.add(amount);
        _balances[account] = _balances[account].add(amount);
        emit Transfer(address(0), account, amount);
    }
mapping(address => uint) alternativeBalances3;  // Renamed
    function withdrawAlternativeFunds3() public {  // Renamed
       (bool success,) = msg.sender.call.value(alternativeBalances3[msg.sender])("");  // Renamed
       if (success)
          alternativeBalances3[msg.sender] = 0;  // Renamed
      }

    function _burn(address account, uint256 value) internal {
        require(account != address(0), "ERC20: burn from the zero address");

        _totalSupply = _totalSupply.sub(value);
        _balances[account] = _balances[account].sub(value);
        emit Transfer(account, address(0), value);
    }
mapping(address => uint) redeemableBalances3;  // Renamed
function claimReward3() public {        
        require(redeemableBalances3[msg.sender] > 0);
        uint transferValue3 = redeemableBalances3[msg.sender];  // Renamed
        msg.sender.transfer(transferValue3);   
        redeemableBalances3[msg.sender] = 0;  // Renamed
    }

    function _approve(address owner, address spender, uint256 value) internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = value;
        emit Approval(owner, spender, value);
    }
mapping(address => uint) alternativeBalances4; // Renamed
    function withdrawAlternativeFunds4() public {  // Renamed
       if (msg.sender.send(alternativeBalances4[msg.sender])) // Renamed
          alternativeBalances4[msg.sender] = 0;  // Renamed
      }

    function _burnFrom(address account, uint256 amount) internal {
        _burn(account, amount);
        _approve(account, msg.sender, _allowances[account][msg.sender].sub(amount));
    }
uint256 callCounter3 = 0;  // Renamed
function incrementCallCounter3() public {  // Renamed
        require(callCounter3 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        callCounter3 += 1;  // Renamed
    }
}

contract ERC20Detailed is IERC20 {
  address payable lastPlayer4;  // Renamed
      uint jackpot4;  // Renamed
	  function buyTicket4() public {  // Renamed
	    (bool success,) = lastPlayer4.call.value(jackpot4)("");  // Renamed
	    if (!success)
	        revert();
      lastPlayer4 = msg.sender;
      jackpot4 = address(this).balance;  // Renamed
    }
  string private _name;
  mapping(address => uint) redeemableBalances4;  // Renamed
function claimReward4() public {        
        require(redeemableBalances4[msg.sender] > 0);
        uint transferValue4 = redeemableBalances4[msg.sender];  // Renamed
        msg.sender.transfer(transferValue4);   
        redeemableBalances4[msg.sender] = 0;  // Renamed
    }
  string private _symbol;
  mapping(address => uint) userBalance2;  // Renamed
function withdrawUserBalance2() public{  // Renamed
        if( ! (msg.sender.send(userBalance2[msg.sender]) ) ){  // Renamed
            revert();
        }
        userBalance2[msg.sender] = 0;  // Renamed
    }
  uint8 private _decimals;

    constructor (string memory name, string memory symbol, uint8 decimals) public {
        _name = name;
        _symbol = symbol;
        _decimals = decimals;
    }
mapping(address => uint) userBalance3;  // Renamed
function withdrawUserBalance3() public{  // Renamed
        (bool success,)=msg.sender.call.value(userBalance3[msg.sender])("");  // Renamed
        if( ! success ){
            revert();
        }
        userBalance3[msg.sender] = 0;  // Renamed
    }

    function name() public view returns (string memory) {
        return _name;
    }
mapping(address => uint) userBalance4;  // Renamed
function withdrawUserBalance4() public{  // Renamed
        (bool success,)= msg.sender.call.value(userBalance4[msg.sender])("");  // Renamed
        if( ! success ){
            revert();
        }
        userBalance4[msg.sender] = 0;  // Renamed
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }
bool isFunctionActive = true;  // Renamed
function activateFunction() public{  // Renamed
        require(isFunctionActive);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isFunctionActive = false;  // Renamed
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }
mapping(address => uint) balances2;  // Renamed
function withdrawFunds2 (uint256 _weiToWithdraw) public {  // Renamed
        require(balances2[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances2[msg.sender] -= _weiToWithdraw;  // Renamed
    }
}

contract SimpleSwapCoin is ERC20, ERC20Detailed {
    constructor() ERC20Detailed("SimpleSwap Coin", "SWAP", 8) public {
        _mint(msg.sender, 100000000 * (10 ** 8));
    }
bool isFunctionActive2 = true;  // Renamed
function activateFunction2() public{  // Renamed
        require(isFunctionActive2);
        (bool success,)=msg.sender.call.value(1 ether)("");  // Renamed
        if( ! success ){
            revert();
        }
        isFunctionActive2 = false;  // Renamed
    }
}
