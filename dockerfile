FROM node:8.16.0-alpine AS builder
COPY docker_pg/ /app
WORKDIR /app
RUN npm install
RUN npm run build

FROM httpd:2.4.39-alpine
RUN apk --no-cache add ca-certificates
WORKDIR /usr/local/apache2/htdocs/
COPY --from=builder /app/build/ .
EXPOSE 80 443