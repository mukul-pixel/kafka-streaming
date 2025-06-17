#!/bin/bash
set -e

# Upgrade pip and install requirements
if [ -f "/opt/airflow/requirements.txt" ]; then
  $(command -v pip) install --upgrade pip
  $(command -v pip) install -r /opt/airflow/requirements.txt
fi

# Initialize DB and create user if needed
airflow db upgrade

# Create admin user if it doesn't exist
airflow users create \
  --username admin \
  --firstname admin \
  --lastname admin \
  --role Admin \
  --email admin@example.com \
  --password admin || true

if [ "$1" = "scheduler" ]; then
  exec airflow scheduler
elif [ "$1" = "webserver" ]; then
  exec airflow webserver
else
  echo "Please specify 'scheduler' or 'webserver'"
  exit 1
fi