#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
cd /var/www/html
echo "Hello World" > index.html
echo "ERROR!!" > error.html
chkconfig httpd on
curl http://169.254.169.254/latest/meta-data/local-ipv4 >>index.html
curl http://169.254.169.254/latest/placement/availability-zone >>index.html
_____________________________________________________________________________________

#!/bin/bash
yum update -y
yum install httpd -y
service httpd start
mkdir /var/www/html/orders
echo "<h1>This is Order</h1>" > /var/www/html/orders/index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4 >> /var/www/html/orders/index.html
curl http://169.254.169.254/latest/meta-data/placement/availability-zone >> /var/www/html/orders/index.html

