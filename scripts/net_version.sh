
# "1": Ethereum Mainnet
# "2": Morden Testnet (deprecated)
# "3": Ropsten Testnet
# "4": Rinkeby Testnet

curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"net_version","params":[],"id":67}' http://localhost:8545
