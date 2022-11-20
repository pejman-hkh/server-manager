if [ ! -f "php-8.1.12.tar.gz" ]; then
	wget https://www.php.net/distributions/php-8.1.12.tar.gz
fi

if [ ! -d "php-8.1.12" ]; then
	tar -xvzf php-8.1.12.tar.gz
fi

cd php-8.1.12
#force remove package if need and reinstall it
#sudo dpkg -P --force-depends
sudo apt install libxml2
sudo apt install libxml2-dev
sudo apt install sqlite3
sudo apt install libsqlite3-dev

./configure --prefix=$(pwd) --enable-fpm
make -j4
make install