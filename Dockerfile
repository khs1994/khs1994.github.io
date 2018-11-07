FROM nginx:1.15.6-alpine@sha256:41dbd69d560c20712f90011689596f20a5db6d7f85436edda7f177a2e53d4da2

COPY public /usr/share/nginx/html
