FROM nginx:alpine
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY docs /usr/share/nginx/html

ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080
