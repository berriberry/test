#!/bin/bash
instance_id=$(ec2-metadata -i | cut -d " " -f 2)
private_ip=$(ec2-metadata -o | cut -d " " -f 2)
availability_zone=$(ec2-metadata -z | cut -d " " -f 2)
yum install -y httpd
systemctl start httpd
systemctl enable httpd
cat <<EOF > /var/www/html/index.html
<h1>서울 웹 서버에 오신 것을 환영합니다.</h1>
<h2>Instance ID: ${instance_id}</h2>
<h2>Private IP: ${private_ip}</h2>
EOF
