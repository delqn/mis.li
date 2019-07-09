#!make

SHELL:=bash

.PHONE: install-nginx
install-nginx:
	sudo apt-get install nginx
	sudo bash -c 'cat etc/nginx/nginx.conf > /etc/nginx/nginx.conf'
	sudo systemctl enable nginx
	sudo systemctl start nginx
	systemctl status nginx.service
