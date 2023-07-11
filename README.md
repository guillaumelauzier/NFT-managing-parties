# NFT-managing-parties

# src.sol

This is a simple contract where an NFT can be minted, and then contributions can be added to the NFT. Each contribution consists of an address (which could represent a data provider, developer, or artist project manager) and a percentage that represents their share. You can view the contributions for a given NFT.

# oracle

In this example, a Chainlink oracle is used to make an HTTP GET request to an API at http://api.example.com/data. The response is passed to the fulfill function, which updates the volume variable in the contract.

Please note that you would have to replace the oracle address and the jobId with actual values that you'd get from a Chainlink node. The fee is usually set in LINK tokens and you'd need enough LINK tokens to pay for the oracle service.
