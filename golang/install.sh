source "../fns.sh"
getUrl "https://go.dev/dl/go1.19.3.src.tar.gz"
extractFile "go1.19.3.src.tar.gz"
cd go1.19.3.src/src
GOROOT_BOOTSTRAP=$(pwd) ./make.bash