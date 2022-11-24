wget http://mirror.linux-ia64.org/gnu/gcc/releases/gcc-12.2.0/gcc-12.2.0.tar.xz
tar -xf
./contrib/download_prerequisites
./configure --prefix=$(pwd)
make -j4