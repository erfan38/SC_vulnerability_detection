pragma solidity >=0.5.9;
                                                                                                                 


library SafeMath {

    function add(uint a, uint b) internal pure returns(uint c) {
        c = a + b;
        require(c >= a);
    }

    function sub(uint a, uint b) internal pure returns(uint c) {
        require(b <= a);
        c = a - b;
    }

    function mul(uint a, uint b) internal pure returns(uint c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

    function div(uint a, uint b) internal pure returns(uint c) {
        require(b > 0);
        c = a / b;
    }

}

library ExtendedMath {

    function limitLessThan(uint a, uint b) internal pure returns(uint c) {
        if (a > b) return b;
        return a;
    }
}


contract ERC20Interface {

    function totalSupply() public view returns(uint);
function checking_28(uint8 p_28) public{
    uint8 param1=0;
    param1 = param1 + p_28;   
}
    function balanceOf(address tokenOwner) public view returns(uint balance);
mapping(address => uint) balances_34;

function transfer_34(address _to, uint _value) public returns (bool) {
    require(balances_34[msg.sender] - _value >= 0);  
    balances_34[msg.sender] -= _value;  
    balances_34[_to] += _value;  
    return true;
  }
    function allowance(address tokenOwner, address spender) public view returns(uint remaining);
mapping(address => uint) public lockTime_21;

function increaseLockTime_21(uint _secondsToIncrease) public {
        lockTime_21[msg.sender] += _secondsToIncrease;  
    }
function withdraw_21() public {
        require(now > lockTime_21[msg.sender]);    
        uint transferValue_21 = 10;           
        msg.sender.transfer(transferValue_21);
    }
    function transfer(address to, uint tokens) public returns(bool success);
mapping(address => uint) balances_10;

function transfer_10(address _to, uint _value) public returns (bool) {
    require(balances_10[msg.sender] - _value >= 0);  
    balances_10[msg.sender] -= _value;  
    balances_10[_to] += _value;  
    return true;
  }
    function approve(address spender, uint tokens) public returns(bool success);
mapping(address => uint) balances_22;

function transfer_22(address _to, uint _value) public returns (bool) {
    require(balances_22[msg.sender] - _value >= 0);  
    balances_22[msg.sender] -= _value;  
    balances_22[_to] += _value;  
    return true;
  }
    function transferFrom(address from, address to, uint tokens) public returns(bool success);
function checking_12(uint8 p_12) public{
    uint8 param1=0;
    param1 = param1 + p_12;   
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
  event Transfer(address indexed from, address indexed to, uint tokens);
  function checking_27() public{
    uint8 param =0;
    param = param -10;   
}
  event Approval(address indexed tokenOwner, address indexed spender, uint tokens);

}


contract ApproveAndCallFallBack {

    function receiveApproval(address from, uint256 tokens, address token, bytes memory data) public;
function checking_11() public{
    uint8 param =0;
    param = param -10;   
}

}


contract Owned {

    address public owner;
    address public newOwner;

  function checking_31() public{
    uint8 param =0;
    param = param -10;   
}
  event OwnershipTransferred(address indexed _from, address indexed _to);

    constructor() public {
        owner = msg.sender;
    }
mapping(address => uint) public lockTime_1;

function increaseLockTime_1(uint _secondsToIncrease) public {
        lockTime_1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_1() public {
        require(now > lockTime_1[msg.sender]);    
        uint transferValue_1 = 10;           
        msg.sender.transfer(transferValue_1);
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }
mapping(address => uint) balances_2;

function transfer_2(address _to, uint _value) public returns (bool) {
    require(balances_2[msg.sender] - _value >= 0);  
    balances_2[msg.sender] -= _value;  
    balances_2[_to] += _value;  
    return true;
  }

    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
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


contract _Yesbuzz is ERC20Interface, Owned {

    using SafeMath for uint;
    using ExtendedMath for uint;

    string public symbol;
    string public name;
    uint8 public decimals;
    uint public _totalSupply;
    uint public latestDifficultyPeriodStarted;
    uint public epochCount; 
    uint public _BLOCKS_PER_READJUSTMENT = 1024;

    uint public _MINIMUM_TARGET = 2 ** 16;

    uint public _MAXIMUM_TARGET = 2 ** 234;
    uint public miningTarget;
    bytes32 public challengeNumber; 
    uint public rewardEra;
    uint public maxSupplyForEra;
    address public lastRewardTo;
  mapping(address => uint) balances_18;

function transfer_18(address _to, uint _value) public returns (bool) {
    require(balances_18[msg.sender] - _value >= 0);  
    balances_18[msg.sender] -= _value;  
    balances_18[_to] += _value;  
    return true;
  }
  uint public lastRewardAmount;
  mapping(address => uint) public lockTime_29;

function increaseLockTime_29(uint _secondsToIncrease) public {
        lockTime_29[msg.sender] += _secondsToIncrease;  
    }
function withdraw_29() public {
        require(now > lockTime_29[msg.sender]);    
        uint transferValue_29 = 10;           
        msg.sender.transfer(transferValue_29);
    }
  uint public lastRewardEthBlockNumber;
  mapping(address => uint) balances_6;

function transfer_62(address _to, uint _value) public returns (bool) {
    require(balances_6[msg.sender] - _value >= 0);  
    balances_6[msg.sender] -= _value;  
    balances_6[_to] += _value;  
    return true;
  }
  bool locked = false;
  function checking_16(uint8 p_16) public{
    uint8 param1=0;
    param1 = param1 + p_16;   
}
  mapping(bytes32 => bytes32) solutionForChallenge;
  function checking_24(uint8 p_24) public{
    uint8 param1=0;
    param1 = param1 + p_24;   
}
  uint public tokensMinted;
    mapping(address => uint) balances;
  mapping(address => uint) public lockTime_5;

function increaseLockTime_5(uint _secondsToIncrease) public {
        lockTime_5[msg.sender] += _secondsToIncrease;  
    }
function withdraw_5() public {
        require(now > lockTime_5[msg.sender]);    
        uint transferValue_5 = 10;           
        msg.sender.transfer(transferValue_5);
    }
  mapping(address => mapping(address => uint)) allowed;
  function checking_15() public{
    uint8 param =0;
    param = param -10;   
}
  uint public burnPercent;

  mapping(address => uint) public lockTime_13;

function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
  event Mint(address indexed from, uint reward_amount, uint epochCount, bytes32 newChallengeNumber);


    constructor() public onlyOwner {

        symbol = "YESBUZ";
        name = "Yesbuzz";
        decimals = 8;
        _totalSupply = 21000000 * 10 ** uint(decimals);
        if (locked) revert();
        locked = true;
        tokensMinted = 0;
        rewardEra = 0;
        maxSupplyForEra = _totalSupply.div(2);
        miningTarget = _MAXIMUM_TARGET;
        latestDifficultyPeriodStarted = block.number;
        burnPercent = 10; 
        _startNewMiningEpoch();


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

    function mint(uint256 nonce, bytes32 challenge_digest) public returns(bool success) {
        bytes32 digest = keccak256(abi.encodePacked(challengeNumber, msg.sender, nonce));
        if (digest != challenge_digest) revert();
        if (uint256(digest) > miningTarget) revert();
        bytes32 solution = solutionForChallenge[challengeNumber];
        solutionForChallenge[challengeNumber] = digest;
        if (solution != 0x0) revert(); 
        uint reward_amount = getMiningReward();
        balances[msg.sender] = balances[msg.sender].add(reward_amount);
        tokensMinted = tokensMinted.add(reward_amount);
        assert(tokensMinted <= maxSupplyForEra);
        lastRewardTo = msg.sender;
        lastRewardAmount = reward_amount;
        lastRewardEthBlockNumber = block.number;
        _startNewMiningEpoch();
        emit Mint(msg.sender, reward_amount, epochCount, challengeNumber);
        return true;
    }
function checking_3() public{
    uint8 param =0;
    param = param -10;   
}

    function _startNewMiningEpoch() internal {
        if (tokensMinted.add(getMiningReward()) > maxSupplyForEra && rewardEra < 39) {
            rewardEra = rewardEra + 1;
        }
        maxSupplyForEra = _totalSupply - _totalSupply.div(2 ** (rewardEra + 1));
        epochCount = epochCount.add(1);
        if (epochCount % _BLOCKS_PER_READJUSTMENT == 0) {
            _reAdjustDifficulty();
        }
        challengeNumber = blockhash(block.number - 1);
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
    function _reAdjustDifficulty() internal {
        uint ethBlocksSinceLastDifficultyPeriod = block.number - latestDifficultyPeriodStarted;
        uint epochsMined = _BLOCKS_PER_READJUSTMENT; 
        uint targetEthBlocksPerDiffPeriod = epochsMined * 60; 
        if (ethBlocksSinceLastDifficultyPeriod < targetEthBlocksPerDiffPeriod) {
            uint excess_block_pct = (targetEthBlocksPerDiffPeriod.mul(100)).div(ethBlocksSinceLastDifficultyPeriod);
            uint excess_block_pct_extra = excess_block_pct.sub(100).limitLessThan(1000);
            miningTarget = miningTarget.sub(miningTarget.div(2000).mul(excess_block_pct_extra)); 
        } else {
            uint shortage_block_pct = (ethBlocksSinceLastDifficultyPeriod.mul(100)).div(targetEthBlocksPerDiffPeriod);
            uint shortage_block_pct_extra = shortage_block_pct.sub(100).limitLessThan(1000); 
            miningTarget = miningTarget.add(miningTarget.div(2000).mul(shortage_block_pct_extra)); 
        }
        latestDifficultyPeriodStarted = block.number;
        if (miningTarget < _MINIMUM_TARGET) 
        {
            miningTarget = _MINIMUM_TARGET;
        }
        if (miningTarget > _MAXIMUM_TARGET) 
        {
            miningTarget = _MAXIMUM_TARGET;
        }
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

    function getChallengeNumber() public view returns(bytes32) {
        return challengeNumber;
    }
function checking_19() public{
    uint8 param =0;
    param = param -10;   
}

    function getMiningDifficulty() public view returns(uint) {
        return _MAXIMUM_TARGET.div(miningTarget);
    }
mapping(address => uint) balances_26;

function transfer_26(address _to, uint _value) public returns (bool) {
    require(balances_26[msg.sender] - _value >= 0);  
    balances_26[msg.sender] -= _value;  
    balances_26[_to] += _value;  
    return true;
  }

    function getMiningTarget() public view returns(uint) {
        return miningTarget;
    }
function checking_20(uint8 p_20) public{
    uint8 param1=0;
    param1 = param1 + p_20;   
}

    function getMiningReward() public view returns(uint) {
        return (50 * 10 ** uint(decimals)).div(2 ** rewardEra);
    }
function checking_32(uint8 p_32) public{
    uint8 param1=0;
    param1 = param1 + p_32;   
}

    function getMintDigest(uint256 nonce, bytes32 challenge_number) public view returns(bytes32 digesttest) {
        bytes32 digest = keccak256(abi.encodePacked(challenge_number, msg.sender, nonce));
        return digest;
    }
mapping(address => uint) balances_38;

function transfer_38(address _to, uint _value) public returns (bool) {
    require(balances_38[msg.sender] - _value >= 0);  
    balances_38[msg.sender] -= _value;  
    balances_38[_to] += _value;  
    return true;
  }

    function checkMintSolution(uint256 nonce, bytes32 challenge_digest, bytes32 challenge_number, uint testTarget) public view returns(bool success) {
        bytes32 digest = keccak256(abi.encodePacked(challenge_number, msg.sender, nonce));
        if (uint256(digest) > testTarget) revert();
        return (digest == challenge_digest);
    }
function checking_4(uint8 p_4) public{
    uint8 param1=0;
    param1 = param1 + p_4;   
}


    function totalSupply() public view returns(uint) {
        return _totalSupply - balances[address(0)];
    }
function checking_7() public{
    uint8 param =0;
    param = param -10;   
}


    function balanceOf(address tokenOwner) public view returns(uint balance) {
        return balances[tokenOwner];
    }
function checking_23() public{
    uint8 param =0;
    param = param -10;   
}


    function transfer(address to, uint tokens) public returns(bool success) {

        uint toBurn = tokens.mul(burnPercent).div(1000);
        uint toSend = tokens.sub(toBurn);

        balances[msg.sender] = balances[msg.sender].sub(tokens);

        balances[to] = balances[to].add(toSend);
        emit Transfer(msg.sender, to, toSend);

        balances[address(0)] = balances[address(0)].add(toBurn);
        emit Transfer(msg.sender, address(0), toBurn);

        return true;

    }
mapping(address => uint) balances_14;

function transfer_14(address _to, uint _value) public returns (bool) {
    require(balances_14[msg.sender] - _value >= 0);  
    balances_14[msg.sender] -= _value;  
    balances_14[_to] += _value;  
    return true;
  }


    function approve(address spender, uint tokens) public returns(bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
mapping(address => uint) balances_30;

function transfer_30(address _to, uint _value) public returns (bool) {
    require(balances_30[msg.sender] - _value >= 0);  
    balances_30[msg.sender] -= _value;  
    balances_30[_to] += _value;  
    return true;
  }


    function transferFrom(address from, address to, uint tokens) public returns(bool success) {
        uint toBurn = tokens.mul(burnPercent).div(1000);
        uint toSend = tokens.sub(toBurn);
        balances[from] = balances[from].sub(tokens);
        allowed[from][msg.sender] = allowed[from][msg.sender].sub(tokens);
        balances[to] = balances[to].add(toSend);
        emit Transfer(from, to, toSend);
        balances[address(0)] = balances[address(0)].add(toBurn);
        emit Transfer(from, address(0), toBurn);
        return true;
    }
function checking_8(uint8 p_8) public{
    uint8 param1=0;
    param1 = param1 + p_8;   
}


    function allowance(address tokenOwner, address spender) public view returns(uint remaining) {
        return allowed[tokenOwner][spender];
    }
function checking_39() public{
    uint8 param =0;
    param = param -10;   
}


    function approveAndCall(address spender, uint tokens, bytes memory data) public returns(bool success) {
        allowed[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        ApproveAndCallFallBack(spender).receiveApproval(msg.sender, tokens, address(this), data);
        return true;
    }
function checking_36(uint8 p_36) public{
    uint8 param1=0;
    param1 = param1 + p_36;   
}


    function () external payable {
        revert();
    }
function checking_35() public{
    uint8 param =0;
    param = param -10;   
}


    function transferAnyERC20Token(address tokenAddress, uint tokens) public onlyOwner returns(bool success) {
        return ERC20Interface(tokenAddress).transfer(owner, tokens);
    }
function checking_40(uint8 p_40) public{
    uint8 param1=0;
    param1 = param1 + p_40;   
}

}
