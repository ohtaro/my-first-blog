FROM python:3.6.1

RUN mkdir /app \
    && chmod +x /app

COPY app /app/
WORKDIR app

RUN pip install -r requirements.txt
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["sh", "-c", "/entrypoint.sh"]
#CMD ["ddtrace-run", "python", "manage.py", "runserver", "0.0.0.0:80"]
