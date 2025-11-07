FROM python:3.11-slim

WORKDIR /app

COPY ./src/api/pyproject.toml /app/
COPY uv.lock /app/

RUN  pip install --no-cache-dir .

COPY ./src/api/ /app
COPY ./models ./models

EXPOSE 8000

ENTRYPOINT [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]