source "../fns.sh"
getUrl https://dlcdn.apache.org/httpd/httpd-2.4.54.tar.gz
extractFile httpd-2.4.54.tar.gz
sudo apt install libapr1 libapr1-dev libaprutil1-dev
./configure --prefix=$(pwd)
make -j 4
make install