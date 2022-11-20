if [ ! -f "node-v18.12.1.tar.gz" ]; then
	wget https://nodejs.org/dist/v18.12.1/node-v18.12.1.tar.gz
fi

if [ ! -d "node-v18.12.1" ]; then
	tar -xvzf node-v18.12.1.tar.gz
fi

cd node-v18.12.1
./configure --prefix=$(pwd)
make -j 4
make install