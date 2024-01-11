#!/bin/bash

SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"christophermashilo@gmail.com"}
cd /app/

# Activate the virtual environment
source /app/venv/bin/activate

# Install dependencies (if needed)
# /app/venv/bin/pip install -r requirements.txt

# Run migrations
/app/venv/bin/python manage.py migrate --noinput

# Create superuser
/app/venv/bin/python manage.py createsuperuser --email "$SUPERUSER_EMAIL" --noinput || true

# Start your application using Gunicorn
/app/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application --bind "0.0.0.0:8000"
