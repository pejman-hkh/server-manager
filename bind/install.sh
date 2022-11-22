wget ftp://ftp.isc.org/isc/bind9/9.18.0/bind-9.18.0.tar.xz
tar -xf bind-9.18.0.tar.xz
./configure --prefix=$(pwd)
make -j 4
make install