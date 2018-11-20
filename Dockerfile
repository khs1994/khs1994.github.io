FROM nginx:1.15.6-alpine@sha256:94e890939a012d8494ac62a0cf6177c57f97522b35e231dad676e089e309d49d

COPY public /usr/share/nginx/html
