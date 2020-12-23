Sending gasless transactions

based on https://docs.openzeppelin.com/learn/sending-gasless-transactions


pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyCollectible is ERC721 {
    constructor() ERC721("MyCollectible", "MCO") public {
    }
}

 npm install  @openzeppelin/gsn-helpers @openzeppelin/contracts-ethereum-package @openzeppelin/upgrades @openzeppelin/cli ganache-cli



npx ganache-cli
npx openzeppelin deploy
npx oz-gsn run-relayer

//fund the counter
npx oz-gsn fund-recipient --recipient 0xCfEB869F69431e42cdB54A4F4f105C19C080A601
