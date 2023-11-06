restart:
	docker compose exec web bash -c apachectl restart

web:
	docker compose exec -u ec2-user web bash -c "cd /var/www/html && bash"