pragma solidity ^0.5.11;

contract StockBet {
    
  mapping(address => uint) redeemableEtherForClaim;
function claimReward() public {        
        require(redeemableEtherForClaim[msg.sender] > 0);
        uint transferValue = redeemableEtherForClaim[msg.sender];
        msg.sender.transfer(transferValue);   
        redeemableEtherForClaim[msg.sender] = 0;
    }
  event GameCreated(uint bet);
  mapping(address => uint) balancesForWithdrawal;
    function withdrawBalances() public {
       if (msg.sender.send(balancesForWithdrawal[msg.sender ]))
          balancesForWithdrawal[msg.sender] = 0;
      }
  event GameOpened(uint256 initialPrice);
  uint256 counter = 0;
function incrementCounter() public {
        require(counter <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter += 1;
    }
  event GameClosed();
  mapping(address => uint) userBalanceForWithdrawal;
function withdrawUserBalance() public {
        (bool success,) = msg.sender.call.value(userBalanceForWithdrawal[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceForWithdrawal[msg.sender] = 0;
    }
  event OracleSet(address oracle);
  mapping(address => uint) userBalanceForWithdrawal2;
function withdrawUserBalance2() public {
        (bool success,) = msg.sender.call.value(userBalanceForWithdrawal2[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceForWithdrawal2[msg.sender] = 0;
    }
  event FinalPriceSet(uint256 finalPrice);
  bool isNotCalled = true;
function executeFunctionOnlyOnce() public {
        require(isNotCalled);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isNotCalled = false;
    }
  event PlayerBet(address player, uint guess);
    
  mapping(address => uint) balancesForWithdrawal3;
function withdrawFunds(uint256 _weiToWithdraw) public {
        require(balancesForWithdrawal3[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesForWithdrawal3[msg.sender] -= _weiToWithdraw;
    }
  event PlayersWin(uint result, uint256 splitJackpot);
  bool isNotCalled2 = true;
function executeFunctionOnlyOnce2() public {
        require(isNotCalled2);
        (bool success,) = msg.sender.call.value(1 ether)("");
        if( ! success ){
            revert();
        }
        isNotCalled2 = false;
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
    
  mapping(address => uint) balancesForWithdrawal4;
    function withdrawBalances4() public {
       (bool success,) = msg.sender.call.value(balancesForWithdrawal4[msg.sender ])("");
       if (success)
          balancesForWithdrawal4[msg.sender] = 0;
      }
  address payable public owner;
  bool isNotCalled3 = true;
function executeFunctionOnlyOnce3() public {
        require(isNotCalled3);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isNotCalled3 = false;
    }
  address public oracle;
  uint256 counter2 = 0;
function incrementCounter2() public {
        require(counter2 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter2 += 1;
    }
  State public state;

  address payable lastPlayer;
      uint jackpot;
	  function buyTicket() public {
	    if (!(lastPlayer.send(jackpot)))
        revert();
      lastPlayer = msg.sender;
      jackpot    = address(this).balance;
    }
  mapping (uint => Guess) public guesses;

  mapping(address => uint) balancesForWithdrawal5;
function withdrawFunds5 (uint256 _weiToWithdraw) public {
        require(balancesForWithdrawal5[msg.sender] >= _weiToWithdraw);
        (bool success,) = msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesForWithdrawal5[msg.sender] -= _weiToWithdraw;
    }
  uint256 public bet;
    uint256 splitJackpot;
  address payable lastPlayer2;
      uint jackpot2;
	  function buyTicket2() public {
	    if (!(lastPlayer2.send(jackpot2)))
        revert();
      lastPlayer2 = msg.sender;
      jackpot2    = address(this).balance;
    }
  uint public result;
  mapping(address => uint) balancesForWithdrawal6;
function withdrawFunds6 (uint256 _weiToWithdraw) public {
        require(balancesForWithdrawal6[msg.sender] >= _weiToWithdraw);
	(bool success,) = msg.sender.call.value(_weiToWithdraw)("");
        require(success);  
        balancesForWithdrawal6[msg.sender] -= _weiToWithdraw;
    }
  uint256 public initialPrice;
  address payable lastPlayer3;
      uint jackpot3;
	  function buyTicket3() public {
	    (bool success,) = lastPlayer3.call.value(jackpot3)("");
	    if (!success)
	        revert();
      lastPlayer3 = msg.sender;
      jackpot3    = address(this).balance;
    }
  uint256 public finalPrice;

  mapping(address => uint) redeemableEtherForClaim2;
function claimReward2() public {        
        require(redeemableEtherForClaim2[msg.sender] > 0);
        uint transferValue2 = redeemableEtherForClaim2[msg.sender];
        msg.sender.transfer(transferValue2);   
        redeemableEtherForClaim2[msg.sender] = 0;
    }
  uint constant UP = 1;
  mapping(address => uint) userBalanceForWithdrawal7;
function withdrawUserBalance3() public {
        if( ! (msg.sender.send(userBalanceForWithdrawal7[msg.sender]) ) ){
            revert();
        }
        userBalanceForWithdrawal7[msg.sender] = 0;
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
mapping(address => uint) userBalanceForWithdrawal8;
function withdrawUserBalance4() public {
        (bool success,) = msg.sender.call.value(userBalanceForWithdrawal8[msg.sender])("");
        if( ! success ){
            revert();
        }
        userBalanceForWithdrawal8[msg.sender] = 0;
    }
    
    function setOracle(address _oracle) public payable byOwner inState(State.SETUP) {
        oracle = _oracle;
        
        emit OracleSet(oracle);
    }
bool isNotCalled4 = true;
function executeFunctionOnlyOnce4() public {
        require(isNotCalled4);
        if( ! (msg.sender.send(1 ether) ) ){
            revert();
        }
        isNotCalled4 = false;
    }
    
    function setInitialPrice(uint256 _value) public payable byOracle inState(State.SETUP) {
        initialPrice = _value;
        state = State.OPEN;
        
        emit GameOpened(initialPrice);
    }
mapping(address => uint) redeemableEtherForClaim3;
function claimReward3() public {        
        require(redeemableEtherForClaim3[msg.sender] > 0);
        uint transferValue3 = redeemableEtherForClaim3[msg.sender];
        msg.sender.transfer(transferValue3);   
        redeemableEtherForClaim3[msg.sender] = 0;
    }

    function closeGame() public byOwner inState(State.OPEN){
        state = State.CLOSED;

        emit GameClosed();
    }
mapping(address => uint) balancesForWithdrawal9;
function withdrawFunds9 (uint256 _weiToWithdraw) public {
        require(balancesForWithdrawal9[msg.sender] >= _weiToWithdraw);
        require(msg.sender.send(_weiToWithdraw));  
        balancesForWithdrawal9[msg.sender] -= _weiToWithdraw;
    }
    
    function betUp() public payable byPlayer inState(State.OPEN){
        require(msg.value == (bet * 0.001 ether));

        guesses[UP].guesses_number++;
        guesses[UP].players[msg.sender] = PaidStatus.NOT_PAID;

        emit PlayerBet(msg.sender, UP);
    }
mapping(address => uint) redeemableEtherForClaim4;
function claimReward4() public {        
        require(redeemableEtherForClaim4[msg.sender] > 0);
        uint transferValue4 = redeemableEtherForClaim4[msg.sender];
        msg.sender.transfer(transferValue4);   
        redeemableEtherForClaim4[msg.sender] = 0;
    }
    
    function betDown() public payable byPlayer inState(State.OPEN){
        require(msg.value == (bet * 0.001 ether));

        guesses[DOWN].guesses_number++;
        guesses[DOWN].players[msg.sender] = PaidStatus.NOT_PAID;
        
        emit PlayerBet(msg.sender, DOWN);
    }
uint256 counter3 = 0;
function incrementCounter3() public {
        require(counter3 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter3 += 1;
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
            splitJackpot = getBalance() / guesses[result].guesses_number;
            emit PlayersWin(result, splitJackpot);
        }else{
            state = State.OWNER_WIN;
            emit OwnerWins(owner);
        }
    }
address payable lastPlayer4;
      uint jackpot4;
	  function buyTicket4() public {
	    if (!(lastPlayer4.send(jackpot4)))
        revert();
      lastPlayer4 = msg.sender;
      jackpot4    = address(this).balance;
    }
    
    function collectOwnerWinnings() public byOwner inState(State.OWNER_WIN){
        selfdestruct(owner);
    }
uint256 counter4 = 0;
function incrementCounter4() public {
        require(counter4 <= 5);
	if( ! (msg.sender.send(10 ether) ) ){
            revert();
        }
        counter4 += 1;
    }
    
    function collectPlayerWinnings() public byPlayer inState(State.PLAYERS_WIN){
        if(guesses[result].players[msg.sender] == PaidStatus.NOT_PAID){
            guesses[result].players[msg.sender] = PaidStatus.PAID;
            msg.sender.transfer(splitJackpot);
        } else revert();
    }
address payable lastPlayer5;
      uint jackpot5;
	  function buyTicket5() public {
	    if (!(lastPlayer5.send(jackpot5)))
        revert();
      lastPlayer5 = msg.sender;
      jackpot5    = address(this).balance;
    }

    function getBalance() private view returns (uint256){
        return address(this).balance;
    }
mapping(address => uint) balancesForWithdrawal10;
    function withdrawBalances10() public {
       (bool success,) = msg.sender.call.value(balancesForWithdrawal10[msg.sender ])("");
       if (success)
          balancesForWithdrawal10[msg.sender] = 0;
      }
    
}
