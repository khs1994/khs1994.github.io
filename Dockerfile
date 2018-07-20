FROM nginx:1.13.12-alpine@sha256:e4f0474a75c510f40b37b6b7dc2516241ffa8bde5a442bde3d372c9519c84d90

COPY public /usr/share/nginx/html
