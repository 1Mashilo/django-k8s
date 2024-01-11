FROM python:3.12.1-slim

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]