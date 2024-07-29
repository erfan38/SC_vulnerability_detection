pragma solidity ^0.5.0;


contract EventMetadata {

  uint256 initialBlockTime = block.timestamp;
  event MetadataSet(bytes metadata);


    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
function isPastTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}



contract Operated {

  address currentWinner;
function playGame(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		currentWinner = msg.sender;}}
  address private _operator;
  function isPastTimestampCheck() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  bool private _status;

  uint256 initialBlockTimeAgain = block.timestamp;
  event OperatorUpdated(address operator, bool status);


    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
function checkTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function _transferOperator(address operator) internal {
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
address currentGameWinner;
function playCurrentGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		currentGameWinner = msg.sender;}}

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
address anotherCurrentWinner;
function playAnotherGame(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		anotherCurrentWinner = msg.sender;}}

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
function validateTimestamp () public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
function validateAnotherTimestamp () public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
address thirdCurrentWinner;
function playThirdGame(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		thirdCurrentWinner = msg.sender;}}

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
function validateYetAnotherTimestamp () public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
address fourthCurrentWinner;
function playFourthGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		fourthCurrentWinner = msg.sender;}}

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
address fifthCurrentWinner;
function playFifthGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		fifthCurrentWinner = msg.sender;}}

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
address sixthCurrentWinner;
function playSixthGame(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		sixthCurrentWinner = msg.sender;}}

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
address seventhCurrentWinner;
function playSeventhGame(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		seventhCurrentWinner = msg.sender;}}
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

  function isPastTimestampCheckForProof() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  MultiHash private _proofHash;

  uint256 initialBlockTimeProof = block.timestamp;
  event ProofHashSet(address caller, bytes proofHash);


    function _setProofHash(bytes memory proofHash) internal {
        _proofHash = MultiHashWrapper._splitMultiHash(proofHash);
        emit ProofHashSet(msg.sender, proofHash);
    }
function validateProofTimestamp () public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }


    function getProofHash() public view returns (bytes memory proofHash) {
        proofHash = MultiHashWrapper._combineMultiHash(_proofHash);
    }
address eighthCurrentWinner;
function playEighthGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		eighthCurrentWinner = msg.sender;}}

}



contract Template {

  address anotherWinner;
function playTemplateGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		anotherWinner = msg.sender;}}
  address private _factory;


    modifier initializeTemplate() {
        _factory = msg.sender;

        uint32 codeSize;
        assembly { codeSize := extcodesize(address) }
        require(codeSize == 0, "must be called within contract constructor");
        _;
    }
uint256 initialBlockTimeTemplate = block.timestamp;


    function getCreator() public view returns (address creator) {
        creator = iFactory(_factory).getInstanceCreator(address(this));
    }
function validateTemplateTimestamp () public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
    }
address currentTemplateWinner;
function playCurrentTemplateGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		currentTemplateWinner = msg.sender;}}

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
function validateTemplateTimestampCheck () public payable {
	uint pastBlockTime; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime); 
        pastBlockTime = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
}







contract Post is ProofHash, Operated, EventMetadata, Template {

  uint256 initialBlockTimePost = block.timestamp;
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
function isPostPastTimestamp() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }


    function setMetadata(bytes memory metadata) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        EventMetadata._setMetadata(metadata);
    }
address ninthCurrentWinner;
function playNinthGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		ninthCurrentWinner = msg.sender;}}

    function transferOperator(address operator) public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._transferOperator(operator);
    }
address tenthCurrentWinner;
function playTenthGame(uint startTime) public {
	uint currentBlockTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentBlockTime){
		tenthCurrentWinner = msg.sender;}}

    function renounceOperator() public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._renounceOperator();
    }
function isPostPastTimestampCheck() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

}