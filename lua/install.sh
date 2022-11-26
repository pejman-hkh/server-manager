source "../fns.sh"
getUrl https://luajit.org/download/LuaJIT-2.0.5.tar.gz
extractFile LuaJIT-2.0.5.tar.gz
cd LuaJIT-2.0.5
sed -i "s,export PREFIX= \/usr\/local,export PREFIX= $(pwd),g" Makefile
make -j4
make install