mlflow server \
  --backend-store-uri postgresql://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME} \
  --default-artifact-root s3://${S3_BUCKET}/mlflow-artifacts \
  --host 0.0.0.0 \
  --port 5000