FROM nginx:1.15.2-alpine@sha256:682150b512ebf6e7c1cd89b0b43aad75a647361d9f2e5301a2ff7a1702538e40

COPY public /usr/share/nginx/html
