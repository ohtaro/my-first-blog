"""
WSGI config for mysite project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/2.0/howto/deployment/wsgi/
"""

import os
import ddtrace
from django.core.wsgi import get_wsgi_application
from ddtrace import tracer

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "mysite.settings")

# datadog config
ddtrace.config.analytics_enabled = True

application = get_wsgi_application()
