apt-get update
apt install -y htop libc++-dev git make gcc g++ screen
apt install -y software-properties-common
add-apt-repository -y ppa:bitcoin/bitcoin
apt-get update
apt-get install -y libdb4.8-dev libdb4.8++-dev
apt-get install -y libboost-filesystem-dev
apt-get install -y libboost-program-options-dev
apt-get install -y libboost-thread-dev
apt-get install -y libssl-dev
apt-get install -y libminiupnpc-dev
cd /
dd if=/dev/zero of=swap5 bs=1M count=5120
chmod 600 swap5
mkswap swap5
swapon swap5
cd
git clone https://github.com/dalecoinmarket/dalecoin-core.git
cd dalecoin-core/src
make -f makefile.unix
mkdir -p ~/.dalecoin
echo rpcuser=dalecoinrpc > ~/.dalecoin/dalecoin.conf
echo rpcpassword=BMBEUFbGSTq55LRAn4Ugnz7ZKSJowdy9hUYYdcq1rdkz >> ~/.dalecoin/dalecoin.conf
screen -d -m ./dalecoind


