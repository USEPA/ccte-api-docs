FROM nginx:latest

COPY /public/docs/ /usr/share/nginx/html/
