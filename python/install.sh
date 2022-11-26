source "../fns.sh"
getUrl https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz 
extractFile Python-3.11.0.tgz
cd Python-3.11.0
./configure --prefix=$(pwd)
make -j 4
make install