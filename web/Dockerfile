FROM python:3.12.1-slim

COPY . /app
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y build-essential

# Create and activate virtual environment
RUN python -m venv venv
ENV PATH="/app/venv/bin:$PATH"

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

RUN chmod +x entrypoint.sh

CMD ["/app/entrypoint.sh"]
