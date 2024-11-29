#!/bin/bash

BRANCH=$1
# cd /caminho/da/aplicacao
git fetch origin
git checkout $BRANCH
git pull origin $BRANCH
pm2 restart teste-pm2