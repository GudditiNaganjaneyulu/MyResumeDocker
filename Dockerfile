FROM nginx
MAINTAINER Gudditi
WORKDIR  /usr/share/nginx/html
COPY ./html/ .
#RUN service nginx status 
EXPOSE 80
#CMD service nginx start

