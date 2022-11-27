git clone https://github.com/cronie-crond/cronie.git
cd cronie/
./autogen.sh
./configure --prefix=$(pwd)
make
make install