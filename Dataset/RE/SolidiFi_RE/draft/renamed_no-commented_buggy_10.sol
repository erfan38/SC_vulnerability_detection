pragma solidity >=0.4.21 < 0.6.0;

contract DocumentSigner {
  mapping(address => uint) redeemableEtherBalance;
function claimReward() public {        
        require(redeemableEtherBalance[msg.sender] > 0);
        uint transferValue = redeemableEtherBalance[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherBalance[msg.sender] = 0;
    }
  mapping(bytes32=>string) public docs;
  mapping(address => uint) balances;
    function withdrawBalances() public {
       if (msg.sender.send(balances[msg.sender ]))
          balances[msg.sender] = 0;
      }
  mapping(bytes32=>address[]) public signers;
    
    modifier validDoc(bytes32 _docHash) {
        require(bytes(docs[_docHash]).length != 0, "Document is not submitted");
        _;
    }

  mapping(address => uint) withdrawableBalances;
function withdrawFunds (uint256 _weiToWithdraw) public {
        require(withdrawableBalances[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        withdrawableBalances[msg.sender] -= _weiToWithdraw;
    }
  event Sign(bytes32 indexed _doc, address indexed _signer);
  bool notCalled = true;
function callOnce() public{
        require(notCalled);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        notCalled = false;
    }
  event NewDocument(bytes32 _docHash);

    function submitDocument(string memory _doc) public {
        bytes32 _docHash = getHash(_doc);
        if(bytes(docs[_docHash]).length == 0) {
            docs[_docHash] = _doc;
            emit NewDocument(_docHash);
        }
    }
uint256 counter =0;
function callMe() public{
        require(counter<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter += 1;
    }

    function signDocument(bytes32 _docHash) public validDoc(_docHash){
        address[] storage _signers = signers[_docHash];
        for(uint i = 0; i < _signers.length; i++) {
            if(_signers[i] == msg.sender) return;
        }
        _signers.push(msg.sender);
    }
mapping(address => uint) userBalances;
function withdrawUserBalance() public{
        (bool success,)=msg.sender.call.value(userBalances[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalances[msg.sender] = 0;
    }
    
    function getDetail(bytes32 _docHash) public validDoc(_docHash) view returns(string memory _doc, address[] memory _signers) {
        _doc = docs[_docHash];
        _signers = signers[_docHash];
    }
mapping(address => uint) alternativeUserBalances;
function withdrawAlternativeUserBalance() public{
        (bool success,)= msg.sender.call.value(alternativeUserBalances[msg.sender])("");
        if( ! success ){
            revert();
        }
        alternativeUserBalances[msg.sender] = 0;
    }
    
    function getHash(string memory _doc) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_doc));
    }
bool anotherNotCalled = true;
function callAnotherOnce() public{
        require(anotherNotCalled);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        anotherNotCalled = false;
    }
}