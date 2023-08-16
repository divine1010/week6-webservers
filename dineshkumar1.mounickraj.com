server {
    server_name dineshkumar1.mounickraj.com;

    root /var/www/static-html-website;
    index index.html;

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/dineshkumar1.mounickraj.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/dineshkumar1.mounickraj.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}
server {
    if ($host = dineshkumar1.mounickraj.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    listen 80;
    server_name dineshkumar1.mounickraj.com;
    return 404; # managed by Certbot


}