if [ ! -f "phpMyAdmin-5.2.0-all-languages.zip" ]; then
	wget https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.zip
fi

if [ ! -d "phpMyAdmin-5.2.0-all-languages" ]; then
	unzip phpMyAdmin-5.2.0-all-languages.zip
fi