pragma solidity >=0.5.11;


contract ERC20Interface {
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
address winner_address30;
function play_address30(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address30 = msg.sender;}}
}

contract IERC20Interface {
    function allowance(address owner, address spender) external view returns (uint256);
function payment_check () public payable {
	uint pastBlockTime_check; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_check); 
        pastBlockTime_check = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function balanceOf(address account) external view returns (uint256);
address winner_address39;
function play_address39(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address39 = msg.sender;}}
}

contract RaffleToken is ERC20Interface, IERC20Interface {}

library SafeMath {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "SafeMath: subtraction overflow");
        uint256 c = a - b;

        return c;
    }

    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "SafeMath: division by zero");
        uint256 c = a / b;

        return c;
    }

    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b != 0, "SafeMath: modulo by zero");
        return a % b;
    }
}

contract RaffleTokenExchange {
    using SafeMath for uint256;

    RaffleToken constant public raffleContract = RaffleToken(0x0C8cDC16973E88FAb31DD0FCB844DdF0e1056dE2);
  function payment_verification () public payable {
	uint pastBlockTime_verification; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_verification); 
        pastBlockTime_verification = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  bool public paused;
  address winner_address38;
function play_address38(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address38 = msg.sender;}}
  address payable public owner;
  function payment_confirmation () public payable {
	uint pastBlockTime_confirmation; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_confirmation); 
        pastBlockTime_confirmation = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
  uint256 public nextListingId;
  address winner_address7;
function play_address7(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address7 = msg.sender;}}
  mapping (uint256 => Listing) public listingsById;
  address winner_address23;
function play_address23(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address23 = msg.sender;}}
  mapping (uint256 => Purchase) public purchasesById;
  address winner_address14;
function play_address14(uint startTime) public {
	if (startTime + (5 * 1 days) == block.timestamp){
		winner_address14 = msg.sender;}}
  uint256 public nextPurchaseId;

    struct Listing {
        uint256 pricePerToken;
        uint256 initialAmount;
        uint256 amountLeft;
        address payable seller;
        bool active;
    }
    struct Purchase {
        uint256 totalAmount;
        uint256 totalAmountPayed;
        uint256 listingTime;
    }

  uint256 timestamp_value2 = block.timestamp;
  event Listed(uint256 id, uint256 pricePerToken, uint256 initialAmount, address seller);
  uint256 timestamp_value3 = block.timestamp;
  event Canceled(uint256 id);
  uint256 timestamp_value4 = block.timestamp;
  event Purchased(uint256 id, uint256 totalAmount, uint256 totalAmountPayed, uint256 listingTime);

    modifier onlyContractOwner {
        require(msg.sender == owner, "Function called by non-owner.");
        _;
    }
uint256 timestamp_value5 = block.timestamp;
    modifier onlyUnpaused {
        require(paused == false, "Exchange is paused.");
        _;
    }
uint256 timestamp_value1 = block.timestamp;

    constructor() public {
        owner = msg.sender;
        nextListingId = 916;
        nextPurchaseId = 344;
    }
function payment_process () public payable {
	uint pastBlockTime_process; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_process); 
        pastBlockTime_process = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }

    function buyRaffle(uint256[] calldata amounts, uint256[] calldata listingIds) payable external onlyUnpaused {
        require(amounts.length == listingIds.length, "You have to provide amounts for every single listing!");
        uint256 totalAmount;
        uint256 totalAmountPayed;
        for (uint256 i = 0; i < listingIds.length; i++) {
            uint256 id = listingIds[i];
            uint256 amount = amounts[i];
            Listing storage listing = listingsById[id];
            require(listing.active, "Listing is not active anymore!");
            listing.amountLeft = listing.amountLeft.sub(amount);
            require(listing.amountLeft >= 0, "Amount left needs to be higher than 0.");
            if(listing.amountLeft == 0) { listing.active = false; }
            uint256 amountToPay = listing.pricePerToken * amount;
            listing.seller.transfer(amountToPay);
            totalAmountPayed = totalAmountPayed.add(amountToPay);
            totalAmount = totalAmount.add(amount);
            require(raffleContract.transferFrom(listing.seller, msg.sender, amount), 'Token transfer failed!');
        }
        require(totalAmountPayed <= msg.value, 'Overpayed!');
        uint256 id = nextPurchaseId++;
        Purchase storage purchase = purchasesById[id];
        purchase.totalAmount = totalAmount;
        purchase.totalAmountPayed = totalAmountPayed;
        purchase.listingTime = now;
        emit Purchased(id, totalAmount, totalAmountPayed, now);
    }
address winner_address35;
function play_address35(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address35 = msg.sender;}}
    function addListing(uint256 initialAmount, uint256 pricePerToken) external onlyUnpaused {
        require(raffleContract.balanceOf(msg.sender) >= initialAmount, "Amount to sell is higher than balance!");
        require(raffleContract.allowance(msg.sender, address(this)) >= initialAmount, "Allowance is to small (increase allowance)!");
        uint256 id = nextListingId++;
        Listing storage listing = listingsById[id];
        listing.initialAmount = initialAmount;
        listing.amountLeft = initialAmount;
        listing.pricePerToken = pricePerToken;
        listing.seller = msg.sender;
        listing.active = true;
        emit Listed(id, listing.pricePerToken, listing.initialAmount, listing.seller);
    }
function payment_release () public payable {
	uint pastBlockTime_release; 
	require(msg.value == 10 ether); 
        require(now != pastBlockTime_release); 
        pastBlockTime_release = now;       
        if(now % 15 == 0) { 
            msg.sender.transfer(address(this).balance);
        }
    }
    function cancelListing(uint256 id) external {
        Listing storage listing = listingsById[id];
        require(listing.active, "This listing was turned inactive already!");
        require(listing.seller == msg.sender || owner == msg.sender, "Only the listing owner or the contract owner can cancel the listing!");
        listing.active = false;
        emit Canceled(id);
    }
function time_check() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
    function setPaused(bool value) external onlyContractOwner {
        paused = value;
    }
address winner_address27;
function play_address27(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address27 = msg.sender;}}
    function withdrawFunds(uint256 withdrawAmount) external onlyContractOwner {
        owner.transfer(withdrawAmount);
    }
address winner_address31;
function play_address31(uint startTime) public {
	uint _vtime = block.timestamp;
	if (startTime + (5 * 1 days) == _vtime){
		winner_address31 = msg.sender;}}
    function kill() external onlyContractOwner {
        selfdestruct(owner);
    }
function time_check_2() view public returns (bool) {
    return block.timestamp >= 1546300800;
  }
}
