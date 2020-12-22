// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;


import "@openzeppelin/contracts/GSN/GSNRecipient.sol";

contract Counter is GSNRecipient {
    uint256 public value;

    function increase() public {
        value += 1;
    }

    function acceptRelayedCall(
        address relay,
        address from,
        bytes calldata encodedFunction,
        uint256 transactionFee,
        uint256 gasPrice,
        uint256 gasLimit,
        uint256 nonce,
        bytes calldata approvalData,
        uint256 maxPossibleCharge
    ) override external view returns (uint256, bytes memory) {
        return _approveRelayedCall();
    }

    // We won't do any pre or post processing, so leave _preRelayedCall and _postRelayedCall empty
    function _preRelayedCall(bytes memory context) override internal returns (bytes32) {
    }

    function _postRelayedCall(bytes memory context, bool, uint256 actualCharge, bytes32) override internal {
    }
}