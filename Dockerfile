# Dockerfile
FROM python:3.10-slim

# Install MLflow and Gunicorn
RUN pip install mlflow gunicorn psycopg2-binary

# Create directory for MLflow
WORKDIR /app

# Expose default port
EXPOSE 5000

# Define default backend and artifact locations via environment vars
ENV MLFLOW_BACKEND_STORE_URI=sqlite:///mlflow.db
ENV MLFLOW_ARTIFACT_ROOT=/app/artifacts

# Create artifact directory
RUN mkdir -p /app/artifacts

# Run MLflow server
CMD ["mlflow", "server", \
    "--host", "0.0.0.0", \
    "--port", "5000", \
    "--backend-store-uri", "sqlite:///mlflow.db", \
    "--default-artifact-root", "/app/artifacts"]
