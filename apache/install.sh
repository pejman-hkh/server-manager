if [ ! -f "httpd-2.4.54.tar.gz" ]; then
	wget https://dlcdn.apache.org/httpd/httpd-2.4.54.tar.gz
fi

if [ ! -d "httpd-2.4.54" ]; then
	tar -xvzf httpd-2.4.54.tar.gz
fi

sudo apt install libapr1 libapr1-dev libaprutil1-dev
./configure --prefix=$(pwd)
make -j 4
make install