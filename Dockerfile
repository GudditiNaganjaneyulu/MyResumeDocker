FROM nginx:1-bullseye
MAINTAINER Gudditi
WORKDIR  /usr/share/nginx/html
COPY ./index/ .
#RUN service nginx status 
EXPOSE 80
#CMD service nginx start

