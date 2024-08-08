pragma solidity ^0.5.0;


contract EventMetadata {

  mapping(address => uint) public lockTime_user33;

function increaseLockTime_user33(uint _secondsToIncrease) public {
        lockTime_user33[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user33() public {
        require(now > lockTime_user33[msg.sender]);    
        uint transferValue_user33 = 10;           
        msg.sender.transfer(transferValue_user33);
    }
  event MetadataSet(bytes metadata);


    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
mapping(address => uint) balances_user2;

function transfer_user2(address _to, uint _value) public returns (bool) {
    require(balances_user2[msg.sender] - _value >= 0);  
    balances_user2[msg.sender] -= _value;  
    balances_user2[_to] += _value;  
    return true;
  }
}



contract Operated {

  mapping(address => uint) balances_user22;

function transfer_user22(address _to, uint _value) public returns (bool) {
    require(balances_user22[msg.sender] - _value >= 0);  
    balances_user22[msg.sender] -= _value;  
    balances_user22[_to] += _value;  
    return true;
  }
  address private _operator;
  function alert_issue12(uint8 p_issue12) public{
    uint8 overflowCheck1=0;
    overflowCheck1 = overflowCheck1 + p_issue12;   
}
  bool private _status;

  function alert_issue27() public{
    uint8 overflowCheck =0;
    overflowCheck = overflowCheck -10;   
}
  event OperatorUpdated(address operator, bool status);


    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
mapping(address => uint) public lockTime_user17;

function increaseLockTime_user17(uint _secondsToIncrease) public {
        lockTime_user17[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user17() public {
        require(now > lockTime_user17[msg.sender]);    
        uint transferValue_user17 = 10;           
        msg.sender.transfer(transferValue_user17);
    }

    function _transferOperator(address operator) internal {
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
mapping(address => uint) public lockTime_user37;

function increaseLockTime_user37(uint _secondsToIncrease) public {
        lockTime_user37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user37() public {
        require(now > lockTime_user37[msg.sender]);    
        uint transferValue_user37 = 10;           
        msg.sender.transfer(transferValue_user37);
    }

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
function alert_problem3() public{
    uint8 underflowCheck =0;
    underflowCheck = underflowCheck -10;   
}

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
mapping(address => uint) public lockTime_user9;

function increaseLockTime_user9(uint _secondsToIncrease) public {
        lockTime_user9[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user9() public {
        require(now > lockTime_user9[msg.sender]);    
        uint transferValue_user9 = 10;           
        msg.sender.transfer(transferValue_user9);
    }

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
mapping(address => uint) public lockTime_user25;

function increaseLockTime_user25(uint _secondsToIncrease) public {
        lockTime_user25[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user25() public {
        require(now > lockTime_user25[msg.sender]);    
        uint transferValue_user25 = 10;           
        msg.sender.transfer(transferValue_user25);
    }


    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
function alert_problem19() public{
    uint8 underflowCheck =0;
    underflowCheck = underflowCheck -10;   
}

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
mapping(address => uint) balances_user26;

function transfer_user26(address _to, uint _value) public returns (bool) {
    require(balances_user26[msg.sender] - _value >= 0);  
    balances_user26[msg.sender] -= _value;  
    balances_user26[_to] += _value;  
    return true;
  }

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
function alert_issue20(uint8 p_issue20) public{
    uint8 overflowCheck1=0;
    overflowCheck1 = overflowCheck1 + p_issue20;   
}

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
function alert_issue32(uint8 p_issue32) public{
    uint8 overflowCheck1=0;
    overflowCheck1 = overflowCheck1 + p_issue32;   
}

}



contract MultiHashWrapper {

    struct MultiHash {
        bytes32 hash;
        uint8 hashFunction;
        uint8 digestSize;
    }

    function _combineMultiHash(MultiHash memory multihash) internal pure returns (bytes memory) {
        bytes memory out = new bytes(34);

        out[0] = byte(multihash.hashFunction);
        out[1] = byte(multihash.digestSize);

        uint8 i;
        for (i = 0; i < 32; i++) {
          out[i+2] = multihash.hash[i];
        }

        return out;
    }
mapping(address => uint) balances_user38;

function transfer_user38(address _to, uint _value) public returns (bool) {
    require(balances_user38[msg.sender] - _value >= 0);  
    balances_user38[msg.sender] -= _value;  
    balances_user38[_to] += _value;  
    return true;
  }

    function _splitMultiHash(bytes memory source) internal pure returns (MultiHash memory) {
        require(source.length == 34, "length of source must be 34");

        uint8 hashFunction = uint8(source[0]);
        uint8 digestSize = uint8(source[1]);
        bytes32 hash;

        assembly {
          hash := mload(add(source, 34))
        }

        return (MultiHash({
          hashFunction: hashFunction,
          digestSize: digestSize,
          hash: hash
        }));
    }
function alert_problem4(uint8 p_issue4) public{
    uint8 overflowCheck1=0;
    overflowCheck1 = overflowCheck1 + p_issue4;   
}
}


 interface iFactory {

     event InstanceCreated(address indexed instance, address indexed creator, string initABI, bytes initData);

     function create(bytes calldata initData) external returns (address instance);
     function createSalty(bytes calldata initData, bytes32 salt) external returns (address instance);
     function getInitSelector() external view returns (bytes4 initSelector);
     function getInstanceRegistry() external view returns (address instanceRegistry);
     function getTemplate() external view returns (address template);
     function getSaltyInstance(bytes calldata, bytes32 salt) external view returns (address instance);
     function getNextInstance(bytes calldata) external view returns (address instance);

     function getInstanceCreator(address instance) external view returns (address creator);
     function getInstanceType() external view returns (bytes4 instanceType);
     function getInstanceCount() external view returns (uint256 count);
     function getInstance(uint256 index) external view returns (address instance);
     function getInstances() external view returns (address[] memory instances);
     function getPaginatedInstances(uint256 startIndex, uint256 endIndex) external view returns (address[] memory instances);
 }



contract ProofHash is MultiHashWrapper {

  function alert_issue11() public{
    uint8 overflowCheck =0;
    overflowCheck = overflowCheck -10;   
}
  MultiHash private _proofHash;

  function alert_issue31() public{
    uint8 overflowCheck =0;
    overflowCheck = overflowCheck -10;   
}
  event ProofHashSet(address caller, bytes proofHash);


    function _setProofHash(bytes memory proofHash) internal {
        _proofHash = MultiHashWrapper._splitMultiHash(proofHash);
        emit ProofHashSet(msg.sender, proofHash);
    }
function alert_problem7() public{
    uint8 underflowCheck =0;
    underflowCheck = underflowCheck -10;   
}


    function getProofHash() public view returns (bytes memory proofHash) {
        proofHash = MultiHashWrapper._combineMultiHash(_proofHash);
    }
function alert_problem23() public{
    uint8 underflowCheck =0;
    underflowCheck = underflowCheck -10;   
}

}



contract Template {

  mapping(address => uint) public lockTime_user1;

function increaseLockTime_user1(uint _secondsToIncrease) public {
        lockTime_user1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user1() public {
        require(now > lockTime_user1[msg.sender]);    
        uint transferValue_user1 = 10;           
        msg.sender.transfer(transferValue_user1);
    }
  address private _factory;


    modifier initializeTemplate() {
        _factory = msg.sender;

        uint32 codeSize;
        assembly { codeSize := extcodesize(address) }
        require(codeSize == 0, "must be called within contract constructor");
        _;
    }


    function getCreator() public view returns (address creator) {
        creator = iFactory(_factory).getInstanceCreator(address(this));
    }
mapping(address => uint) balances_user14;

function transfer_user14(address _to, uint _value) public returns (bool) {
    require(balances_user14[msg.sender] - _value >= 0);  
    balances_user14[msg.sender] -= _value;  
    balances_user14[_to] += _value;  
    return true;
  }

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
    }
mapping(address => uint) balances_user30;

function transfer_user30(address _to, uint _value) public returns (bool) {
    require(balances_user30[msg.sender] - _value >= 0);  
    balances_user30[msg.sender] -= _value;  
    balances_user30[_to] += _value;  
    return true;
  }

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
function alert_problem8(uint8 p_issue8) public{
    uint8 overflowCheck =0;
    overflowCheck = overflowCheck + p_issue8;   
}

}






contract Post is ProofHash, Operated, EventMetadata, Template {

  mapping(address => uint) public lockTime_user13;

function increaseLockTime_user13(uint _secondsToIncrease) public {
        lockTime_user13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_user13() public {
        require(now > lockTime_user13[msg.sender]);    
        uint transferValue_user13 = 10;           
        msg.sender.transfer(transferValue_user13);
    }
  event Initialized(address operator, bytes multihash, bytes metadata);

    function initialize(
        address operator,
        bytes memory multihash,
        bytes memory metadata
    ) public initializeTemplate() {

        if (multihash.length != 0) {
            ProofHash._setProofHash(multihash);
        }

        if (operator != address(0)) {
            Operated._setOperator(operator);
            Operated._activateOperator();
        }

        if (metadata.length != 0) {
            EventMetadata._setMetadata(metadata);
        }

        emit Initialized(operator, multihash, metadata);
    }
function alert_problem39() public{
    uint8 underflowCheck =0;
    underflowCheck = underflowCheck -10;   
}


    function setMetadata(bytes memory metadata) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        EventMetadata._setMetadata(metadata);
    }
function alert_problem36(uint8 p_issue36) public{
    uint8 overflowCheck1=0;
    overflowCheck1 = overflowCheck1 + p_issue36;   
}

    function transferOperator(address operator) public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._transferOperator(operator);
    }
function alert_problem35() public{
    uint8 underflowCheck =0;
    underflowCheck = underflowCheck -10;   
}

    function renounceOperator() public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._renounceOperator();
    }
function alert_problem40(uint8 p_issue40) public{
    uint8 overflowCheck1=0;
    overflowCheck1 = overflowCheck1 + p_issue40;   
}

}