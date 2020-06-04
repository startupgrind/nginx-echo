#!/bin/sh
NON_SECRET=$(gcloud secrets versions access 1 --secret="MARIO_MANUAL_SECRET")
export MESSAGE=${NON_SECRET}
echo "${MESSAGE}"
envsubst < /nginx.conf.template > /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'
