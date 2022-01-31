pragma solidity ^0.8.0;

contract Destructor {
    function destruct() public {
        selfdestruct(payable(0xd7F0CC87a403CBd7Bd06b44c7B68e93b98761005));
    }
}
