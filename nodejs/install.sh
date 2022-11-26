getUrl https://nodejs.org/dist/v18.12.1/node-v18.12.1.tar.gz
extractFile node-v18.12.1.tar.gz
cd node-v18.12.1
./configure --prefix=$(pwd)
make -j 4
make install