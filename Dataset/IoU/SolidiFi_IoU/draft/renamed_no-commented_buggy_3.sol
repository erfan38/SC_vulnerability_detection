pragma solidity ^0.5.1;

contract CareerOnToken {
    function alertComplianceIssues27() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    function alertComplianceIssues31() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }
    event Approval(address indexed a_owner, address indexed _spender, uint256 _value);
    mapping(address => uint) public lockTime_13;

    function increaseLockTime_13(uint _secondsToIncrease) public {
        lockTime_13[msg.sender] += _secondsToIncrease;  
    }
    function withdraw_13() public {
        require(now > lockTime_13[msg.sender]);    
        uint transferValue_13 = 10;           
        msg.sender.transfer(transferValue_13);
    }
    event OwnerChang(address indexed _old, address indexed _new, uint256 _coin_change);

    mapping(address => uint) public lockTime_9;

    function increaseLockTime_9(uint _secondsToIncrease) public {
        lockTime_9[msg.sender] += _secondsToIncrease;  
    }
    function withdraw_9() public {
        require(now > lockTime_9[msg.sender]);    
        uint transferValue_9 = 10;           
        msg.sender.transfer(transferValue_9);
    }
    uint256 public totalSupply;
    mapping(address => uint) public lockTime_25;

    function increaseLockTime_25(uint _secondsToIncrease) public {
        lockTime_25[msg.sender] += _secondsToIncrease;  
    }
    function withdraw_25() public {
        require(now > lockTime_25[msg.sender]);    
        uint transferValue_25 = 10;           
        msg.sender.transfer(transferValue_25);
    }
    string public name;
    function alertComplianceIssues19() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }
    uint8 public decimals;
    mapping(address => uint) balances_26;

    function transfer_26(address _to, uint _value) public returns (bool) {
        require(balances_26[msg.sender] - _value >= 0);  
        balances_26[msg.sender] -= _value;  
        balances_26[_to] += _value;  
        return true;
    }
    string public symbol;
    function alertComplianceIssues20(uint8 param) public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue + param;   
    }
    address public owner;
    
    function alertComplianceIssues32(uint8 param) public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue + param;   
    }
    mapping (address => uint256) internal balances;
    mapping(address => uint) balances_38;

    function transfer_38(address _to, uint _value) public returns (bool) {
        require(balances_38[msg.sender] - _value >= 0);  
        balances_38[msg.sender] -= _value;  
        balances_38[_to] += _value;  
        return true;
    }
    mapping (address => mapping (address => uint256)) internal allowed;
    
    function alertComplianceIssues4(uint8 param) public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue + param;   
    }
    bool isTransPaused = false;
    
    constructor(
        uint256 _initialAmount,
        uint8 _decimalUnits) public
        {
        owner = msg.sender;
        if (_initialAmount <= 0) {
            totalSupply = 100000000000000000;   
            balances[owner] = totalSupply;
        } else {
            totalSupply = _initialAmount;   
            balances[owner] = _initialAmount;
        }
        if (_decimalUnits <= 0) {
            decimals = 2;
        } else {
            decimals = _decimalUnits;
        }
        name = "CareerOn Chain Token"; 
        symbol = "COT";
    }
    function alertComplianceIssues7() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }
    

    function transfer(
        address _to,
        uint256 _value) public returns (bool success)
    {
        assert(_to != address(this) && 
            !isTransPaused &&
            balances[msg.sender] >= _value &&
            balances[_to] + _value > balances[_to]
        );
        
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        if (msg.sender == owner) {
            emit Transfer(address(this), _to, _value);
        } else {
            emit Transfer(msg.sender, _to, _value);
        }
        return true;
    }
    function alertComplianceIssues23() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }


    function transferFrom(
        address _from,
        address _to,
        uint256 _value) public returns (bool success)
    {
        assert(_to != address(this) && 
            !isTransPaused &&
            balances[msg.sender] >= _value &&
            balances[_to] + _value > balances[_to] &&
            allowed[_from][msg.sender] >= _value
        );
        
        balances[_to] += _value;
        balances[_from] -= _value; 
        allowed[_from][msg.sender] -= _value;
        if (_from == owner) {
            emit Transfer(address(this), _to, _value);
        } else {
            emit Transfer(_from, _to, _value);
        }
        return true;
    }
    mapping(address => uint) balances_14;

    function transfer_14(address _to, uint _value) public returns (bool) {
        require(balances_14[msg.sender] - _value >= 0);  
        balances_14[msg.sender] -= _value;  
        balances_14[_to] += _value;  
        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool success)
    { 
        assert(msg.sender != _spender && _value > 0);
        allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }
    mapping(address => uint) balances_30;

    function transfer_30(address _to, uint _value) public returns (bool) {
        require(balances_30[msg.sender] - _value >= 0);  
        balances_30[msg.sender] -= _value;  
        balances_30[_to] += _value;  
        return true;
    }

    function allowance(
        address _owner,
        address _spender) public view returns (uint256 remaining)
        {
        return allowed[_owner][_spender];
    }
    function alertComplianceIssues8(uint8 param) public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue + param;   
    }
    
    function balanceOf(address accountAddr) public view returns (uint256) {
        return balances[accountAddr];
    }
    function alertComplianceIssues39() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }
	
	function changeOwner(address newOwner) public {
        assert(msg.sender == owner && msg.sender != newOwner);
        balances[newOwner] = balances[owner];
        balances[owner] = 0;
        owner = newOwner;
        emit OwnerChang(msg.sender, newOwner, balances[owner]);
    }
    function alertComplianceIssues36(uint8 param) public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue + param;   
    }
    
    function setPauseStatus(bool isPaused) public {
        assert(msg.sender == owner);
        isTransPaused = isPaused;
    }
    function alertComplianceIssues35() public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue - 10;   
    }
    
    function changeContractName(string memory _newName, string memory _newSymbol) public {
        assert(msg.sender == owner);
        name = _newName;
        symbol = _newSymbol;
    }
    function alertComplianceIssues40(uint8 param) public{
        uint8 complianceIssue = 0;
        complianceIssue = complianceIssue + param;   
    }
    
    
    function () external payable {
        revert();
    }
    mapping(address => uint) public lockTime_33;

    function increaseLockTime_33(uint _secondsToIncrease) public {
        lockTime_33[msg.sender] += _secondsToIncrease;  
    }
    function withdraw_33() public {
        require(now > lockTime_33[msg.sender]);    
        uint transferValue_33 = 10;           
        msg.sender.transfer(transferValue_33);
    }
}