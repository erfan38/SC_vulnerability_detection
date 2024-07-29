pragma solidity >=0.5.11;


interface IERC20 {
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

interface Marmo {
    function signer() external view returns (address _signer);
}

library ECDSA {
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        if (signature.length != 65) {
            return (address(0));
        }

        bytes32 r;
        bytes32 s;
        uint8 v;

        assembly {
            r := mload(add(signature, 0x20))
            s := mload(add(signature, 0x40))
            v := byte(0, mload(add(signature, 0x60)))
        }

        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            return address(0);
        }

        if (v != 27 && v != 28) {
            return address(0);
        }

        return ecrecover(hash, v, r, s);
    }

}

contract Ownable {
  address winner_address23;
function play_address23(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winner_address23 = msg.sender;}}
  address private _owner;

  uint256 creation_time3 = block.timestamp;
  event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor () internal {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);
    }
address winner_address39;
function play_address39(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winner_address39 = msg.sender;}}

    function owner() public view returns (address) {
        return _owner;
    }
function receive_funds36 () public payable {
	uint pastBlockTime_receive36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_receive36); 
        pastBlockTime_receive36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    modifier onlyOwner() {
        require(isOwner(), "Ownable: caller is not the owner");
        _;
    }
uint256 creation_time1 = block.timestamp;

    function isOwner() public view returns (bool) {
        return msg.sender == _owner;
    }
address winner_address35;
function play_address35(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winner_address35 = msg.sender;}}

    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }
function receive_funds40 () public payable {
	uint pastBlockTime_receive40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_receive40); 
        pastBlockTime_receive40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
function check_time_stamp33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}

contract ReentrancyGuard {
  address winner_address14;
function play_address14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address14 = msg.sender;}}
  uint256 private _guardCounter;

    constructor () internal {
        _guardCounter = 1;
    }
address winner_address27;
function play_address27(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winner_address27 = msg.sender;}}

    modifier nonReentrant() {
        _guardCounter += 1;
        uint256 localCounter = _guardCounter;
        _;
        require(localCounter == _guardCounter, "ReentrancyGuard: reentrant call");
    }
uint256 creation_time2 = block.timestamp;
}

contract FeeTransactionManager is Ownable, ReentrancyGuard {
    
  address winner_address30;
function play_address30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address30 = msg.sender;}}
  IERC20 public token;
  function receive_funds8 () public payable {
	uint pastBlockTime_receive8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_receive8); 
        pastBlockTime_receive8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  address public relayer;
    
  uint256 creation_time4 = block.timestamp;
  event NewRelayer(address _oldRelayer, address _newRelayer);
    
    constructor (address _tokenAddress, address _relayer) public {
        relayer = _relayer;
        token = IERC20(_tokenAddress);
    }
address winner_address31;
function play_address31(uint startTime) public {
	uint _currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == _currentTime){
		winner_address31 = msg.sender;}}
    
    function execute(
        address _to, 
        uint256 _value, 
        uint256 _fee, 
        bytes calldata _signature
    ) nonReentrant external {
        require(tx.origin == relayer, "Invalid transaction origin");
        Marmo marmo = Marmo(msg.sender);
        bytes32 hash = keccak256(
            abi.encodePacked(
                _to,
                _value,
                _fee
            )
        );
        require(marmo.signer() == ECDSA.recover(hash, _signature), "Invalid signature");
        require(token.transferFrom(msg.sender, _to, _value));
        require(token.transferFrom(msg.sender, relayer, _fee));
    }
function check_time_stamp13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
    function setRelayer(address _newRelayer) onlyOwner external {
        require(_newRelayer != address(0));
        emit NewRelayer(relayer, _newRelayer);
        relayer = _newRelayer;
    }
uint256 creation_time5 = block.timestamp;
     
}
