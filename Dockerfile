FROM nginx:1.15.3-alpine@sha256:2c4269d573d9fc6e9e95d5e8f3de2dd0b07c19912551f25e848415b5dd783acf

COPY public /usr/share/nginx/html
