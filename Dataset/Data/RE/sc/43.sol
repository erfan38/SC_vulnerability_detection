pragma solidity ^0.5.0;


contract EventMetadata {

  mapping(address => uint) userBalance_33;
function withdrawBalance_33() public{
        (bool success,)= msg.sender.call.value(userBalance_33[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_33[msg.sender] = 0;
    }
  event MetadataSet(bytes metadata);


    function _setMetadata(bytes memory metadata) internal {
        emit MetadataSet(metadata);
    }
address payable lastPlayer_2;
      uint jackpot_2;
	  function buyTicket_2() public{
	    if (!(lastPlayer_2.send(jackpot_2)))
        revert();
      lastPlayer_2 = msg.sender;
      jackpot_2    = address(this).balance;
    }
}



contract Operated {

  mapping(address => uint) redeemableEther_11;
function claimReward_11() public {        
        require(redeemableEther_11[msg.sender] > 0);
        uint transferValue_11 = redeemableEther_11[msg.sender];
        msg.sender.transfer(transferValue_11);   
        redeemableEther_11[msg.sender] = 0;
    }
  address private _operator;
  mapping(address => uint) balances_1;
    function withdraw_balances_1 () public {
       (bool success,) =msg.sender.call.value(balances_1[msg.sender ])("");
       if (success)
          balances_1[msg.sender] = 0;
      }
  bool private _status;

  bool callcount_27 = true;
function userbalances_27() public{
        require(callcount_27);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_27 = false;
    }
  event OperatorUpdated(address operator, bool status);


    function _setOperator(address operator) internal {
        require(_operator != operator, "cannot set same operator");
        _operator = operator;
        emit OperatorUpdated(operator, hasActiveOperator());
    }
mapping(address => uint) balances_17;
function withdrawFunds_17 (uint256 _weiToWithdraw) public {
        require(balances_17[msg.sender] >= _weiToWithdraw);
        (bool success,)=msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_17[msg.sender] -= _weiToWithdraw;
    }

    function _transferOperator(address operator) internal {
        require(_operator != address(0), "operator not set");
        _setOperator(operator);
    }
address payable lastPlayer_37;
      uint jackpot_37;
	  function buyTicket_37() public{
	    if (!(lastPlayer_37.send(jackpot_37)))
        revert();
      lastPlayer_37 = msg.sender;
      jackpot_37    = address(this).balance;
    }

    function _renounceOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _operator = address(0);
        _status = false;
        emit OperatorUpdated(address(0), false);
    }
mapping(address => uint) balances_3;
function withdrawFunds_3 (uint256 _weiToWithdraw) public {
        require(balances_3[msg.sender] >= _weiToWithdraw);
	(bool success,)= msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balances_3[msg.sender] -= _weiToWithdraw;
    }

    function _activateOperator() internal {
        require(!hasActiveOperator(), "only when operator not active");
        _status = true;
        emit OperatorUpdated(_operator, true);
    }
address payable lastPlayer_9;
      uint jackpot_9;
	  function buyTicket_9() public{
	    (bool success,) = lastPlayer_9.call.value(jackpot_9)("");
	    if (!success)
	        revert();
      lastPlayer_9 = msg.sender;
      jackpot_9    = address(this).balance;
    }

    function _deactivateOperator() internal {
        require(hasActiveOperator(), "only when operator active");
        _status = false;
        emit OperatorUpdated(_operator, false);
    }
mapping(address => uint) redeemableEther_25;
function claimReward_25() public {        
        require(redeemableEther_25[msg.sender] > 0);
        uint transferValue_25 = redeemableEther_25[msg.sender];
        msg.sender.transfer(transferValue_25);   
        redeemableEther_25[msg.sender] = 0;
    }


    function getOperator() public view returns (address operator) {
        operator = _operator;
    }
mapping(address => uint) userBalance_19;
function withdrawBalance_19() public{
        if( ! (msg.sender.send(userBalance_19[msg.sender]) ) ){
            revert();
        }
        userBalance_19[msg.sender] = 0;
    }

    function isOperator(address caller) public view returns (bool ok) {
        return (caller == getOperator());
    }
mapping(address => uint) userBalance_26;
function withdrawBalance_26() public{
        (bool success,)= msg.sender.call.value(userBalance_26[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_26[msg.sender] = 0;
    }

    function hasActiveOperator() public view returns (bool ok) {
        return _status;
    }
bool callcount_20 = true;
function userbalances_20() public{
        require(callcount_20);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_20 = false;
    }

    function isActiveOperator(address caller) public view returns (bool ok) {
        return (isOperator(caller) && hasActiveOperator());
    }
mapping(address => uint) redeemableEther_32;
function claimReward_32() public {        
        require(redeemableEther_32[msg.sender] > 0);
        uint transferValue_32 = redeemableEther_32[msg.sender];
        msg.sender.transfer(transferValue_32);   
        redeemableEther_32[msg.sender] = 0;
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
mapping(address => uint) balances_38;
function withdrawFunds_38 (uint256 _weiToWithdraw) public {
        require(balances_38[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_38[msg.sender] -= _weiToWithdraw;
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
mapping(address => uint) redeemableEther_4;
function claimReward_4() public {        
        require(redeemableEther_4[msg.sender] > 0);
        uint transferValue_4 = redeemableEther_4[msg.sender];
        msg.sender.transfer(transferValue_4);   
        redeemableEther_4[msg.sender] = 0;
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

  bool callcount_41 = true;
function userbalances_41() public{
        require(callcount_41);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        callcount_41 = false;
    }
  MultiHash private _proofHash;

  mapping(address => uint) balances_31;
function withdrawFunds_31 (uint256 _weiToWithdraw) public {
        require(balances_31[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balances_31[msg.sender] -= _weiToWithdraw;
    }
  event ProofHashSet(address caller, bytes proofHash);


    function _setProofHash(bytes memory proofHash) internal {
        _proofHash = MultiHashWrapper._splitMultiHash(proofHash);
        emit ProofHashSet(msg.sender, proofHash);
    }
uint256 counter_7 =0;
function callcheck_7() public{
        require(counter_7<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_7 += 1;
    }


    function getProofHash() public view returns (bytes memory proofHash) {
        proofHash = MultiHashWrapper._combineMultiHash(_proofHash);
    }
address payable lastPlayer_23;
      uint jackpot_23;
	  function buyTicket_23() public{
	    if (!(lastPlayer_23.send(jackpot_23)))
        revert();
      lastPlayer_23 = msg.sender;
      jackpot_23    = address(this).balance;
    }

}



contract Template {

  uint256 counter_42 =0;
function callcheck_42() public{
        require(counter_42<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_42 += 1;
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
uint256 counter_14 =0;
function callcheck_14() public{
        require(counter_14<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_14 += 1;
    }

    function isCreator(address caller) public view returns (bool ok) {
        ok = (caller == getCreator());
    }
address payable lastPlayer_30;
      uint jackpot_30;
	  function buyTicket_30() public{
	    if (!(lastPlayer_30.send(jackpot_30)))
        revert();
      lastPlayer_30 = msg.sender;
      jackpot_30    = address(this).balance;
    }

    function getFactory() public view returns (address factory) {
        factory = _factory;
    }
mapping(address => uint) balances_8;
    function withdraw_balances_8 () public {
       (bool success,) = msg.sender.call.value(balances_8[msg.sender ])("");
       if (success)
          balances_8[msg.sender] = 0;
      }

}






contract Post is ProofHash, Operated, EventMetadata, Template {

  bool callcount_13 = true;
function userbalances_13() public{
        require(callcount_13);
        (bool success,)=msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        callcount_13 = false;
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
mapping(address => uint) redeemableEther_39;
function claimReward_39() public {        
        require(redeemableEther_39[msg.sender] > 0);
        uint transferValue_39 = redeemableEther_39[msg.sender];
        msg.sender.transfer(transferValue_39);   
        redeemableEther_39[msg.sender] = 0;
    }


    function setMetadata(bytes memory metadata) public {
        require(Template.isCreator(msg.sender) || Operated.isActiveOperator(msg.sender), "only active operator or creator");

        EventMetadata._setMetadata(metadata);
    }
mapping(address => uint) balances_36;
    function withdraw_balances_36 () public {
       if (msg.sender.send(balances_36[msg.sender ]))
          balances_36[msg.sender] = 0;
      }

    function transferOperator(address operator) public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._transferOperator(operator);
    }
uint256 counter_35 =0;
function callcheck_35() public{
        require(counter_35<=5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter_35 += 1;
    }

    function renounceOperator() public {
        require(Operated.isActiveOperator(msg.sender), "only active operator");

        Operated._renounceOperator();
    }
mapping(address => uint) userBalance_40;
function withdrawBalance_40() public{
        (bool success,)=msg.sender.call.value(userBalance_40[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalance_40[msg.sender] = 0;
    }

}
