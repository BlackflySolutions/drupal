# 0. slug value
REPOSITORY_FROM='';
docker build 6/apache -t drupal:6-apache-civicrm-5
docker build 7/apache -t drupal:7-apache-civicrm-5
docker build 7/apache-php56 -t drupal:7-apache-php56-civicrm-5
docker build 8.9/apache-buster -t drupal:8-apache-civicrm-5
