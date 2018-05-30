VUE_DIR=$(PWD)/vue/
SRC_DIR=$(PWD)/src/

FROM_DIR=$(VUE_DIR)dist/
TO_DIR=$(SRC_DIR)vue/static/vue/dist/

build:
	docker-compose build

up:
	docker-compose up -d

up-non-daemon:
	docker-compose up

down:
	docker-compose down

restart:
	docker-compose down && docker-compose up -d

shell-nginx:
	docker exec -ti nz01 bash

shell-web:
	docker exec -ti dz01 bash

shell-db:
	docker exec -ti pz01 bash

log-nginx:
	docker-compose logs nginx  

log-web:
	docker-compose logs web  

log-db:
	docker-compose logs db

collectstatic:
	docker exec dz01 /bin/sh -c "python manage.py collectstatic --noinput"  

build-vue:
	npm --prefix $(VUE_DIR) run build && cp -r $(FROM_DIR) $(TO_DIR)
