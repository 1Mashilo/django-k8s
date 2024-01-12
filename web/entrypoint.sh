#!/bin/bash

# Activate virtual environment
source /app/venv/bin/activate

# Install dependencies (if needed)
 /app/venv/bin/pip install -r requirements.txt

# Start your application using Gunicorn
/app/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application --bind "0.0.0.0:8000"
