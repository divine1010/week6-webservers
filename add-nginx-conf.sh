#!/bin/bash
domain="dineshkumar1.mounickraj.com"
html_file="/var/www/static-html-website"
config_file="/etc/nginx/sites-available/$domain"
sudo touch "$config_file"
sudo bash -c "cat <<EOF > $config_file
server {
    listen 80;
    server_name $domain;

    root /var/www/static-html-website;
    index website.html;

}
EOF"
sudo ln -s "$config_file" "/etc/nginx/sites-enabled/"
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl restart nginx
echo "Nginx configured to host $domain with the HTML file."
