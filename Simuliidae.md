# Simuliidae

## Purpose

The Simuliidae project uses this modified version of the Drupal docker project to generate base images that are further enhanced/extended in the build directory.

## Contents
 
This directory contains a lightly forked version of the official drupal docker project.

It's forked only in the Docker.template file, and in two ways:
1. It converts the build to a multistage so we can build a version without the drupal code, i.e. a "bare" container.
2. In includes additional packages and php extensions that are useful for CiviCRM (and sometimes Drupal) in production.

To see details of the changes, use:

git diff upstream/master -- Docker.template

## Notes

1. performance: added the php pecl redis extension, to support the use of redis, and apcu because Drupal likes it.
2. performance: add imagemagick, because it's great.
3. useful: add xml/soap
4. useful: include the mcrypt pecl extension to support old civi upgrades [??]
5. civicrm: include a bunch of civicrm-required-or-useful php core extensions: mysqli, dom, soap, sockets, intl, bcmath, gettext, imap 
6. automation: an ssh client and git, to support some automation [could be just in the admin containers?]

## Maintenance

When the docker-library upstream changes, the usual way to update the simuliidae branch is:
1. git restore [get rid of the update.sh-generated modifications]
2. git fetch upstream
3. git merge upstream/master simuliidae
4. update.sh
