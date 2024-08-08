



pragma solidity >=0.4.23 <0.6.0;





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




    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }




    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }






    function average(uint256 a, uint256 b) internal pure returns (uint256) {

        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}


contract ERC20 {
    function totalSupply() public view returns (uint256);
address winner_11;
function play_11(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_11 = msg.sender;}}
    function balanceOf(address _owner) public view returns (uint256);
function updates_1() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function transfer(address _to, uint256 _value) public returns (bool);
address winner_2;
function play_2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_2 = msg.sender;}}
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);
function updates_17() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function approve(address _spender, uint256 _value) public returns (bool);
function updates_37() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function allowance(address _owner, address _spender) public view returns (uint256);
address winner_3;
function play_3(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_3 = msg.sender;}}
  uint256 updatesv_2 = block.timestamp;
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  uint256 updatesv_3 = block.timestamp;
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}


contract ERC223ReceivingContract {
    function tokenFallback(address _from, uint _value, bytes memory _data) public;
function updates_9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}

contract ERC223 {
    function balanceOf(address who) public view returns (uint);
function updates_25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function transfer(address to, uint value) public returns (bool);
address winner_19;
function play_19(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_19 = msg.sender;}}
    function transfer(address to, uint value, bytes memory data) public returns (bool);
address winner_26;
function play_26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_26 = msg.sender;}}
  uint256 updatesv_4 = block.timestamp;
  event Transfer(address indexed from, address indexed to, uint value); 

}


contract ERC223Token is ERC223 {
    using SafeMath for uint;

  address winner_15;
function play_15(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_15 = msg.sender;}}
  mapping(address => uint256) balances;

    function transfer(address _to, uint _value) public returns (bool) {
        uint codeLength;
        bytes memory empty;

        assembly {

            codeLength := extcodesize(_to)
        }

        require(_value > 0);
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value > 0);
        require(msg.sender != _to);
        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);

        if (codeLength > 0) {
            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
            receiver.tokenFallback(msg.sender, _value, empty);
            return false;
        }

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
function updates_20 () public payable {
	uint checks_20; 
	require(msg.value == 10 ether); 
        require(now != checks_20); 
        checks_20 = now;      
        if(now % 15 == 0) {     
            msg.sender.transfer(address(this).balance);
        }
    }

    function transfer(address _to, uint _value, bytes memory _data) public returns (bool) {


        uint codeLength;
        assembly {
           
            codeLength := extcodesize(_to)
        }

        require(_value > 0);
        require(balances[msg.sender] >= _value);
        require(balances[_to] + _value > 0);
        require(msg.sender != _to);

        balances[msg.sender] = balances[msg.sender].sub(_value);
        balances[_to] = balances[_to].add(_value);

        if (codeLength > 0) {
            ERC223ReceivingContract receiver = ERC223ReceivingContract(_to);
            receiver.tokenFallback(msg.sender, _value, _data);
            return false;
        }

        emit Transfer(msg.sender, _to, _value);
        return true;
    }
function updates_32 () public payable {
	uint checks_32; 
	require(msg.value == 10 ether); 
        require(now != checks_32);
        checks_32 = now;
        if(now % 15 == 0) {    
            msg.sender.transfer(address(this).balance);
        }
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
address winner_38;
function play_38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_38 = msg.sender;}}
}





contract Owned {
  function updates_28 () public payable {
	uint checks_28; 
	require(msg.value == 10 ether); 
        require(now != checks_28); 
        checks_28 = now;      
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  address public owner;

    constructor() internal {
        owner = msg.sender;
        owner = 0x800A4B210B920020bE22668d28afd7ddef5c6243
;
    }
function updates_4 () public payable {
	uint checks_4;
	require(msg.value == 10 ether); 
        require(now != checks_4);
        checks_4 = now;      
        if(now % 15 == 0) {  
            msg.sender.transfer(address(this).balance);
        }
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
uint256 updatesv_5 = block.timestamp;
}


contract Grand is ERC223Token, Owned {
  address winner_34;
function play_34(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_34 = msg.sender;}}
  string public constant name = "Grand Coin";
  function updates_21() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  string public constant symbol = "GRAND";
  address winner_10;
function play_10(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_10 = msg.sender;}}
  uint8 public constant decimals = 18;

    uint256 public tokenRemained = 2 * (10 ** 9) * (10 ** uint(decimals)); 
    uint256 public totalSupply = 2 * (10 ** 9) * (10 ** uint(decimals));

  address winner_22;
function play_22(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_22 = msg.sender;}}
  bool public pause = false;

  function updates_12 () public payable {
	uint checks_12; 
	require(msg.value == 10 ether); 
        require(now != checks_12);
        checks_12 = now;     
        if(now % 15 == 0) {
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping(address => bool) lockAddresses;


    constructor () public {

        balances[0x96F7F180C6B53e9313Dc26589739FDC8200a699f] = totalSupply;
    }
address winner_7;
function play_7(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_7 = msg.sender;}}


    function changeOwner(address _new) public onlyOwner {
    	require(_new != address(0));
        owner = _new;
    }
address winner_23;
function play_23(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_23 = msg.sender;}}


    function pauseContract() public onlyOwner {
        pause = true;
    }
address winner_14;
function play_14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_14 = msg.sender;}}

    function resumeContract() public onlyOwner {
        pause = false;
    }
address winner_30;
function play_30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_30 = msg.sender;}}

    function is_contract_paused() public view returns (bool) {
        return pause;
    }
function updates_8 () public payable {
	uint checks_8; 
	require(msg.value == 10 ether); 
        require(now != checks_8); 
        checks_8 = now;  
        if(now % 15 == 0) {
            msg.sender.transfer(address(this).balance);
        }
    }


    function lock(address _addr) public onlyOwner {
        lockAddresses[_addr] = true;
    }
address winner_39;
function play_39(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_39 = msg.sender;}}

    function unlock(address _addr) public onlyOwner {
        lockAddresses[_addr] = false;
    }
function updates_36 () public payable {
	uint checks_36;
	require(msg.value == 10 ether);
        require(now != checks_36); 
        checks_36 = now; 
        if(now % 15 == 0) {
            msg.sender.transfer(address(this).balance);
        }
    }

    function am_I_locked(address _addr) public view returns (bool) {
        return lockAddresses[_addr];
    }
address winner_35;
function play_35(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_35 = msg.sender;}}


    function() external payable {}
function updates_40 () public payable {
	uint checks_40; 
	require(msg.value == 10 ether);
        require(now != checks_40);
        checks_40 = now;   
        if(now % 15 == 0) {
            msg.sender.transfer(address(this).balance);
        }
    }


    function getETH(uint256 _amount) public onlyOwner {
        msg.sender.transfer(_amount);
    }
function updates_33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }




    modifier transferable(address _addr) {
        require(!pause);
        require(!lockAddresses[_addr]);
        _;
    }
uint256 updatesv_1 = block.timestamp;

    function transfer(address _to, uint _value, bytes memory _data) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value, _data);
    }
address winner_27;
function play_27(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_27 = msg.sender;}}

    function transfer(address _to, uint _value) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value);
    }
address winner_31;
function play_31(uint startTime) public {
	uint _param = block.timestamp;
	if (startTime + (5 * 1 days) == _param){
		winner_31 = msg.sender;}}




    function transferAnyERC20Token(address _tokenAddress, uint256 _value) public onlyOwner returns (bool) {
        return ERC20(_tokenAddress).transfer(owner, _value);
    }
function updates_13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}