echo -e "\e[31m Installing Nginx Server\ -e[0m"
yum install nginx -y

echo -e "\e[32m Removing Default Content from Nginx Server \-e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[33m Installing Frontend Content \-e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip

echo -e "\e[34m unzip the Frontend content \-e[0m"
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

echo -e "\e[35m Enable Nginx Server \-e[0m"
systemctl enable nginx

echo -e "\e[35m Restart Nginx Server \-e[0m"
systemctl restart nginx
