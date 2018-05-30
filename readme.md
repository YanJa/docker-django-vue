# Nginx(proxy) - Django - Vue - Postgresql

## Deploy Django using Nginx, Postgresql
1. <a href="http://ruddra.com/2016/08/14/docker-django-nginx-postgres/">Deploy Django, Gunicorn, NGINX, Postgresql using Docker</a>
2. <a href="http://ruddra.com/2016/11/02/serve-static-files-by-nginx-from-django-using-docker/">Serve Static Files by Nginx from Django using Docker</a>
3. <a href="http://ruddra.com/2016/11/14/docker-do-stuff-using-celery-using-redis-as-broker/">Docker: Use Celery in Django(Redis as Broker)</a>
> % Postgresql would be used in production

### Basic Usage
1. First run `make build` inside root directory.
2. Then run `make build-vue` on root directory. (See command 15.)
3. At last run `make up` to start up the project for first time.

Checkout the [commands](#commands) section for more usage.

### Preview
A default Django project resides in `src` directory. So, when you start the project, you will see the following screen in `8000` port:

![Demo One](https://github.com/ruddra/blog-images/raw/master/Demo%201.png)

Also when you access the django container log via `make log-web`, you will see the following:

![Demo Two](https://github.com/ruddra/blog-images/raw/master/Demo%202.png)

### Commands
To use this project, run this commands:

1. `make up` to make containers and start on background
2. `make build` to build the project.
3. `make start` to start containers if project has been up already.
4. `make down` to stop containers.
5. `make shell-web` to shell access web container.
6. `make shell-db` to shell access db container.
7. `make shell-nginx` to shell access nginx container.
8. `make logs-web` to log access web container.
9. `make logs-db` to log access db container.
10. `make logs-nginx` to log access nginx container.
11. `make collectstatic` to put static files in static directory.
12. `make log-web` to log access web container.
13. `make log-db` to log access db container.
14. `make log-nginx` to log access nginx container.
15. `make build-vue` make build.js file and copy to js directory
