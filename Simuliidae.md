# Simuliidae

## Purpose

The Simuliidae project uses this modified version of the Drupal docker project to generate base images that are further enhanced/extended in the build directory.

## Contents
 
This directory contains a lightly forked version of the official drupal docker project.

It's forked only in the Docker.template file, and in two ways:
1. It converts the build to a multistage so we can build a version without the drupal code, i.e. a "bare" container.
2. In includes additional packages and php extensions that are useful for CiviCRM (and sometimes Drupal).

To see details of the changes, use:

git diff upstream/master origin/docker-library

## Maintenance

When the docker-library upstream changes, the usual way to update the simuliidae branch is:
1. git restore
2. git fetch upstream
3. git merge upstream/master simuliidae
4. update.sh
