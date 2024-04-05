#!/bin/bash
availability_zone=$(ec2-metadata -z)
instance_id=$(ec2-metadata -i)
private_ip=$(ec2-metadata -o)
yum install -y httpd
systemctl start httpd
systemctl enable httpd
cat <<EOF > /var/www/html/index.html
<h1>Welcome to Saopaulo Web Server.</h1>
<h3>${availability_zone}</h3>
<h3>${instance_id}</h3>
<h3>${private_ip}</h3>
EOF
