FROM nginx:1.15.5-alpine@sha256:ae5da813f8ad7fa785d7668f0b018ecc8c3a87331527a61d83b3b5e816a0f03c

COPY public /usr/share/nginx/html
