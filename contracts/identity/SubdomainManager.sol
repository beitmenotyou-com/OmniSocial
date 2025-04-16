// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SubdomainManager {
    mapping(string => mapping(string => bool)) public subdomains;

    event SubdomainCreated(string mainDomain, string subdomain);

    function createSubdomain(string memory domain, string memory sub) public {
        require(!subdomains[domain][sub], "Subdomain exists");
        subdomains[domain][sub] = true;

        emit SubdomainCreated(domain, sub);
    }

    function exists(string memory domain, string memory sub) public view returns (bool) {
        return subdomains[domain][sub];
    }
}
