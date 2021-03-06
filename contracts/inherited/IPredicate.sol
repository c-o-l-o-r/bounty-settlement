// Authored by Plasma Group
// https://github.com/plasma-group/plasma-predicates/blob/master/contracts/predicates/IPredicate.sol

pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract IPredicate {
    /*
     * Structs
     */

    struct StateObject {
        bytes parameters;
        address predicate;
    }

    struct Exit {
        bytes state;
        uint256 rangeStart;
        uint256 rangeEnd;
        uint256 exitHeight;
        uint256 exitTime;
    }


    /*
     * Public methods
     */

    function canCancel(Exit memory _exit, bytes memory _witness) public view returns (bool);
    function canStartExit(Exit memory _exit) public view returns (bool);
    function finalizeExit(Exit memory _exit) public payable;
}
