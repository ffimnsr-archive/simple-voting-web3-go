
# Returns a list of addresses owned by client.

curl -X POST -H "Content-Type: application/json" -d '{"jsonrpc":"2.0","method":"eth_accounts","params":[],"id":1}' http://localhost:8545
