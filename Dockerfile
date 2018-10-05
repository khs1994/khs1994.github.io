FROM nginx:1.15.3-alpine@sha256:829a63ad2b1389e393e5decf5df25860347d09643c335d1dc3d91d25326d3067

COPY public /usr/share/nginx/html
