FROM python:3.6.1

RUN mkdir /app \
    && chmod +x /app

COPY app /app/
WORKDIR app

RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && python manage.py migrate

CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
