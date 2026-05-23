#!/bin/sh
cat > /etc/nginx/conf.d/default.conf << EOF
server {
    listen ${PORT:-80};
    server_name _;
    location / {
        root /usr/share/nginx/html;
        index index.html;
    }
}
EOF
nginx -g 'daemon off;'
