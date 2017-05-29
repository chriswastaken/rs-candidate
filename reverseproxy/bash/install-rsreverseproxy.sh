#!/bin/bash

apt-get update && apt-get install nginx -y

cat >/etc/nginx/sites-available/default <<EOL
server {
    listen      80;
    server_name  _;
    location / {
        proxy_pass https://www.google.com/;
        if (\$args ~ rockets) {set \$args 'q=rockets+Relativity+Space';}        
    }  
}
EOL

nginx -s reload
