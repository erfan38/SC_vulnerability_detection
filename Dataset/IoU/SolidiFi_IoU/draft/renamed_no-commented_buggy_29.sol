pragma solidity >=0.5.11;


contract ERC20Interface {
    function transferFrom(address from, address to, uint tokens) public returns (bool success);
function safeFunction1() public{
    uint8 variable1 = 0;
    variable1 = variable1 - 10;   
}
}

contract IERC20Interface {
    function allowance(address owner, address spender) external view returns (uint256);
function safeFunction2() public{
    uint8 variable2 = 0;
    variable2 = variable2 - 10;   
}
    function balanceOf(address account) external view returns (uint256);
mapping(address => uint) balancesUser1;

function transferUser1(address _to, uint _value) public returns (bool) {
    require(balancesUser1[msg.sender] - _value >= 0);  
    balancesUser1[msg.sender] -= _value;  
    balancesUser1[_to] += _value;  
    return true;
  }
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
  function safeFunction3() public{
    uint8 variable3 = 0;
    variable3 = variable3 - 10;   
}
  bool public paused;
  mapping(address => uint) balancesUser2;

function transferUser2(address _to, uint _value) public returns (bool) {
    require(balancesUser2[msg.sender] - _value >= 0);  
    balancesUser2[msg.sender] -= _value;  
    balancesUser2[_to] += _value;  
    return true;
  }
  address payable public owner;
  function safeFunction4(uint8 parameter1) public {
    uint8 variable4 = 0;
    variable4 = variable4 + parameter1;   
}
  uint256 public nextListingId;
  function safeFunction5(uint8 parameter2) public {
    uint8 variable5 = 0;
    variable5 = variable5 + parameter2;   
}
  mapping (uint256 => Listing) public listingsById;
  mapping(address => uint) balancesUser3;

function transferUser3(address _to, uint _value) public returns (bool) {
    require(balancesUser3[msg.sender] - _value >= 0);  
    balancesUser3[msg.sender] -= _value;  
    balancesUser3[_to] += _value;  
    return true;
  }
  mapping (uint256 => Purchase) public purchasesById;
  function safeFunction6(uint8 parameter3) public {
    uint8 variable6 = 0;
    variable6 = variable6 + parameter3;   
}
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
        uint256 timestamp;
    }

  function safeFunction7() public{
    uint8 variable7=0;
    variable7 = variable7 - 10;   
}
  event Listed(uint256 id, uint256 pricePerToken, uint256 initialAmount, address seller);
  function safeFunction8() public{
    uint8 variable8 = 0;
    variable8 = variable8 - 10;   
}
  event Canceled(uint256 id);
  mapping(address => uint) public lockTimesUser1;

function increaseLockTimeUser1(uint _secondsToIncrease) public {
        lockTimesUser1[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser1() public {
        require(now > lockTimesUser1[msg.sender]);    
        uint transferValueUser1 = 10;           
        msg.sender.transfer(transferValueUser1);
    }
  event Purchased(uint256 id, uint256 totalAmount, uint256 totalAmountPayed, uint256 timestamp);

    modifier onlyContractOwner {
        require(msg.sender == owner, "Function called by non-owner.");
        _;
    }
    modifier onlyUnpaused {
        require(paused == false, "Exchange is paused.");
        _;
    }

    constructor() public {
        owner = msg.sender;
        nextListingId = 916;
        nextPurchaseId = 344;
    }
mapping(address => uint) balancesUser4;

function transferUser4(address _to, uint _value) public returns (bool) {
    require(balancesUser4[msg.sender] - _value >= 0);  
    balancesUser4[msg.sender] -= _value;  
    balancesUser4[_to] += _value;  
    return true;
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
        require(totalAmountPayed <= msg.value, 'Overpaid!');
        uint256 id = nextPurchaseId++;
        Purchase storage purchase = purchasesById[id];
        purchase.totalAmount = totalAmount;
        purchase.totalAmountPayed = totalAmountPayed;
        purchase.timestamp = now;
        emit Purchased(id, totalAmount, totalAmountPayed, now);
    }
function safeFunction9(uint8 parameter4) public {
    uint8 variable9 = 0;
    variable9 = variable9 + parameter4;   
}
    function addListing(uint256 initialAmount, uint256 pricePerToken) external onlyUnpaused {
        require(raffleContract.balanceOf(msg.sender) >= initialAmount, "Amount to sell is higher than balance!");
        require(raffleContract.allowance(msg.sender, address(this)) >= initialAmount, "Allowance is too small (increase allowance)!");
        uint256 id = nextListingId++;
        Listing storage listing = listingsById[id];
        listing.initialAmount = initialAmount;
        listing.amountLeft = initialAmount;
        listing.pricePerToken = pricePerToken;
        listing.seller = msg.sender;
        listing.active = true;
        emit Listed(id, listing.pricePerToken, listing.initialAmount, listing.seller);
    }
function safeFunction10() public {
    uint8 variable10 = 0;
    variable10 = variable10 - 10;   
}
    function cancelListing(uint256 id) external {
        Listing storage listing = listingsById[id];
        require(listing.active, "This listing was turned inactive already!");
        require(listing.seller == msg.sender || owner == msg.sender, "Only the listing owner or the contract owner can cancel the listing!");
        listing.active = false;
        emit Canceled(id);
    }
function safeFunction11(uint8 parameter5) public {
    uint8 variable11 = 0;
    variable11 = variable11 + parameter5;   
}
    function setPaused(bool value) external onlyContractOwner {
        paused = value;
    }
function safeFunction12() public {
    uint8 variable12 = 0;
    variable12 = variable12 - 10;   
}
    function withdrawFunds(uint256 withdrawAmount) external onlyContractOwner {
        owner.transfer(withdrawAmount);
    }
function safeFunction13(uint8 parameter6) public {
    uint8 variable13 = 0;
    variable13 = variable13 + parameter6;   
}
    function kill() external onlyContractOwner {
        selfdestruct(owner);
    }
mapping(address => uint) public lockTimesUser2;

function increaseLockTimeUser2(uint _secondsToIncrease) public {
        lockTimesUser2[msg.sender] += _secondsToIncrease;  
    }
function withdrawUser2() public {
        require(now > lockTimesUser2[msg.sender]);    
        uint transferValueUser2 = 10;           
        msg.sender.transfer(transferValueUser2);
    }
}
