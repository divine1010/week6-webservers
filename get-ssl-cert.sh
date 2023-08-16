#!/bin/bash
DOMAIN="dineshkumar1.mounickraj.com"
sudo apt update
sudo apt install certbot python3-certbot-nginx -y
sudo certbot --nginx -d $DOMAIN
sudo systemctl reload nginx
sudo systemctl restart nginx
