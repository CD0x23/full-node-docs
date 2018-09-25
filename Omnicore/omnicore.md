Dependencies 
------------
```
sudo apt-get install git
sudo apt-get install pkg-config
sudo apt-get install autoconf
sudo apt-get install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils
sudo apt-get install libboost-all-dev
```
BerkeleyDB is required for the wallet functionality. You can skip this part if you do not intend to use the built-in wallet.
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install libdb4.8-dev libdb4.8++-dev
```
Optional dependencies (miniupnp and ZMQ)
```
sudo apt-get install libminiupnpc-dev
sudo apt-get install libzmq3-dev
```

Build
-----
Clone the repository

```
git clone https://github.com/OmniLayer/omnicore.git
cd omnicore/
```

```
./autogen.sh
./configure
make
```

Create Bitcoin.conf 
-------------

```
testnet = 0
txindex = 1
server = 1
rpcuser = rpcusername
rpcpassword = rpcpassword
rpcallowip = 0.0.0.0/0
keypool = 1000
listen = 1

```