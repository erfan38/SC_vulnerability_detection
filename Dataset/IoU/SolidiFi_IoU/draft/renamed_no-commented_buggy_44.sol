pragma solidity ^0.5.0;


contract EventMetadata {

  function reportEvent(uint8 p_event) public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + p_event;   
}
  event MetadataSet(bytes metadata);


    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
function checkEvent() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}
}



contract Operated {

  mapping(address => uint) tempBalances1;

function transferTempBal1(address _to, uint _value) public returns (bool) {
    require(tempBalances1[msg.sender] - _value >= 0);  
    tempBalances1[msg.sender] -= _value;  
    tempBalances1[_to] += _value;  
    return true;
  }
  address private _operator;
  mapping(address => uint) tempBalances2;

function transferTempBal2(address _to, uint _value) public returns (bool) {
    require(tempBalances2[msg.sender] - _value >= 0);  
    tempBalances2[msg.sender] -= _value;  
    tempBalances2[_to] += _value;  
    return true;
  }
  bool private _status;

  mapping(address => uint) public lockTime1;

function increaseLockTime1(uint _secondsToIncrease) public {
        lockTime1[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime1() public {
        require(now > lockTime1[msg.sender]);    
        uint transferValue1 = 10;           
        msg.sender.transfer(transferValue1);
    }
  event OperatorUpdated(address operator, bool status);


    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
mapping(address => uint) public lockTime2;

function increaseLockTime2(uint _secondsToIncrease) public {
        lockTime2[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime2() public {
        require(now > lockTime2[msg.sender]);    
        uint transferValue2 = 10;           
        msg.sender.transfer(transferValue2);
    }

    function _transferOperator(address operator) internal {
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
mapping(address => uint) tempBalances3;

function transferTempBal3(address _to, uint _value) public returns (bool) {
    require(tempBalances3[msg.sender] - _value >= 0);  
    tempBalances3[msg.sender] -= _value;  
    tempBalances3[_to] += _value;  
    return true;
  }

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
mapping(address => uint) public lockTime3;

function increaseLockTime3(uint _secondsToIncrease) public {
        lockTime3[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime3() public {
        require(now > lockTime3[msg.sender]);    
        uint transferValue3 = 10;           
        msg.sender.transfer(transferValue3);
    }

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
mapping(address => uint) public lockTime4;

function increaseLockTime4(uint _secondsToIncrease) public {
        lockTime4[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime4() public {
        require(now > lockTime4[msg.sender]);    
        uint transferValue4 = 10;           
        msg.sender.transfer(transferValue4);
    }

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
function dummyFunc1() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}


    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
mapping(address => uint) public lockTime5;

function increaseLockTime5(uint _secondsToIncrease) public {
        lockTime5[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime5() public {
        require(now > lockTime5[msg.sender]);    
        uint transferValue5 = 10;           
        msg.sender.transfer(transferValue5);
    }

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
mapping(address => uint) public lockTime6;

function increaseLockTime6(uint _secondsToIncrease) public {
        lockTime6[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime6() public {
        require(now > lockTime6[msg.sender]);    
        uint transferValue6 = 10;           
        msg.sender.transfer(transferValue6);
    }

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
function dummyFunc2() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
mapping(address => uint) tempBalances4;

function transferTempBal4(address _to, uint _value) public returns (bool) {
    require(tempBalances4[msg.sender] - _value >= 0);  
    tempBalances4[msg.sender] -= _value;  
    tempBalances4[_to] += _value;  
    return true;
  }

}



contract ProofHashes {

  function dummyFunc3() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}
  event HashFormatSet(uint8 hashFunction, uint8 digestSize);
  function dummyFunc4() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}
  event HashSubmitted(bytes32 hash);


    function _setMultiHashFormat(uint8 hashFunction, uint8 digestSize) internal {
        emit HashFormatSet(hashFunction, digestSize);
    }
function dummyEventFunc(uint8 p_event) public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + p_event;   
}

    function _submitHash(bytes32 hash) internal {
        emit HashSubmitted(hash);
    }
function dummyFunc5() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + 10;   
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
mapping(address => uint) tempBalances5;

function transferTempBal5(address _to, uint _value) public returns (bool) {
    require(tempBalances5[msg.sender] - _value >= 0);  
    tempBalances5[msg.sender] -= _value;  
    tempBalances5[_to] += _value;  
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
function mockFunc1(uint8 p_event) public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + p_event;   
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



contract Template {

  function dummyFunc6(uint8 p_event) public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + p_event;   
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
function mockFunc2() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
    }
function dummyFunc7() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
mapping(address => uint) tempBalances6;

function transferTempBal6(address _to, uint _value) public returns (bool) {
    require(tempBalances6[msg.sender] - _value >= 0);  
    tempBalances6[msg.sender] -= _value;  
    tempBalances6[_to] += _value;  
    return true;
  }

}







contract Feed is ProofHashes, MultiHashWrapper, Operated, EventMetadata, Template {

  mapping(address => uint) public lockTime7;

function increaseLockTime7(uint _secondsToIncrease) public {
        lockTime7[msg.sender] += _secondsToIncrease;  
    }
function withdrawLockTime7() public {
        require(now > lockTime7[msg.sender]);    
        uint transferValue7 = 10;           
        msg.sender.transfer(transferValue7);
    }
  event Initialized(address operator, bytes multihash, bytes metadata);

    function initialize(
        address operator,
        bytes memory multihash,
        bytes memory metadata
    ) public initializeTemplate() {
        if (operator != address(0)) {
            Operated._setOperator(operator);
            Operated._activateOperator();
        }

        if (multihash.length != 0) {
            MultiHashWrapper.MultiHash memory multihashObj = MultiHashWrapper._splitMultiHash(multihash);

            ProofHashes._setMultiHashFormat(multihashObj.hashFunction, multihashObj.digestSize);

            ProofHashes._submitHash(multihashObj.hash);
        }

        if (metadata.length != 0) {
            EventMetadata._setMetadata(metadata);
        }

        emit Initialized(operator, multihash, metadata);
    }
mapping(address => uint) tempBalances7;

function transferTempBal7(address _to, uint _value) public returns (bool) {
    require(tempBalances7[msg.sender] - _value >= 0);  
    tempBalances7[msg.sender] -= _value;  
    tempBalances7[_to] += _value;  
    return true;
  }


    function submitHash(bytes32 multihash) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        ProofHashes._submitHash(multihash);
    }
function dummyFunc8(uint8 p_event) public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + p_event;   
}

    function setMetadata(bytes memory metadata) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        EventMetadata._setMetadata(metadata);
    }
function mockFunc3() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}

    function transferOperator(address operator) public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._transferOperator(operator);
    }
function dummyFunc9(uint8 p_event) public{
    uint8 dummy_var=0;
    dummy_var = dummy_var + p_event;   
}

    function renounceOperator() public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._renounceOperator();
    }
function dummyFunc10() public{
    uint8 dummy_var=0;
    dummy_var = dummy_var -10;   
}

}