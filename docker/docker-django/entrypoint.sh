#!/bin/sh
python manage.py migrate
python manage.py flush --no-input
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin', 'admin@example.com', 'admin')" | python manage.py shell
ddtrace-run uwsgi --ini uwsgi.ini
