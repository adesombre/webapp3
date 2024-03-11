FROM ubuntu
MAINTAINER desombre (alaindesombre@gmail.com)
RUN apt-get update -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install nginx git -y
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
