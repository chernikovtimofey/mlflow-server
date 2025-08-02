# Dockerfile
FROM python:3.10-slim

RUN pip install --no-cache-dir mlflow boto3 gunicorn

WORKDIR /app

EXPOSE 5000

CMD mlflow server \
  --host 0.0.0.0 \
  --port 5000 \
  --backend-store-uri sqlite:///mlflow.db \
  --default-artifact-root s3://mlflow-artifacts/