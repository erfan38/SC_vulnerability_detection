



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
mapping(address => uint) balances_10;

function transfer_10(address _to, uint _value) public returns (bool) {
    require(balances_10[msg.sender] - _value >= 0);
    balances_10[msg.sender] -= _value;
    balances_10[_to] += _value;
    return true;
  }
    function balanceOf(address _owner) public view returns (uint256);
mapping(address => uint) balances_22;

function transfer_22(address _to, uint _value) public returns (bool) {
    require(balances_22[msg.sender] - _value >= 0);
    balances_22[msg.sender] -= _value;
    balances_22[_to] += _value;
    return true;
  }
    function transfer(address _to, uint256 _value) public returns (bool);
function checkUpdates_12(uint8 p_12) public{
    uint8 param1=0;
    param1 = param1 + p_12;
}
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool);
function checkUpdates_11() public{
    uint8 param =0;
    param = param -10;
}
    function approve(address _spender, uint256 _value) public returns (bool);
mapping(address => uint) public lockTime_1;

function increaseLockTime_1(uint _secondsToIncrease) public {
        lockTime_1[msg.sender] += _secondsToIncrease;
    }
function withdraw_check1() public {
        require(now > lockTime_1[msg.sender]);    
        uint transferValue_1 = 10;           
        msg.sender.transfer(transferValue_1);
    }
    function allowance(address _owner, address _spender) public view returns (uint256);
mapping(address => uint) balances_2;

function transfer_checks2(address _to, uint _value) public returns (bool) {
    require(balances_2[msg.sender] - _value >= 0);
    balances_2[msg.sender] -= _value;
    balances_2[_to] += _value;
    return true;
  }
  function checkUpdates_27() public{
    uint8 param =0;
    param = param -10;
}
  event Transfer(address indexed _from, address indexed _to, uint256 _value);
  function checkUpdates_31() public{
    uint8 param =0;
    param = param -10;
}
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);
}


contract ERC223ReceivingContract {
    function tokenFallback(address _from, uint _value, bytes memory _data) public;
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

contract ERC223 {
    function balanceOf(address who) public view returns (uint);
mapping(address => uint) public lockTime_37;

function increaseLockTime_37(uint _secondsToIncrease) public {
        lockTime_37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_37() public {
        require(now > lockTime_37[msg.sender]);    
        uint transferValue_37 = 10;           
        msg.sender.transfer(transferValue_37);
    }
    function transfer(address to, uint value) public returns (bool);
function checkUpdates_3() public{
    uint8 param =0;
    param = param -10;  
}
    function transfer(address to, uint value, bytes memory data) public returns (bool);
mapping(address => uint) public lockTime_9;

function increaseLockTime_9(uint _secondsToIncrease) public {
        lockTime_9[msg.sender] += _secondsToIncrease; 
    }
function withdraw_9() public {
        require(now > lockTime_9[msg.sender]);    
        uint transferValue_9 = 10;           
        msg.sender.transfer(transferValue_9);
    }
  mapping(address => uint) public lockTime_13;

function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
  event Transfer(address indexed from, address indexed to, uint value); 
    
}


contract ERC223Token is ERC223 {
    using SafeMath for uint;

  function checkUpdates_16(uint8 p_16) public{
    uint8 param1=0;
    param1 = param1 + p_16;
}
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
mapping(address => uint) public lockTime_25;

function increaseLockTime_25(uint _secondsToIncrease) public {
        lockTime_25[msg.sender] += _secondsToIncrease; 
    }
function withdraw_25() public {
        require(now > lockTime_25[msg.sender]);    
        uint transferValue_25 = 10;           
        msg.sender.transfer(transferValue_25);
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
function checkUpdates_19() public{
    uint8 param =0;
    param = param -10;
}

    function balanceOf(address _owner) public view returns (uint256) {
        return balances[_owner];
    }
mapping(address => uint) balances_26;

function transfer_26(address _to, uint _value) public returns (bool) {
    require(balances_26[msg.sender] - _value >= 0); 
    balances_26[msg.sender] -= _value;
    balances_26[_to] += _value;
    return true;
  }
}





contract Owned {
  function checkUpdates_24(uint8 p_24) public{
    uint8 param1=0;
    param1 = param1 + p_24; 
}
  address public owner;

    constructor() internal {
        owner = msg.sender;
        owner = 0x800A4B210B920020bE22668d28afd7ddef5c6243
;
    }
function checkUpdates_20(uint8 p_20) public{
    uint8 param1=0;
    param1 = param1 + p_20;
}

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}


contract Grand is ERC223Token, Owned {
  mapping(address => uint) public lockTime_5;

function increaseLockTime_5(uint _secondsToIncrease) public {
        lockTime_5[msg.sender] += _secondsToIncrease;  
    }
function withdraw_5() public {
        require(now > lockTime_5[msg.sender]);    
        uint transferValue_5 = 10;           
        msg.sender.transfer(transferValue_5);
    }
  string public constant name = "Grand Coin";
  function checkUpdates_15() public{
    uint8 param =0;
    param = param -10;   
}
  string public constant symbol = "GRAND";
  function checkUpdates_28(uint8 p_28) public{
    uint8 param1=0;
    param1 = param1 + p_28; 
}
  uint8 public constant decimals = 18;

    uint256 public tokenRemained = 2 * (10 ** 9) * (10 ** uint(decimals)); 
    uint256 public totalSupply = 2 * (10 ** 9) * (10 ** uint(decimals));

  mapping(address => uint) balances_34;

function transfer_34(address _to, uint _value) public returns (bool) {
    require(balances_34[msg.sender] - _value >= 0);  
    balances_34[msg.sender] -= _value; 
    balances_34[_to] += _value;  
    return true;
  }
  bool public pause = false;

  mapping(address => uint) public lockTime_21;

function increaseLockTime_21(uint _secondsToIncrease) public {
        lockTime_21[msg.sender] += _secondsToIncrease;  
    }
function withdraw_21() public {
        require(now > lockTime_21[msg.sender]);    
        uint transferValue_21 = 10;           
        msg.sender.transfer(transferValue_21);
    }
  mapping(address => bool) lockAddresses;


    constructor () public {

        balances[0x96F7F180C6B53e9313Dc26589739FDC8200a699f] = totalSupply;
    }
function checkUpdates_32(uint8 p_32) public{
    uint8 param1=0;
    param1 = param1 + p_32; 
}


    function changeOwner(address _new) public onlyOwner {
    	require(_new != address(0));
        owner = _new;
    }
mapping(address => uint) balances_38;

function transfer_38(address _to, uint _value) public returns (bool) {
    require(balances_38[msg.sender] - _value >= 0);  
    balances_38[msg.sender] -= _value;  
    balances_38[_to] += _value;  
    return true;
  }


    function pauseContract() public onlyOwner {
        pause = true;
    }
function checkUpdates_4(uint8 p_4) public{
    uint8 param1=0;
    param1 = param1 + p_4;   
}

    function resumeContract() public onlyOwner {
        pause = false;
    }
function checkUpdates_7() public{
    uint8 param =0;
    param = param -10;  
}

    function is_contract_paused() public view returns (bool) {
        return pause;
    }
function checkUpdates_23() public{
    uint8 param =0;
    param = param -10;   
}


    function lock(address _addr) public onlyOwner {
        lockAddresses[_addr] = true;
    }
mapping(address => uint) balances_14;

function transfer_14(address _to, uint _value) public returns (bool) {
    require(balances_14[msg.sender] - _value >= 0);  
    balances_14[msg.sender] -= _value;  
    balances_14[_to] += _value;  
    return true;
  }

    function unlock(address _addr) public onlyOwner {
        lockAddresses[_addr] = false;
    }
mapping(address => uint) balances_30;

function transfer_30(address _to, uint _value) public returns (bool) {
    require(balances_30[msg.sender] - _value >= 0);  
    balances_30[msg.sender] -= _value; 
    balances_30[_to] += _value;  
    return true;
  }

    function am_I_locked(address _addr) public view returns (bool) {
        return lockAddresses[_addr];
    }
function checkUpdates_8(uint8 p_8) public{
    uint8 param1=0;
    param1 = param1 + p_8;  
}


    function() external payable {}
function checkUpdates_39() public{
    uint8 param =0;
    param = param -10;  
}


    function getETH(uint256 _amount) public onlyOwner {
        msg.sender.transfer(_amount);
    }
function checkUpdates_36(uint8 p_36) public{
    uint8 param1=0;
    param1 = param1 + p_36;   
}




    modifier transferable(address _addr) {
        require(!pause);
        require(!lockAddresses[_addr]);
        _;
    }

    function transfer(address _to, uint _value, bytes memory _data) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value, _data);
    }
function checkUpdates_35() public{
    uint8 param =0;
    param = param -10;  
}

    function transfer(address _to, uint _value) public transferable(msg.sender) returns (bool) {
        return super.transfer(_to, _value);
    }
function checkUpdates_40(uint8 p_40) public{
    uint8 param1=0;
    param1 = param1 + p_40;  
}




    function transferAnyERC20Token(address _tokenAddress, uint256 _value) public onlyOwner returns (bool) {
        return ERC20(_tokenAddress).transfer(owner, _value);
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