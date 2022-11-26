source "../fns.sh"
getUrl "https://download.mono-project.com/sources/mono/mono-6.12.0.182.tar.xz"
extractFile mono-6.12.0.182.tar.xz
cd mono-6.12.0.182
./configure --prefix=$(pwd)
make -j4
make install