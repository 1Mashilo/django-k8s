#!/bin/bash

# Run migrations
/app/venv/bin/python manage.py migrate --noinput

# Create superuser (redundant if entrypoint.sh handles it)
/app/venv/bin/python manage.py createsuperuser --email "$SUPERUSER_EMAIL" --noinput || true

# Exit with success to signal completion
exit 0
