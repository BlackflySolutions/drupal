# 0. slug value
REPOSITORY_FROM='';
docker build --no-cache 6/apache -t drupal:6-apache-civicrm-5
docker build --no-cache 7/apache -t drupal:7-apache-civicrm-5
docker build --no-cache 8.9/apache-buster -t drupal:8-apache-civicrm-5
