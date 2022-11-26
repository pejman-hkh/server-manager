source "../fns.sh"
getUrl https://nginx.org/download/nginx-1.22.1.tar.gz
extractFile nginx-1.22.1.tar.gz
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