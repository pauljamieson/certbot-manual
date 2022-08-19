#!/bin/bash

mkdir -p /certbot-manual/.well-known/acme-challenge
echo "$2" > /certbot-manual/.well-known/acme-challenge/"$1"
node /certbot-manual/app.js
