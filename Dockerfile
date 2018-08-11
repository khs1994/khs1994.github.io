FROM nginx:1.15.2-alpine@sha256:23e4dacbc60479fa7f23b3b8e18aad41bd8445706d0538b25ba1d575a6e2410b

COPY public /usr/share/nginx/html
