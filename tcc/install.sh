source "../fns.sh"
getUrl "http://download.savannah.gnu.org/releases/tinycc/tcc-0.9.26.tar.bz2"
extractFile "tcc-0.9.26.tar.bz2"
cd tcc-0.9.26
./configure --prefix=$(pwd)
make -j4
make install
