pragma solidity ^0.5.11;

contract StockBet {
    
  address winnerAddress27;
function playGame27(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress27 = msg.sender;}}
  event GameCreated(uint bet);
  address winnerAddress31;
function playGame31(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress31 = msg.sender;}}
  event GameOpened(uint256 initialPrice);
  function checkTime13() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  event GameClosed();
  uint256 initialTimestamp = block.timestamp;
  event OracleSet(address oracle);
  uint256 creationTimestamp = block.timestamp;
  event FinalPriceSet(uint256 finalPrice);
  uint256 secondTimestamp = block.timestamp;
  event PlayerBet(address player, uint guess);
    
  uint256 thirdTimestamp = block.timestamp;
  event PlayersWin(uint result, uint256 splitJackpot);
  uint256 fourthTimestamp = block.timestamp;
  event OwnerWins(address owner);
    
    enum State {
        SETUP, PRICE_SET, OPEN, CLOSED, PLAYERS_WIN, OWNER_WIN
    }

    enum PaidStatus {
        UNDEFINED,
        NOT_PAID,
        PAID
    }
    
    struct Guess {
        mapping (address => PaidStatus) players;
        uint guesses_number;
    }
    
  function checkTime37() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  address payable public owner;
  address winnerAddress3;
function playGame3(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress3 = msg.sender;}}
  address public oracle;
  function checkTime9() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  State public state;

  function checkTime25() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
  mapping (uint => Guess) public guesses;

  address winnerAddress19;
function playGame19(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress19 = msg.sender;}}
  uint256 public bet;
    uint256 splitJackpot;
  address winnerAddress26;
function playGame26(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress26 = msg.sender;}}
  uint public result;
  function processPayment20() public payable {
	uint pastBlockTime20; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime20); 
        pastBlockTime20 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public initialPrice;
  function processPayment32() public payable {
	uint pastBlockTime32; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime32); 
        pastBlockTime32 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public finalPrice;

  address winnerAddress38;
function playGame38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress38 = msg.sender;}}
  uint constant UP = 1;
  function processPayment4() public payable {
	uint pastBlockTime4; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime4); 
        pastBlockTime4 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint constant DOWN = 0;
    
    
    modifier byPlayer(){
        require(msg.sender != oracle);
        _;
    }
    
    modifier byOwner(){
        require(msg.sender == owner);
        _;
    }
    
    modifier byOracle(){
        require(msg.sender == oracle);
        _;
    }
    
    modifier inState(State expected) {
        require(state == expected);
        _;
    }

    
    constructor(uint256 _bet) public {
        require(_bet > 0);
        
        owner = msg.sender;
        state = State.SETUP;
        bet = _bet;
        
        emit GameCreated(bet);
    }
address winnerAddress7;
function playGame7(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress7 = msg.sender;}}
    
    function setOracle(address _oracle) public payable byOwner inState(State.SETUP) {
        oracle = _oracle;
        
        emit OracleSet(oracle);
    }
address winnerAddress23;
function playGame23(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress23 = msg.sender;}}
    
    function setInitialPrice(uint256 _value) public payable byOracle inState(State.SETUP) {
        initialPrice = _value;
        state = State.OPEN;
        
        emit GameOpened(initialPrice);
    }
address winnerAddress14;
function playGame14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress14 = msg.sender;}}

    function closeGame() public byOwner inState(State.OPEN){
        state = State.CLOSED;

        emit GameClosed();
    }
address winnerAddress30;
function playGame30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winnerAddress30 = msg.sender;}}
    
    function betUp() public payable byPlayer inState(State.OPEN){
        require(msg.value == (bet*0.001 ether));

        guesses[UP].guesses_number++;
        guesses[UP].players[msg.sender] = PaidStatus.NOT_PAID;

        emit PlayerBet(msg.sender, UP);
    }
function processPayment8() public payable {
	uint pastBlockTime8; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime8); 
        pastBlockTime8 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function betDown() public payable byPlayer inState(State.OPEN){
        require(msg.value == (bet*0.001 ether));

        guesses[DOWN].guesses_number++;
        guesses[DOWN].players[msg.sender] = PaidStatus.NOT_PAID;
        
        emit PlayerBet(msg.sender, DOWN);
    }
address winnerAddress39;
function playGame39(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress39 = msg.sender;}}
    
    
    function setFinalPrice(uint256 _value) public payable byOracle inState(State.CLOSED) {
        
        finalPrice = _value;
        
        emit FinalPriceSet(finalPrice);
        
        if(finalPrice > initialPrice){
            result = UP;
        }else{
            result = DOWN;
        }
        
        
        if(guesses[result].guesses_number > 0){
            state = State.PLAYERS_WIN;
            splitJackpot = getBalance()/guesses[result].guesses_number;
            emit PlayersWin(result, splitJackpot);
        }else{
            state = State.OWNER_WIN;
            emit OwnerWins(owner);
        }
    }
function processPayment36() public payable {
	uint pastBlockTime36; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime36); 
        pastBlockTime36 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    
    function collectOwnerWinnings() public byOwner inState(State.OWNER_WIN){
        selfdestruct(owner);
    }
address winnerAddress35;
function playGame35(uint startTime) public {
	uint currentTime = block.timestamp;
	if (startTime + (5 * 1 days) == currentTime){
		winnerAddress35 = msg.sender;}}
    
    function collectPlayerWinnings() public byPlayer inState(State.PLAYERS_WIN){
        if(guesses[result].players[msg.sender] == PaidStatus.NOT_PAID){
            guesses[result].players[msg.sender] = PaidStatus.PAID;
            msg.sender.transfer(splitJackpot);
        } else revert();
    }
function processPayment40() public payable {
	uint pastBlockTime40; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime40); 
        pastBlockTime40 = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function getBalance() private view returns (uint256){
        return address(this).balance;
    }
function checkTime33() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    
}
