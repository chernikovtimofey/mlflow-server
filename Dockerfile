FROM python:3.10

# Install MLflow and boto3 for Yandex S3
RUN pip install mlflow boto3 psycopg2-binary

# Expose MLflow port
EXPOSE 5000

# Entrypoint for MLflow server
CMD mlflow server \
    --backend-store-uri=$BACKEND_STORE_URI \
    --default-artifact-root=$ARTIFACT_ROOT \
    --host=0.0.0.0 \
    --port=5000