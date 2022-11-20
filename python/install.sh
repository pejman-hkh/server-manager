if [ ! -f "Python-3.11.0.tgz " ]; then
	wget https://www.python.org/ftp/python/3.11.0/Python-3.11.0.tgz 
fi

if [ ! -d "Python-3.11.0" ]; then
	tar -xvzf Python-3.11.0.tgz
fi

cd Python-3.11.0
./configure --prefix=$(pwd)
make -j 4
make install