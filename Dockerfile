FROM nginx:1.13.12-alpine@sha256:91d22184f3f9b1be658c2cc2c12d324de7ff12c8b9c9a597905457b4d93b069d

COPY public /usr/share/nginx/html
