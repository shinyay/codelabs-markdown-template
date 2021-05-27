FROM nginx:alpine
ARG ID
COPY nginx/default.conf /etc/nginx/conf.d/configfile.template
COPY docs/$ID /usr/share/nginx/html
COPY tutorial/tutorial.tar.gz /usr/share/nginx/html

ENV PORT 8080
ENV HOST 0.0.0.0
EXPOSE 8080
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
