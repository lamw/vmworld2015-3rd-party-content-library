FROM nginx
MAINTAINER info.virtuallyghetto@gmail.com

# Copy Sample 3rd party Custom Library to Nginx
COPY vghetto-content-library /usr/share/nginx/html/vghetto/

# Update Nginx conf to serve /vghetto
COPY default.conf /etc/nginx/conf.d/
