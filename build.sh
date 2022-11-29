#!/usr/bin/env bash
# exit on error
set -o errexit

#poetry install
pip install -r requirements.txt

python ./django-crud-auth/manage.py collectstatic --no-input
python manage.py migrate


#psycopg2 changes