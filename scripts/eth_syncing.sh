
# Returns an object with data about the sync status or false.

curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"eth_syncing","params":[],"id":1}' http://localhost:8545
