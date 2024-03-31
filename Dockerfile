FROM nginx:alpine

LABEL maintainer="Pantomath SAS <hello@pantomath.io>"

COPY nginx.vh.default.status.conf /etc/nginx/conf.d/default.conf
