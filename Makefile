upload:
	docker-compose build --pull --force-rm
	docker login -u devgrapher
	docker push devgrapher/haproxy-url-config:latest
