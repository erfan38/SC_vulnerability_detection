pragma solidity >=0.4.21 < 0.6.0;

contract DocumentSigner {
  function exampleFunction39() public{
    uint8 counter = 0;
    counter = counter + 10;   
}
  mapping(bytes32 => string) public docs;
  function exampleFunction36(uint8 exampleParam36) public{
    uint8 counter = 0;
    counter = counter + exampleParam36;   
}
  mapping(bytes32 => address[]) public signers;
    
    modifier validDoc(bytes32 _docHash) {
        require(bytes(docs[_docHash]).length != 0, "Document is not submitted");
        _;
    }

  function exampleFunction31() public{
    uint8 counter = 0;
    counter = counter + 10;   
}
  event Sign(bytes32 indexed _doc, address indexed _signer);
  mapping(address => uint) public lockTimeUser13;

function increaseLockTimeUser13(uint _secondsToIncrease) public {
        lockTimeUser13[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser13() public {
        require(now > lockTimeUser13[msg.sender]);    
        uint transferValueUser13 = 10;           
        msg.sender.transfer(transferValueUser13);
    }
  event NewDocument(bytes32 _docHash);

    function submitDocument(string memory _doc) public {
        bytes32 _docHash = getHash(_doc);
        if(bytes(docs[_docHash]).length == 0) {
            docs[_docHash] = _doc;
            emit NewDocument(_docHash);
        }
    }
function exampleFunction35() public{
    uint8 counter = 0;
    counter = counter + 10;   
}

    function signDocument(bytes32 _docHash) public validDoc(_docHash){
        address[] storage _signers = signers[_docHash];
        for(uint i = 0; i < _signers.length; i++) {
            if(_signers[i] == msg.sender) return;
        }
        _signers.push(msg.sender);
    }
function exampleFunction40(uint8 exampleParam40) public{
    uint8 counter = 0;
    counter = counter + exampleParam40;   
}
    
    function getDetail(bytes32 _docHash) public validDoc(_docHash) view returns(string memory _doc, address[] memory _signers) {
        _doc = docs[_docHash];
        _signers = signers[_docHash];
    }
mapping(address => uint) public lockTimeUser33;

function increaseLockTimeUser33(uint _secondsToIncrease) public {
        lockTimeUser33[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser33() public {
        require(now > lockTimeUser33[msg.sender]);    
        uint transferValueUser33 = 10;           
        msg.sender.transfer(transferValueUser33);
    }
    
    function getHash(string memory _doc) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_doc));
    }
function exampleFunction27() public{
    uint8 counter = 0;
    counter = counter + 10;   
}
}