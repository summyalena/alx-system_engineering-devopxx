# 0x1A. Application server

## Description
The goal of this project is to install an application server (gunicorn) on our own servers and serve dynamic content with it.

## Table of contents
File | Description
---- | -----------
[2-app_server-nginx_config](./2-app_server-nginx_config) | Nginx config file setup to serve our page from the route /airbnb-onepage/
[3-app_server-nginx_config](./3-app_server-nginx_config) | Nginx config file setup to proxy HTTP requests to the route /airbnb-dynamic/number_odd_or_even/(any integer) to a Gunicorn instance listening on port 5001
[4-app_server-nginx_config](./4-app_server-nginx_config) | Nginx config file setup so that the route /api/ points to a Gunicorn instance listening on port 5002
[5-app_server-nginx_config](./5-app_server-nginx_config) | Nginx config file  so that it properly serves the static assets found in web_dynamic/static/ and so that the route / points to your Gunicorn instance
