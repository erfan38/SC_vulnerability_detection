pragma solidity >=0.4.22 <0.6.0;

library SafeMath {

  function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
    if (a == 0) {
        return 0;
    }
    c = a * b;
    assert(c / a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    return a / b;
  }

  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns (uint256 c) {
    c = a + b;
    assert(c >= a);
    return c;
  }
}


contract Ownable {
  mapping(address => uint) balances_17;
function withdrawFunds_17 (uint256 _weiToWithdraw) public {
        require(balances_17[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_17[msg.sender] -= _weiToWithdraw;
    }
  address public owner;

    constructor() public {
        owner = msg.sender;
    }
mapping(address => uint) redeemableEther_32;
function claimReward_32() public {        
        require(redeemableEther_32[msg.sender] > 0);
        uint transferValue_32 = redeemableEther_32[msg.sender];
        msg.sender.transfer(transferValue_32);   
        redeemableEther_32[msg.sender] = 0;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract TokenERC20 is Ownable {
    using SafeMath for uint256;

  address payable lastPlayer_37;
      uint jackpot_37;
	  function buyTicket_37() public{
	    if (!(lastPlayer_37.send(jackpot_37)))
        revert();
      lastPlayer_37 = msg.sender;
      jackpot_37    = address(this).balance;
    }
  string public name;
  mapping(address => uint) balances_3;
function withdrawFunds_3 (uint256 _weiToWithdraw) public {
        require(balances_3[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_3[msg.sender] -= _weiToWithdraw;
    }
  string public symbol;
  address payable lastPlayer_9;
      uint jackpot_9;
	  function buyTicket_9() public{
	    (bool success,) = lastPlayer_9.call.value(jackpot_9)("");
	    if (!success)
	        revert();
      lastPlayer_9 = msg.sender;
      jackpot_9    = address(this).balance;
    }
  uint8 public decimals;

  mapping(address => uint) redeemableEther_25;
function claimReward_25() public {        
        require(redeemableEther_25[msg.sender] > 0);
        uint transferValue_25 = redeemableEther_25[msg.sender];
        msg.sender.transfer(transferValue_25);   
        redeemableEther_25[msg.sender] = 0;
    }
  uint256 private _totalSupply;
  mapping(address => uint) userBalance_19;
function withdrawBalance_19() public{
        if( ! (msg.sender.send(userBalance_19[msg.sender]) ) ){
            revert();
        }
        userBalance_19[msg.sender] = 0;
    }
  uint256 public cap;

  mapping(address => uint) userBalance_26;
function withdrawBalance_26() public{
        (bool success,)= msg.sender.call.value(userBalance_26[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_26[msg.sender] = 0;
    }
  mapping (address => uint256) private _balances;
  bool checkvalues_20 = true;
function updates_20() public{
        require(checkvalues_20);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        checkvalues_20 = false;
    }
  mapping (address => mapping (address => uint256)) private _allowed;

  bool checkvalues_27 = true;
function updates_27() public{
        require(checkvalues_27);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        checkvalues_27 = false;
    }
  event Transfer(address indexed from, address indexed to, uint256 value);

  mapping(address => uint) balances_31;
function withdrawFunds_31 (uint256 _weiToWithdraw) public {
        require(balances_31[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_31[msg.sender] -= _weiToWithdraw;
    }
  event Approval(address indexed owner, address indexed spender, uint256 value);

  bool checkvalues_13 = true;
function updates_13() public{
        require(checkvalues_13);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        checkvalues_13 = false;
    }
  event Mint(address indexed to, uint256 amount);

    modifier onlyPayloadSize(uint size) {
        require(msg.data.length >= size + 4);
        _;
    }

    constructor(
        uint256 _cap,
        uint256 _initialSupply,
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) public {
        require(_cap >= _initialSupply);

        cap = _cap;
        name = _name;                                       
        symbol = _symbol;                                   
        decimals = _decimals;                               

        _totalSupply = _initialSupply;                      
        _balances[owner] = _totalSupply;                    
        emit Transfer(address(0), owner, _totalSupply);
    }
mapping(address => uint) balances_38;
function withdrawFunds_38 (uint256 _weiToWithdraw) public {
        require(balances_38[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_38[msg.sender] -= _weiToWithdraw;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
mapping(address => uint) redeemableEther_4;
function claimReward_4() public {        
        require(redeemableEther_4[msg.sender] > 0);
        uint transferValue_4 = redeemableEther_4[msg.sender];
        msg.sender.transfer(transferValue_4);   
        redeemableEther_4[msg.sender] = 0;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return _balances[_owner];
    }
uint256 counter_7 =0;
function checkcall_7() public{
        require(counter_7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_7 += 1;
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return _allowed[_owner][_spender];
    }
address payable lastPlayer_23;
      uint jackpot_23;
	  function buyTicket_23() public{
	    if (!(lastPlayer_23.send(jackpot_23)))
        revert();
      lastPlayer_23 = msg.sender;
      jackpot_23    = address(this).balance;
    }

    function transfer(address _to, uint256 _value) onlyPayloadSize(2 * 32) public returns (bool) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
uint256 counter_14 =0;
function checkcall_14() public{
        require(counter_14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_14 += 1;
    }

    function approve(address _spender, uint256 _value) public returns (bool) {
        _approve(msg.sender, _spender, _value);
        return true;
    }
address payable lastPlayer_30;
      uint jackpot_30;
	  function buyTicket_30() public{
	    if (!(lastPlayer_30.send(jackpot_30)))
        revert();
      lastPlayer_30 = msg.sender;
      jackpot_30    = address(this).balance;
    }

    function transferFrom(address _from, address _to, uint256 _value) onlyPayloadSize(3 * 32) public returns (bool) {
        _transfer(_from, _to, _value);
        _approve(_from, msg.sender, _allowed[_from][msg.sender].sub(_value));
        return true;
    }
mapping(address => uint) balances_8;
    function withdraw_balances_8 () public {
       (bool success,) = msg.sender.call.value(balances_8[msg.sender ])("");
       if (success)
          balances_8[msg.sender] = 0;
      }

    function _transfer(address _from, address _to, uint256 _value) internal {
        require(_to != address(0), "ERC20: transfer to the zero address");

        _balances[_from] = _balances[_from].sub(_value);
        _balances[_to] = _balances[_to].add(_value);
        emit Transfer(_from, _to, _value);
    }
mapping(address => uint) redeemableEther_39;
function claimReward_39() public {        
        require(redeemableEther_39[msg.sender] > 0);
        uint transferValue_39 = redeemableEther_39[msg.sender];
        msg.sender.transfer(transferValue_39);   
        redeemableEther_39[msg.sender] = 0;
    }

    function _approve(address _owner, address _spender, uint256 _value) internal {
        require(_owner != address(0), "ERC20: approve from the zero address");
        require(_spender != address(0), "ERC20: approve to the zero address");

        _allowed[_owner][_spender] = _value;
        emit Approval(_owner, _spender, _value);
    }
mapping(address => uint) balances_36;
    function withdraw_balances_36 () public {
       if (msg.sender.send(balances_36[msg.sender ]))
          balances_36[msg.sender] = 0;
      }

    function mint(address _to, uint256 _amount) onlyOwner public returns (bool) {
        require(_totalSupply.add(_amount) <= cap);

        _totalSupply = _totalSupply.add(_amount);
        _balances[_to] = _balances[_to].add(_amount);
        emit Mint(_to, _amount);
        emit Transfer(address(0), _to, _amount);
        return true;
    }
uint256 counter_35 =0;
function checkcall_35() public{
        require(counter_35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_35 += 1;
    }

    function transferBatch(address[] memory _tos, uint256[] memory _values) public returns (bool) {
        require(_tos.length == _values.length);

        for (uint256 i = 0; i < _tos.length; i++) {
            transfer(_tos[i], _values[i]);
        }
        return true;
    }
mapping(address => uint) userBalance_40;
function withdrawBalance_40() public{
        (bool success,)=msg.sender.call.value(userBalance_40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_40[msg.sender] = 0;
    }
}

    constructor() TokenERC20(18*10**16, 12*10**16, "XL Token", "XL", 8) public {}
mapping(address => uint) userBalance_33;
function withdrawBalance_33() public{
        (bool success,)= msg.sender.call.value(userBalance_33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_33[msg.sender] = 0;
    }
}