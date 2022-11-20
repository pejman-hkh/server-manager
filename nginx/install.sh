if [ ! -f "nginx-1.22.1.tar.gz" ]; then
	#git clone https://github.com/nginx/nginx.git
	wget https://nginx.org/download/nginx-1.22.1.tar.gz
fi

if [ ! -d "nginx-1.22.1" ]; then
	tar -xvzf nginx-1.22.1.tar.gz
fi

cd nginx-1.22.1
if [ ! -f "objs/nginx" ]; then
	./configure
	make
fi

if [ ! -d "logs" ]; then
	mkdir logs
	touch logs/error.log
	touch logs/access.log
fi

./objs/nginx -p . -c conf/nginx.conf