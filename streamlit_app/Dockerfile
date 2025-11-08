FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml /app/

RUN pip install --no-cache-dir .

COPY ./ .

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run", "app.py",  "--server.address=0.0.0.0" ]