source "../fns.sh"
getUrl https://boostorg.jfrog.io/artifactory/main/release/1.77.0/source/boost_1_77_0.tar.bz2
extractFile boost_1_77_0.tar.bz2
cd boost_1_77_0
./bootstrap.sh --prefix=/usr/local/
./b2
cp -R boost_1_77_0/boost/ /usr/local/include/