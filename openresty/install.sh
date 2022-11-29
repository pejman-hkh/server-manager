source "../fns.sh"
getUrl https://openresty.org/download/openresty-1.21.4.1.tar.gz
extractFile openresty-1.21.4.1.tar.gz
cd openresty-1.21.4.1
./configure --prefix=$(pwd)
make -j4
make install