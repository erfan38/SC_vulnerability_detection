pragma solidity ^0.5.7;

interface tokenRecipient { 
    function receiveApproval(address _from, uint256 _value, address _token, bytes calldata _extraData) external; 
}

contract  MD{
  address winner_address23;
function play_winner23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address23 = msg.sender;}}
  string public name;
  address winner_address14;
function play_winner14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address14 = msg.sender;}}
  string public symbol;
  address winner_address30;
function play_winner30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address30 = msg.sender;}}
  uint8 public decimals = 18;
  function receiveFunds() public payable {
	uint pastBlockTime_receiveFunds; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_receiveFunds); 
        pastBlockTime_receiveFunds = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public totalSupply;

  address winner_address39;
function play_winner39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address39 = msg.sender;}}
  mapping (address => uint256) public balanceOf;
  function receiveFundsAgain() public payable {
	uint pastBlockTime_receiveFundsAgain; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_receiveFundsAgain); 
        pastBlockTime_receiveFundsAgain = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  mapping (address => mapping (address => uint256)) public allowance;

  uint256 lastBlockTime = block.timestamp;
  event Transfer(address indexed from, address indexed to, uint256 value);
    
  uint256 lastBlockTimeApproval = block.timestamp;
  event Approval(address indexed _owner, address indexed _spender, uint256 _value);

  uint256 lastBlockTimeBurn = block.timestamp;
  event Burn(address indexed from, uint256 value);

    constructor(
        uint256 initialSupply,
        string memory tokenName,
        string memory tokenSymbol
    ) public {
        totalSupply = initialSupply * 10 ** uint256(decimals);  
        balanceOf[msg.sender] = totalSupply;                
        name = tokenName;                                   
        symbol = tokenSymbol;                               
    }
address winner_address35;
function play_winner35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address35 = msg.sender;}}

    function _transfer(address _from, address _to, uint _value) internal {
        require(_to != address(0x0));
        require(balanceOf[_from] >= _value);
        require(balanceOf[_to] + _value >= balanceOf[_to]);
        uint previousBalances = balanceOf[_from] + balanceOf[_to];
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(_from, _to, _value);
        assert(balanceOf[_from] + balanceOf[_to] == previousBalances);
    }
function receiveFundsFinal() public payable {
	uint pastBlockTime_receiveFundsFinal; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_receiveFundsFinal); 
        pastBlockTime_receiveFundsFinal = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        _transfer(msg.sender, _to, _value);
        return true;
    }
function isTimely() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= allowance[_from][msg.sender]);     
        allowance[_from][msg.sender] -= _value;
        _transfer(_from, _to, _value);
        return true;
    }
address winner_address27;
function play_winner27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address27 = msg.sender;}}

    function approve(address _spender, uint256 _value) public
        returns (bool success) {
        allowance[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
address winner_address31;
function play_winner31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address31 = msg.sender;}}

    function approveAndCall(address _spender, uint256 _value, bytes memory _extraData)
        public
        returns (bool success) {
        tokenRecipient spender = tokenRecipient(_spender);
        if (approve(_spender, _value)) {
            spender.receiveApproval(msg.sender, _value, address(this), _extraData);
            return true;
        }
    }
function isTimelyAgain() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);   
        balanceOf[msg.sender] -= _value;            
        totalSupply -= _value;                      
        emit Burn(msg.sender, _value);
        return true;
    }
uint256 lastBlockValue = block.timestamp;

    function burnFrom(address _from, uint256 _value) public returns (bool success) {
        require(balanceOf[_from] >= _value);                
        require(_value <= allowance[_from][msg.sender]);    
        balanceOf[_from] -= _value;                         
        allowance[_from][msg.sender] -= _value;             
        totalSupply -= _value;                              
        emit Burn(_from, _value);
        return true;
    }
uint256 lastBlockValue1 = block.timestamp;
}