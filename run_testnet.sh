docker run --rm -it -p 8545:8545 -p 30303:30303 -v $PWD/node:/root/.ethereum ethereum/client-go --testnet --syncmode light --rpc --rpcaddr "0.0.0.0"
