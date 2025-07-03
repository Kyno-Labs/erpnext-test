#!/bin/bash

SITE_NAME=${SITE_NAME:-erp.mysite.com}

if [ ! -d "/home/frappe/frappe-bench/sites/$SITE_NAME" ]; then
  echo "Creating new ERPNext site: $SITE_NAME"
  bench new-site $SITE_NAME \
    --admin-password $ADMIN_PASSWORD \
    --mariadb-root-password $DB_PASSWORD \
    --no-mariadb-socket \
    --install-app erpnext
else
  echo "Site $SITE_NAME already exists"
fi

bench start
