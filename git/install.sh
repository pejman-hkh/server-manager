source "../fns.sh"
getUrl "https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.9.5.tar.gz"
extractFile "git-2.9.5.tar.gz"
cd git-2.9.5
./configure --prefix=$(pwd)
make -j4
make install