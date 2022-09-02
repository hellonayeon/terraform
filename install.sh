#! bin/bash

sudo yum install -y wget httpd
sudo amazon-linux-extras enable php7.2 lamp-mariadb10.2-php7.2
sudo yum install php-cli php-pdo php-fpm php-json php-mysqlnd mariadb -y

sudo wget https://ko.wordpress.org/latest-ko_KR.tar.gz
sudo tar xvfz latest-ko_KR.tar.gz
sudo cp -a wordpress/* /var/www/html/
sudo chown -R apache.apache /var/www/html/*
sudo sed -i 's/DirectoryIndex index.html/DirectoryIndex index.php/g' /etc/httpd/conf/httpd.conf

sudo mv /var/www/html/{wp-config-sample.php,wp-config.php}
sudo sed -i 's/database_name_here/wordpress/g' /var/www/html/wp-config.php
sudo sed -i 's/username_here/admin/g' /var/www/html/wp-config.php
sudo sed -i 's/password_here/It12345!/g' /var/www/html/wp-config.php
sudo sed -i 's/localhost/mydb.cqhyhbckack3.ap-northeast-2.rds.amazonaws.com/g' /var/www/html/wp-config.php
sudo chmod o+w /var/www/html

sudo cat > /var/www/html/health.html << EOF
<html><body><h1>Health-Check</h1></body></html>
EOF

sudo systemctl enable httpd
sudo systemctl start httpd