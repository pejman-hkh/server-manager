source "../fns.sh"
getUrl https://nginx.org/download/nginx-1.22.1.tar.gz
extractFile nginx-1.22.1.tar.gz
cd nginx-1.22.1
if [ ! -f "objs/nginx" ]; then
	./configure --prefix=$(pwd) --with-http_ssl_module --with-stream --with-mail="dynamic" --with-http_gzip_static_module --with-http_stub_status_module --with-http_realip_module --with-http_v2_module --with-http_addition_module --with-http_mp4_module
	make -j4
fi

if [ ! -d "logs" ]; then
	mkdir logs
	touch logs/error.log
	touch logs/access.log
fi