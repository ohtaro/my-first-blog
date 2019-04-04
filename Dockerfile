FROM python:3.6.1

RUN mkdir /app \
    && chmod +x /app

COPY app /app/
WORKDIR app

RUN pip install -r requirements.txt
RUN python manage.py migrate

CMD ["ddtrace-run", "python", "manage.py", "runserver", "0.0.0.0:80"]
