Ethereum full node minimum requirements
-----------------------
Disk space: 250 gigabytes
Memory: 4 gigabytes
Connection: Preferably an unmetered connection (Around 200gb when you first start the node, 200gb uploads, 20gb downloads per month)

Quickstart
----------
```
docker run -d --name ethereum-node -v /Users/alice/ethereum:/root \
           -p 8545:8545 -p 30303:30303 \
           ethereum/client-go
```

Running
-------
```
geth console
```
This command will start geth in fast sync mode by default. 

If you intend to run an archival node with full transaction history you can do so with the --syncmode flag:
```
--syncmode full
```

If you want to progamatically interface your Geth node:
```
--rpcaddr 0.0.0.0
```
This will allow the RPC endpoints to be accessible from the outside. 
*Warning this allows anyone to run commands on your node*

Additional flags:
```
--rpc 
```
Enables the HTTP-RPC server
```
--rpcaddr
```
HTTP-RPC listening interface (default: "localhost")
```
--rpcport 
```
HTTP-RPC listening port (default: "8545")


More information on [https://hub.docker.com/r/ethereum/client-go/](https://hub.docker.com/r/ethereum/client-go/)