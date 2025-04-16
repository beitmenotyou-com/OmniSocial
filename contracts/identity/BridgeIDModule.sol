// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "./PersonaNFT.sol";
import "../utils/Strings.sol";

contract BridgeIDModule {
    struct Identity {
        string username;
        string domain;
        address wallet;
        bool isVerified;
    }

    mapping(address => Identity) public identities;
    mapping(string => address) public usernameToAddress;

    event IdentityCreated(address indexed user, string username, string domain);
    event VerificationUpdated(address indexed user, bool verified);

    function register(string memory _username) external {
        require(usernameToAddress[_username] == address(0), "Username taken");

        string memory domain = string(abi.encodePacked(_username, ".omni"));
        identities[msg.sender] = Identity(_username, domain, msg.sender, false);
        usernameToAddress[_username] = msg.sender;

        emit IdentityCreated(msg.sender, _username, domain);
    }

    function verifyIdentity(address _user) external {
        // Only trusted verifier (TBD) can call
        identities[_user].isVerified = true;
        emit VerificationUpdated(_user, true);
    }

    function getDomain(address _user) external view returns (string memory) {
        return identities[_user].domain;
    }
}
