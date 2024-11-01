#!/usr/bin/env bash
#
# Run for given day. Date format: 2017-10-01 00:00
if [[ -n "$CONDA_DEFAULT_ENV" && "$CONDA_DEFAULT_ENV" == "isnoda" ]]; then
  echo "Conda environment 'isnoda' is active."
else
  echo "Conda environment 'isnoda' is not active, exiting script"
  exit 1
fi
#source load_conda_env isnoda

# Initial run, no previous days
awsm_daily_airflow -c $1 \
  --start_date $2 \
  --no_previous
