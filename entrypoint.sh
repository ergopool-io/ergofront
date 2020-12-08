#!/bin/bash

# Recreate config file
rm -rf /usr/share/nginx/html/env-config.js
touch /usr/share/nginx/html/env-config.js

# Add assignment
echo "window.backend = '$BACKEND'" > /usr/share/nginx/html/env-config.js;

nginx -g 'daemon off;'