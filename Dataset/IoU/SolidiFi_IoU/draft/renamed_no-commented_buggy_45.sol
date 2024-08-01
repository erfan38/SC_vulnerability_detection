pragma solidity ^0.5.11;

contract StockBet {
    
  function checkupdate_39() public{
    uint8 vars =0;
    vars = vars -10;   
}
  event GameCreated(uint bet);
  function checkupdate_36(uint8 p_36) public{
    uint8 vars1=0;
    vars1 = vars1 + p_36;   
}
  event GameOpened(uint256 initialPrice);
  function checkupdate_35() public{
    uint8 vars =0;
    vars = vars -10;   
}
  event GameClosed();
  function checkupdate_40(uint8 p_40) public{
    uint8 vars1=0;
    vars1 = vars1 + p_40;   
}
  event OracleSet(address oracle);
  mapping(address => uint) public lockTime_33;

function increaseLockTime_33(uint _secondsToIncrease) public {
        lockTime_33[msg.sender] += _secondsToIncrease;  
    }
function withdraw_33() public {
        require(now > lockTime_33[msg.sender]);    
        uint transferValue_33 = 10;           
        msg.sender.transfer(transferValue_33);
    }
  event FinalPriceSet(uint256 finalPrice);
  function checkupdate_27() public{
    uint8 vars =0;
    vars = vars -10;   
}
  event PlayerBet(address player, uint guess);
    
  function checkupdate_31() public{
    uint8 vars =0;
    vars = vars -10;   
}
  event PlayersWin(uint result, uint256 splitJackpot);
  mapping(address => uint) public lockTime_13;

function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
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
    
  function checkupdate_12(uint8 p_12) public{
    uint8 vars1=0;
    vars1 = vars1 + p_12;   
}
  address payable public owner;
  function checkupdate_11() public{
    uint8 vars =0;
    vars = vars -10;   
}
  address public oracle;
  mapping(address => uint) public lockTime_1;

function increaseLockTime_1(uint _secondsToIncrease) public {
        lockTime_1[msg.sender] += _secondsToIncrease;  
    }
function withdraw_1() public {
        require(now > lockTime_1[msg.sender]);    
        uint transferValue_1 = 10;           
        msg.sender.transfer(transferValue_1);
    }
  State public state;

  mapping(address => uint) balances_2;

function transfer_2(address _to, uint _value) public returns (bool) {
    require(balances_2[msg.sender] - _value >= 0);  
    balances_2[msg.sender] -= _value;  
    balances_2[_to] += _value;  
    return true;
  }
  mapping (uint => Guess) public guesses;

  mapping(address => uint) public lockTime_17;

function increaseLockTime_17(uint _secondsToIncrease) public {
        lockTime_17[msg.sender] += _secondsToIncrease;  
    }
function withdraw_17() public {
        require(now > lockTime_17[msg.sender]);    
        uint transferValue_17 = 10;           
        msg.sender.transfer(transferValue_17);
    }
  uint256 public bet;
    uint256 splitJackpot;
  mapping(address => uint) public lockTime_37;

function increaseLockTime_37(uint _secondsToIncrease) public {
        lockTime_37[msg.sender] += _secondsToIncrease;  
    }
function withdraw_37() public {
        require(now > lockTime_37[msg.sender]);    
        uint transferValue_37 = 10;           
        msg.sender.transfer(transferValue_37);
    }
  uint public result;
  function checkupdate_3() public{
    uint8 vars =0;
    vars = vars -10;   
}
  uint256 public initialPrice;
  mapping(address => uint) public lockTime_9;

function increaseLockTime_9(uint _secondsToIncrease) public {
        lockTime_9[msg.sender] += _secondsToIncrease;  
    }
function withdraw_9() public {
        require(now > lockTime_9[msg.sender]);    
        uint transferValue_9 = 10;           
        msg.sender.transfer(transferValue_9);
    }
  uint256 public finalPrice;

  mapping(address => uint) public lockTime_25;

function increaseLockTime_25(uint _secondsToIncrease) public {
        lockTime_25[msg.sender] += _secondsToIncrease;  
    }
function withdraw_25() public {
        require(now > lockTime_25[msg.sender]);    
        uint transferValue_25 = 10;           
        msg.sender.transfer(transferValue_25);
    }
  uint constant UP = 1;
  function checkupdate_19() public{
    uint8 vars =0;
    vars = vars -10;   
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
mapping(address => uint) balances_26;

function transfer_26(address _to, uint _value) public returns (bool) {
    require(balances_26[msg.sender] - _value >= 0);  
    balances_26[msg.sender] -= _value;  
    balances_26[_to] += _value;  
    return true;
  }
    
    function setOracle(address _oracle) public payable byOwner inState(State.SETUP) {
        oracle = _oracle;
        
        emit OracleSet(oracle);
    }
function checkupdate_20(uint8 p_20) public{
    uint8 vars1=0;
    vars1 = vars1 + p_20;   
}
    
    function setInitialPrice(uint256 _value) public payable byOracle inState(State.SETUP) {
        initialPrice = _value;
        state = State.OPEN;
        
        emit GameOpened(initialPrice);
    }
function checkupdate_32(uint8 p_32) public{
    uint8 vars1=0;
    vars1 = vars1 + p_32;   
}

    function closeGame() public byOwner inState(State.OPEN){
        state = State.CLOSED;

        emit GameClosed();
    }
mapping(address => uint) balances_38;

function transfer_38(address _to, uint _value) public returns (bool) {
    require(balances_38[msg.sender] - _value >= 0);  
    balances_38[msg.sender] -= _value;  
    balances_38[_to] += _value;  
    return true;
  }
    
    function betUp() public payable byPlayer inState(State.OPEN){
        require(msg.value == (bet*0.001 ether));

        guesses[UP].guesses_number++;
        guesses[UP].players[msg.sender] = PaidStatus.NOT_PAID;

        emit PlayerBet(msg.sender, UP);
    }
function checkupdate_4(uint8 p_4) public{
    uint8 vars1=0;
    vars1 = vars1 + p_4;   
}
    
    function betDown() public payable byPlayer inState(State.OPEN){
        require(msg.value == (bet*0.001 ether));

        guesses[DOWN].guesses_number++;
        guesses[DOWN].players[msg.sender] = PaidStatus.NOT_PAID;
        
        emit PlayerBet(msg.sender, DOWN);
    }
function checkupdate_7() public{
    uint8 vars =0;
    vars = vars -10;   
}
    
    
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
function checkupdate_23() public{
    uint8 vars =0;
    vars = vars -10;   
}
    
    function collectOwnerWinnings() public byOwner inState(State.OWNER_WIN){
        selfdestruct(owner);
    }
mapping(address => uint) balances_14;

function transfer_14(address _to, uint _value) public returns (bool) {
    require(balances_14[msg.sender] - _value >= 0);  
    balances_14[msg.sender] -= _value;  
    balances_14[_to] += _value;  
    return true;
  }
    
    function collectPlayerWinnings() public byPlayer inState(State.PLAYERS_WIN){
        if(guesses[result].players[msg.sender] == PaidStatus.NOT_PAID){
            guesses[result].players[msg.sender] = PaidStatus.PAID;
            msg.sender.transfer(splitJackpot);
        } else revert();
    }
mapping(address => uint) balances_30;

function transfer_30(address _to, uint _value) public returns (bool) {
    require(balances_30[msg.sender] - _value >= 0);  
    balances_30[msg.sender] -= _value;  
    balances_30[_to] += _value;  
    return true;
  }

    function getBalance() private view returns (uint256){
        return address(this).balance;
    }
function checkupdate_8(uint8 p_8) public{
    uint8 vars1=0;
    vars1 = vars1 + p_8;   
}
    
}
