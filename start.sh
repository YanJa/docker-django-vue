#!/bin/bash

cd /src

# Collect static file
python3 manage.py collectstatic --no-input

# Migration
python3 manage.py migrate

# Run server
gunicorn mysite.wsgi -b 0.0.0.0:8000

