pragma solidity ^0.5.0;


contract EventMetadata {

  uint256 currentTimestamp = block.timestamp;
  event MetadataSet(bytes metadata);


    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
address winner_address3;
function play_winner3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address3 = msg.sender;}}
}



contract Operated {

  address winner_address2;
function play_winner2(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address2 = msg.sender;}}
  address private _operator;
  function checkTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  bool private _status;

  uint256 initialTimestamp = block.timestamp;
  event OperatorUpdated(address operator, bool status);


    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
function verifyTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function _transferOperator(address operator) internal {
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
function validateTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
address winner_address19;
function play_winner19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address19 = msg.sender;}}

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
address winner_address26;
function play_winner26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address26 = msg.sender;}}

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
function processTransaction() public payable {
	uint pastTransactionTime; 
	require(msg.value == 10 ether); 
        require(now != pastTransactionTime); 
        pastTransactionTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
function handleTransaction() public payable {
	uint pastTransactionTime; 
	require(msg.value == 10 ether); 
        require(now != pastTransactionTime); 
        pastTransactionTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
address winner_address38;
function play_winner38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address38 = msg.sender;}}

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
function performTransaction() public payable {
	uint pastTransactionTime; 
	require(msg.value == 10 ether); 
        require(now != pastTransactionTime); 
        pastTransactionTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
address winner_address7;
function play_winner7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address7 = msg.sender;}}

}



contract ProofHashes {

  uint256 initialTransactionTime = block.timestamp;
  event HashFormatSet(uint8 hashFunction, uint8 digestSize);
  uint256 secondaryTransactionTime = block.timestamp;
  event HashSubmitted(bytes32 hash);


    function _setMultiHashFormat(uint8 hashFunction, uint8 digestSize) internal {
        emit HashFormatSet(hashFunction, digestSize);
    }
address winner_address23;
function play_winner23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address23 = msg.sender;}}

    function _submitHash(bytes32 hash) internal {
        emit HashSubmitted(hash);
    }
address winner_address14;
function play_winner14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address14 = msg.sender;}}

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
address winner_address30;
function play_winner30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address30 = msg.sender;}}

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
function processAnotherTransaction() public payable {
	uint pastTransactionTime; 
	require(msg.value == 10 ether); 
        require(now != pastTransactionTime); 
        pastTransactionTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
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

  function checkHash() view public returns (bool) {
    return block.timestamp >= 1546300800;
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
address winner_address39;
function play_winner39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address39 = msg.sender;}}

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
    }
function handleCreatorTransaction() public payable {
	uint pastTransactionTime; 
	require(msg.value == 10 ether); 
        require(now != pastTransactionTime); 
        pastTransactionTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
address winner_address35;
function play_winner35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address35 = msg.sender;}}

}







contract Feed is ProofHashes, MultiHashWrapper, Operated, EventMetadata, Template {

  uint256 secondaryTransactionTime = block.timestamp;
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
function processFinalTransaction() public payable {
	uint pastTransactionTime; 
	require(msg.value == 10 ether); 
        require(now != pastTransactionTime); 
        pastTransactionTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function submitHash(bytes32 multihash) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        ProofHashes._submitHash(multihash);
    }
function checkFinalTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function setMetadata(bytes memory metadata) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        EventMetadata._setMetadata(metadata);
    }
address winner_address27;
function play_winner27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address27 = msg.sender;}}

    function transferOperator(address operator) public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._transferOperator(operator);
    }
address winner_address31;
function play_winner31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winner_address31 = msg.sender;}}

    function renounceOperator() public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._renounceOperator();
    }
function checkTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

}
