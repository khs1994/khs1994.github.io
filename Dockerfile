FROM nginx:1.15.7-alpine@sha256:2e497c294e3ba84aaeab7a0fbb1027819cd1f5f5892ed3c4a82b8b05010090da

COPY public /usr/share/nginx/html
