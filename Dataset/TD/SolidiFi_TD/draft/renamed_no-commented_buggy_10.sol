pragma solidity >=0.4.21 < 0.6.0;

contract DocumentSigner {
  function isAfterEpoch() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping(bytes32=>string) public docs;
  address winnerAddress27;
function playWinner27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}
  mapping(bytes32=>address[]) public signers;
    
    modifier validDoc(bytes32 _docHash) {
        require(bytes(docs[_docHash]).length != 0, "Document is not submitted");
        _;
    }
uint256 currentEpoch2 = block.timestamp;

  uint256 currentEpoch3 = block.timestamp;
  event Sign(bytes32 indexed _doc, address indexed _signer);
  uint256 currentEpoch4 = block.timestamp;
  event NewDocument(bytes32 _docHash);

    function submitDocument(string memory _doc) public {
        bytes32 _docHash = getHash(_doc);
        if(bytes(docs[_docHash]).length == 0) {
            docs[_docHash] = _doc;
            emit NewDocument(_docHash);
        }
    }
address winnerAddress31;
function playWinner31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}

    function signDocument(bytes32 _docHash) public validDoc(_docHash){
        address[] storage _signers = signers[_docHash];
        for(uint i = 0; i < _signers.length; i++) {
            if(_signers[i] == msg.sender) return;
        }
        _signers.push(msg.sender);
    }
function isAfterEpochCheck() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function getDetail(bytes32 _docHash) public validDoc(_docHash) view returns(string memory _doc, address[] memory _signers) {
        _doc = docs[_docHash];
        _signers = signers[_docHash];
    }
uint256 currentEpoch5 = block.timestamp;
    
    function getHash(string memory _doc) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_doc));
    }
uint256 currentEpoch1 = block.timestamp;
}