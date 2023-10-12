# use nginx to deploy
FROM nginx:1.20
RUN apt-get update && apt-get install -y nginx-extras vim
# copy the info of the builded web app to nginx
COPY ./serve-files/base_app /var/www/html
COPY ./nginx.conf /etc/nginx/conf.d/default.conf