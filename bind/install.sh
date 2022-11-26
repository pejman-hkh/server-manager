source "../fns.sh"
getUrl ftp://ftp.isc.org/isc/bind9/9.18.0/bind-9.18.0.tar.xz
extractFile bind-9.18.0.tar.xz
cd bind-9.18.0
./configure --prefix=$(pwd)
make -j 4
make install