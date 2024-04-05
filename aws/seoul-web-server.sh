#!/bin/bash
availability_zone=$(ec2-metadata -z | cut -d ' ' -f 2)
instance_id=$(ec2-metadata -i)
private_ip=$(ec2-metadata -o)
yum install -y httpd
systemctl start httpd
systemctl enable httpd
cat <<EOF > /var/www/html/index.html
<h1>서울 웹 서버에 오신 것을 환영합니다.</h1>
<h3>가용영역: ${availability_zone}</h3>
<h3>${instance_id}</h3>
<h3>${private_ip}</h3>
EOF
